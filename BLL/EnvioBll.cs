using DAL;
using EE;
using Security;
using System.Collections.Generic;

namespace BLL
{
    public static class EnvioBll
    {
        private static readonly EnvioDal Dal = new EnvioDal();

        public static int CrearDeSucursal(EnvioSucursalEe envio)
        {
            envio.Id = Dal.CrearDeSucursal(envio);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Envio de Sucursal creado: ", envio);

            return envio.Id;
        }

        public static int CrearDeDeposito(EnvioDepositoEe envio)
        {
            envio.Id = Dal.CrearDeDeposito(envio);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Envio de Deposito creado: ", envio);

            return envio.Id;
        }

        public static int CrearDetalleDeSucursal(EnvioSucursalDetalleEe envio)
        {
            envio.Id = Dal.CrearDetalleDeSucursal(envio);
            Dv.ActualizarDv();

            return envio.Id;
        }

        public static int CrearDetalleDeDeposito(EnvioDepositoDetalleEe envio)
        {
            envio.Id = Dal.CrearDetalleDeDeposito(envio);
            Dv.ActualizarDv();

            return envio.Id;
        }

        public static List<EnvioSucursalDetalleEe> ObtenerDetalleDeSucursal(EnvioSucursalEe pEnvio)
        {
            var envios = Dal.ObtenerDetalleDeSucursal(pEnvio.Id);

            foreach (var envio in envios)
            {
                envio.Sucursal = SucursalBll.Obtener(envio.Sucursal.Id);
                envio.VentaDetalle = VentaBll.ObtenerDetalle(envio.VentaDetalle);
            }

            return envios;
        }

        public static List<EnvioDepositoDetalleEe> ObtenerDetalleDeDeposito(int id)
        {
            var envios = Dal.ObtenerDetalleDeDeposito(id);

            foreach (var envio in envios)
            {
                envio.Deposito = DepositoBll.Obtener(envio.Deposito.Id);
                envio.VentaDetalle = VentaBll.ObtenerDetalle(envio.VentaDetalle);
            }

            return envios;
        }

        public static List<EnvioDepositoEe> ObtenerDeDeposito()
        {
            return Dal.ObtenerDeDeposito();
        }

        public static List<EnvioSucursalEe> ObtenerDeSucursal(int id)
        {
            var envios = Dal.ObtenerDeSucursal(id);

            foreach (var envio in envios)
            {
                envio.Sucursal = SucursalBll.Obtener(envio.Sucursal.Id);
                envio.Venta = VentaBll.Obtener(envio.Venta.Id);
                envio.Direccion = DireccionBll.Obtener(envio.Direccion.Id);
                envio.Estado = ObtenerEstado(envio.Estado.Id);
            }

            return envios;
        }

        public static List<EnvioDepositoEe> ObtenerDeDeposito(int id)
        {
            var envios = Dal.ObtenerDeDeposito(id);

            foreach (var envio in envios)
            {
                envio.Deposito = DepositoBll.Obtener(envio.Deposito.Id);
                envio.Venta = VentaBll.Obtener(envio.Venta.Id);
                envio.Direccion = DireccionBll.Obtener(envio.Direccion.Id);
                envio.Estado = ObtenerEstado(envio.Estado.Id);
            }

            return envios;
        }

        public static List<TipoEntregaEe> ObtenerTiposEntrega()
        {
            return Dal.ObtenerTiposEntrega();
        }

        public static List<EstadoEe> ObtenerEstados()
        {
            return Dal.ObtenerEstados();
        }

        public static EstadoEe ObtenerEstado(int id)
        {
            return Dal.ObtenerEstado(id);
        }
    }
}