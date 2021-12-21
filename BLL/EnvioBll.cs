using DAL;
using EE;
using Security;
using System.Collections.Generic;

namespace BLL
{
    public static class EnvioBll
    {
        private static readonly EnvioDal Dal = new EnvioDal();

        public static void ConfirmarDespachoSucursal(EnvioEe envio)
        {
            Dal.ConfirmarDespachoSucursal(envio);
            Dv.ActualizarDv();
        }

        public static void ConfirmarRecepcionEnvio(EnvioEe envio)
        {
            Dal.ConfirmarRecepcionEnvio(envio);
            Dv.ActualizarDv();
        }

        public static int CrearDeDeposito(EnvioEe envio)
        {
            envio.Id = Dal.CrearDeDeposito(envio);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Envio de Deposito creado: ", envio);

            return envio.Id;
        }

        public static int CrearDeSucursal(EnvioEe envio)
        {
            envio.Id = Dal.CrearDeSucursal(envio);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Envio de Sucursal creado: ", envio);

            return envio.Id;
        }
        public static int CrearDetalleDeDeposito(EnvioDetalleEe envio)
        {
            envio.Id = Dal.CrearDetalleDeDeposito(envio);
            Dv.ActualizarDv();

            return envio.Id;
        }

        public static int CrearDetalleDeSucursal(EnvioDetalleEe envio)
        {
            envio.Id = Dal.CrearDetalleDeSucursal(envio);
            Dv.ActualizarDv();

            return envio.Id;
        }
        public static List<EnvioEe> ObtenerDeDeposito()
        {
            return Dal.ObtenerDeDeposito();
        }

        public static List<EnvioEe> ObtenerDeDeposito(int id)
        {
            var envios = Dal.ObtenerDeDeposito(id);

            foreach (var envio in envios)
            {
                envio.Edificio = DepositoBll.Obtener(envio.Edificio.Id);
                envio.Venta = VentaBll.Obtener(envio.Venta.Id);
                envio.Direccion = DireccionBll.Obtener(envio.Direccion.Id);
                envio.Estado = ObtenerEstado(envio.Estado.Id);
            }

            return envios;
        }

        public static List<EnvioEe> ObtenerDeSucursal(int id)
        {
            var envios = Dal.ObtenerDeSucursal(id);

            foreach (var envio in envios)
            {
                envio.Edificio = SucursalBll.Obtener(envio.Edificio.Id);
                envio.Venta = VentaBll.Obtener(envio.Venta.Id);
                envio.Direccion = DireccionBll.Obtener(envio.Direccion.Id);
                envio.Estado = ObtenerEstado(envio.Estado.Id);
            }

            return envios;
        }

        public static List<EnvioDetalleEe> ObtenerDetalleDeDeposito(int id)
        {
            var envios = Dal.ObtenerDetalleDeDeposito(id);

            foreach (var envio in envios)
            {
                envio.Edificio = DepositoBll.Obtener(envio.Edificio.Id);
                envio.VentaDetalle = VentaBll.ObtenerDetalle(envio.VentaDetalle);
            }

            return envios;
        }

        public static List<EnvioDetalleEe> ObtenerDetalleDeSucursal(EnvioEe pEnvio)
        {
            var envios = Dal.ObtenerDetalleDeSucursal(pEnvio.Id);

            foreach (var envio in envios)
            {
                envio.Edificio = SucursalBll.Obtener(envio.Edificio.Id);
                envio.VentaDetalle = VentaBll.ObtenerDetalle(envio.VentaDetalle);
            }

            return envios;
        }
        public static EstadoEe ObtenerEstado(int id)
        {
            return Dal.ObtenerEstado(id);
        }

        public static List<EstadoEe> ObtenerEstados()
        {
            return Dal.ObtenerEstados();
        }

        public static List<TipoEntregaEe> ObtenerTiposEntrega()
        {
            return Dal.ObtenerTiposEntrega();
        }
    }
}