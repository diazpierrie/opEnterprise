using DAL;
using EE;
using Security;
using System.Collections.Generic;

namespace BLL
{
    public static class PedidoProveedorBll
    {
        private static readonly PedidoProveedorDal Dal = new PedidoProveedorDal();

        public static int Crear(PedidoProveedorEe pedido, List<ProductoEdificioEe> productos)
        {
            pedido.Id = Dal.Crear(pedido);
            Dal.CrearDetalle(pedido, productos);

            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Pedido creado: ", pedido);

            return pedido.Id;
        }

        public static PedidoProveedorEe Obtener(int id)
        {
            return Dal.Obtener(id);
        }

        public static List<PedidoProveedorEe> Obtener()
        {
            return Dal.Obtener();
        }

        public static List<PedidoProveedorDetalleEe> ObtenerDetalle(int id)
        {
            return Dal.ObtenerDetalle(id);
        }

        public static List<PedidoProveedorEe> ObtenerPedidosDeUsuario(UsuarioEe user)
        {
            return Dal.Obtener(user);
        }

        public static List<PedidoProveedorEe> Obtener(SucursalEe sucursal)
        {
            return Dal.Obtener(sucursal);
        }

        public static List<PedidoProveedorEe> ObtenerPedidosDeCliente(CompradorEe comprador)
        {
            return Dal.Obtener(comprador);
        }
    }
}