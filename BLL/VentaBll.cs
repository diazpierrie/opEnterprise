using DAL;
using EE;
using Security;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace BLL
{
    public static class VentaBll
    {
        private static readonly VentaDal Dal = new VentaDal();

        public static bool Cancelar(VentaEe venta)
        {
            return Dal.Cancelar(venta);
        }

        public static bool ConfirmarPago(PagoEe pago)
        {
            Dal.RegistrarPago(pago);
            return Dal.CambiarEstadoAPagado(pago.Venta);
        }

        public static int Crear(VentaEe venta, DireccionEe cbDireccionesSelectedItem,
                            List<ProductoEdificioEe> productos, BindingList<ProductoEdificioEe> productosRetiroEnLocal)
        {
            venta.Id = Dal.Crear(venta);

            var edificios = productos.Select(x => x.Edificio).Distinct().ToList();
            if (cbDireccionesSelectedItem != null && productosRetiroEnLocal.Count != 0)
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
                                FechaSalida = new DateTime(),
                                FechaLlegada = new DateTime(),
                                Estado = EnvioBll.ObtenerEstado(1)
                            });
                            break;

                        case "DepositoEe":
                            EnvioBll.CrearDeDeposito(new EnvioDepositoEe
                            {
                                Venta = venta,
                                Direccion = cbDireccionesSelectedItem,
                                Deposito = (DepositoEe)edificio,
                                FechaSalida = new DateTime(),
                                FechaLlegada = new DateTime(),
                                Estado = EnvioBll.ObtenerEstado(1)
                            });
                            break;
                    }
                }
            }

            foreach (var producto in productos)
            {
                var ventaDetalleId = Dal.CrearDetalle(venta, producto);

                switch (producto.Edificio.GetType().Name)
                {
                    case "SucursalEe":
                        Dal.ActualizarStockSucursal(producto);
                        if (edificios.Count != 0 && cbDireccionesSelectedItem != null)
                        {
                            EnvioBll.CrearDetalleDeSucursal(new EnvioSucursalDetalleEe
                            {
                                VentaDetalle = new VentaDetalleEe()
                                {
                                    Id = ventaDetalleId
                                },
                                Sucursal = (SucursalEe)producto.Edificio
                            });
                        }
                        break;

                    case "DepositoEe":
                        Dal.ActualizarStockDeposito(producto);
                        if (edificios.Count != 0 && cbDireccionesSelectedItem != null)
                        {
                            EnvioBll.CrearDetalleDeDeposito(new EnvioDepositoDetalleEe()
                            {
                                VentaDetalle = new VentaDetalleEe()
                                {
                                    Id = ventaDetalleId
                                },
                                Deposito = (DepositoEe)producto.Edificio
                            });
                        }
                        break;
                }
            }

            if (productosRetiroEnLocal.Count != 0)
            {
                foreach (var productoLocal in productosRetiroEnLocal)
                {
                    Dal.CrearDetalle(venta, productoLocal);
                    Dal.ActualizarStockSucursal(productoLocal);
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

        public static List<VentaEe> Obtener(SucursalEe sucursal)
        {
            return Dal.Obtener(sucursal);
        }

        public static VentaDetalleEe ObtenerDetalle(VentaDetalleEe pDetalle)
        {
            var detalle = Dal.ObtenerDetalle(pDetalle.Id);

            detalle.Venta = Obtener(detalle.Id);
            detalle.Producto = ProductoBll.Obtener(detalle.Producto.Id);
            detalle.TotalDetalle = detalle.Cantidad * detalle.Precio;

            return detalle;
        }

        public static List<VentaDetalleEe> ObtenerDetalles(VentaEe venta)
        {
            var detalles = Dal.ObtenerDetalles(venta.Id);

            foreach (var detalle in detalles)
            {
                detalle.Venta = Obtener(detalle.Id);
                detalle.Producto = ProductoBll.Obtener(detalle.Producto.Id);
                detalle.TotalDetalle = detalle.Cantidad * detalle.Precio;
            }

            return detalles;
        }

        public static List<VentaEe> ObtenerPendienteDePago(SucursalEe sucursal)
        {
            return Dal.ObtenerPendienteDePago(sucursal);
        }

        public static List<VentaEe> ObtenerVentasDeCliente(CompradorEe comprador)
        {
            return Dal.Obtener(comprador);
        }

        public static List<VentaEe> ObtenerVentasDeUsuario(UsuarioEe user)
        {
            return Dal.Obtener(user);
        }

        public static int RegistrarDevolucion(VentaEe venta, List<VentaDetalleEe> productos)
        {
            var devolucion = new DevolucionEe { Id = Dal.RegistrarDevolucion(venta) };
            Dal.RegistrarDetallesDevolucion(devolucion, productos);

            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Devolucion registrada: ", venta);

            return devolucion.Id;
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
    }
}