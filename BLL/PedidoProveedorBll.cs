using DAL;
using EE;
using Security;
using System.Collections.Generic;
using System.Linq;

namespace BLL
{
    public static class PedidoProveedorBll
    {
        private static readonly PedidoProveedorDal Dal = new PedidoProveedorDal();

        public static void ConfirmarRecepcionPedido(PedidoProveedorEe pedido)
        {
            Dal.ConfirmarRecepcionPedido(pedido);

            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Pedido creado: ", pedido);
        }

        public static int Crear(PedidoProveedorEe pedido, List<ProductoEe> productos)
        {
            pedido.Id = Dal.Crear(pedido);
            Dal.CrearDetalle(pedido, productos);

            foreach (var producto in productos)
            {
                Dal.ReducirStockDeposito(Sesion.ObtenerSesion().Deposito, producto);
            }

            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Pedido creado: ", pedido);

            return pedido.Id;
        }

        public static List<PedidoProveedorDetalleEe> ObtenerDetalle(PedidoProveedorEe proveedor)
        {
            return Dal.ObtenerDetalle(proveedor.Id);
        }

        public static List<PedidoProveedorEe> ObtenerIniciados()
        {
            return Dal.ObtenerIniciados();
        }

        public static void RegistrarEntrada(PedidoProveedorEe pedido, List<PedidoProveedorDetalleEe> productos)
        {
            ConfirmarRecepcionPedido(pedido);

            foreach (var producto in productos)
            {
                if (Dal.ObtenerPorDeposito(Sesion.ObtenerSesion().Deposito).FirstOrDefault(x => x.Id == producto.Producto.Id) != null)
                {
                    Dal.AumentarStockDeposito(Sesion.ObtenerSesion().Deposito, producto);
                }
                else
                {
                    Dal.AgregarProductoDeposito(Sesion.ObtenerSesion().Deposito, producto);
                }
            }
        }
    }
}