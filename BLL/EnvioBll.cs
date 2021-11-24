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

        public static List<EnvioSucursalEe> ObtenerDeSucursal()
        {
            return Dal.ObtenerDeSucursal();
        }

        public static List<EnvioDepositoEe> ObtenerDeDeposito()
        {
            return Dal.ObtenerDeDeposito();
        }

        public static EnvioSucursalEe ObtenerDeSucursal(int id)
        {
            return Dal.ObtenerDeSucursal(id);
        }

        public static EnvioDepositoEe ObtenerDeDeposito(int id)
        {
            return Dal.ObtenerDeDeposito(id);
        }

        public static List<TipoEntregaEe> ObtenerTiposEntrega()
        {
            return Dal.ObtenerTiposEntrega();
        }
    }
}