using DAL;
using EE;
using Security;
using System;
using System.Collections.Generic;
using System.Linq;

namespace BLL
{
    public static class VentaBll
    {
        private static readonly VentaDal Dal = new VentaDal();

        public static int Crear(VentaEe venta, DireccionEe cbDireccionesSelectedItem, List<ProductoEdificioEe> productos)
        {
            venta.Id = Dal.Crear(venta);

            var edificios = productos.Select(x => x.Edificio).Distinct().ToList();
            if (cbDireccionesSelectedItem != null)
            {
                edificios.Remove(Sesion.ObtenerSesion().Sucursal);
            }

            if (edificios.Count != 0 && cbDireccionesSelectedItem != null)
            {
                foreach (var edificio in edificios)
                {
                    switch (edificio.GetType().Name)
                    {
                        case "SucursalEe":
                            EnvioBll.CrearDeSucursal(new EnvioSucursalEe
                            {
                                Venta = venta,
                                Direccion = cbDireccionesSelectedItem,
                                Sucursal = (SucursalEe)edificio,
                                FechaSalida = DateTime.Now,
                                FechaLlegada = new DateTime(),
                                EstadoEnvio = 1
                            });
                            break;

                        case "DepositoEe":
                            EnvioBll.CrearDeDeposito(new EnvioDepositoEe
                            {
                                Venta = venta,
                                Direccion = cbDireccionesSelectedItem,
                                Deposito = (DepositoEe)edificio,
                                FechaSalida = DateTime.Now,
                                FechaLlegada = new DateTime(),
                                EstadoEnvio = 1
                            });
                            break;
                    }
                }
            }

            foreach (var producto in productos)
            {
                var ventaDetalleId = Dal.CrearDetalle(venta, producto);

                if (edificios.Count != 0 && cbDireccionesSelectedItem != null)
                {
                    switch (producto.Edificio.GetType().Name)
                    {
                        case "SucursalEe":
                            EnvioBll.CrearDetalleDeSucursal(new EnvioSucursalDetalleEe
                            {
                                VentaDetalle = new VentaDetalleEe()
                                {
                                    Id = ventaDetalleId
                                },
                                Sucursal = (SucursalEe)producto.Edificio,
                                Cantidad = producto.CantidadAComprar,
                            });
                            break;

                        case "DepositoEe":
                            EnvioBll.CrearDetalleDeDeposito(new EnvioDepositoDetalleEe()
                            {
                                VentaDetalle = new VentaDetalleEe()
                                {
                                    Id = ventaDetalleId
                                },
                                Deposito = (DepositoEe)producto.Edificio,
                                Cantidad = producto.CantidadAComprar,
                            });
                            break;
                    }
                }
            }

            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Venta creada: ", venta);

            return venta.Id;
        }

        public static VentaEe Obtener(int id)
        {
            return Dal.Obtener(id);
        }

        public static List<VentaEe> Obtener()
        {
            return Dal.Obtener();
        }

        public static List<VentaDetalleEe> ObtenerDetalle(int id)
        {
            var meme = Dal.ObtenerDetalle(id);

            foreach (var mem in meme)
            {
                mem.Venta = VentaBll.Obtener(mem.Id);
                mem.Producto = ProductoBll.Obtener(mem.Producto.Id);
                mem.TotalDetalle = mem.Cantidad * mem.Precio;
            }

            return meme;
        }

        public static List<VentaEe> ObtenerVentasDeUsuario(UsuarioEe user)
        {
            return Dal.Obtener(user);
        }

        public static List<VentaEe> Obtener(SucursalEe sucursal)
        {
            return Dal.Obtener(sucursal);
        }

        public static List<VentaEe> ObtenerPendienteDePago(SucursalEe sucursal)
        {
            return Dal.ObtenerPendienteDePago(sucursal);
        }

        public static List<VentaEe> ObtenerVentasDeCliente(CompradorEe comprador)
        {
            return Dal.Obtener(comprador);
        }

        public static bool ConfirmarPago(PagoEe pago)
        {
            Dal.RegistrarPago(pago);
            return Dal.CambiarEstadoAPagado(pago.Venta);
        }

        public static int RegistrarPerdida(VentaEe venta, double total, List<VentaDetalleEe> productos)
        {
            var perdida = new PerdidaEe { Id = Dal.RegistrarPerdida(venta), Total = total };
            Dal.RegistrarDetallesPerdida(perdida, productos);
            Dal.MarcarVentaComoPerdida(venta);

            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Perdida registrada: ", venta);

            return perdida.Id;
        }

        public static int RegistrarDevolucion(VentaEe venta, List<VentaDetalleEe> productos)
        {
            var devolucion = new DevolucionEe { Id = Dal.RegistrarDevolucion(venta) };
            Dal.RegistrarDetallesDevolucion(devolucion, productos);

            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Devolucion registrada: ", venta);

            return devolucion.Id;
        }

        public static bool Cancelar(VentaEe venta)
        {
            return Dal.Cancelar(venta);
        }
    }
}