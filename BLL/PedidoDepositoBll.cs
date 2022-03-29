using DAL;
using EE;
using Security;
using System.Collections.Generic;
using System.Linq;

namespace BLL
{
    public static class PedidoDepositoBll
    {
        private static readonly PedidoDepositoDal Dal = new PedidoDepositoDal();
        private static readonly DepositoDal DepositoDal = new DepositoDal();
        private static readonly ProductoDal ProductoDal = new ProductoDal();
        private static readonly UsuarioDal UsuarioDal = new UsuarioDal();
        private static readonly SucursalDal SucursalDal = new SucursalDal();
        private static readonly PedidoEstadoDal PedidoEstadoDal = new PedidoEstadoDal();

        public static void ConfirmarRecepcionPedido(PedidoDepositoEe pedido)
        {
            Dal.ConfirmarRecepcionPedido(pedido);

            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Pedido creado: ", pedido);
        }

        public static int Crear(PedidoDepositoEe pedido, List<ProductoEdificioEe> productos)
        {
            pedido.Id = Dal.Crear(pedido);
            Dal.CrearDetalle(pedido, productos);

            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Pedido creado: ", pedido);

            return pedido.Id;
        }

        public static List<PedidoDepositoDetalleEe> ObtenerDetalle(PedidoDepositoEe pedidoDeposito)
        {
            var pedidos = Dal.ObtenerDetalle(pedidoDeposito.Id);

            foreach (var pedido in pedidos)
            {
                pedido.Pedido = Dal.Obtener(pedido.Pedido.Id);
                pedido.Deposito = DepositoDal.Obtener(pedido.Deposito.Id);
                pedido.Producto = ProductoDal.Obtener(pedido.Producto.Id);
            }

            return pedidos;
        }

        public static List<PedidoDepositoEe> ObtenerIniciados()
        {
            var pedidos = Dal.ObtenerIniciados();

            foreach (var pedido in pedidos)
            {
                pedido.Empleado = UsuarioDal.Obtener(pedido.Empleado.Id);
                pedido.Sucursal = SucursalDal.Obtener(pedido.Sucursal.Id);
                pedido.Estado = PedidoEstadoDal.Obtener(pedido.Estado.Id);
            }

            return pedidos;
        }

        public static void RegistrarEntrada(PedidoDepositoEe pedido, List<PedidoDepositoDetalleEe> productos)
        {
            ConfirmarRecepcionPedido(pedido);

            foreach (var producto in productos)
            {
                if (Dal.ObtenerPorSucursal(Sesion.ObtenerSesion().Sucursal).Any(x => x.Id == producto.Producto.Id))
                {
                    Dal.ActualizarStockSucursal(Sesion.ObtenerSesion().Sucursal, producto.Producto);
                }
                else
                {
                    Dal.AgregarProductoSucursal(Sesion.ObtenerSesion().Sucursal, producto.Producto);
                }
            }
        }
    }
}