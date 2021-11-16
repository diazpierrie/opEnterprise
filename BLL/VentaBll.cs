using System.Collections.Generic;
using DAL;
using EE;
using Security;

namespace BLL
{
    public static class VentaBll
    {
        private static readonly VentaDal Dal = new VentaDal();

        public static int Crear(VentaEe venta, List<ProductoEe> productos)
        {
            venta.Id = Dal.Crear(venta);
            Dal.CrearDetalle(venta, productos);

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
            return Dal.ObtenerDetalle(id);
        }

        public static List<VentaEe> ObtenerVentasDeUsuario(UsuarioEe user)
        {
            return Dal.Obtener(user);
        }

        public static List<VentaEe> Obtener(SucursalEe sucursal)
        {
            return Dal.Obtener(sucursal);
        }

        public static List<VentaEe> ObtenerVentasDeCliente(CompradorEe comprador)
        {
            return Dal.Obtener(comprador);
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
    }
}
