using BLL;
using EE;
using System;
using System.Linq;
using static EE.Sesion;

namespace UI
{
    public partial class DepositoCompletarPedido : UpdatableForm
    {
        public readonly DepositoPedidoHome DepositoPedidoHome;
        private ProveedorEe _proveedor;
        private double _total;
        public DepositoCompletarPedido(DepositoPedidoHome depositoPedidoHome )
        {
            DepositoPedidoHome = depositoPedidoHome;
            _total = depositoPedidoHome.Total;
            InitializeComponent();
            txtCliente.Enabled = false;
        }

        public void AsignarProveedor(ProveedorEe proveedor)
        {
            _proveedor = proveedor;
            txtCliente.Text = _proveedor.ToString();
        }

        private void btnBuscarProveedor_Click(object sender, EventArgs e)
        {
            var proveedorBuscar = new ProveedorBuscar(this);
            proveedorBuscar.Show();
        }

        private void btnCompletarPedido_Click(object sender, EventArgs e)
        {
            var pedidoNuevo = new PedidoProveedorEe
            {
                Empleado = ObtenerSesion().Usuario,
                Proveedor = _proveedor,
                Deposito = ObtenerSesion().Deposito,
                Estado = new PedidoEstadoEe() { Id = 1 },
                FechaPedido = DateTime.Now,
                Total = _total
            };

            PedidoProveedorBll.Crear(pedidoNuevo, DepositoPedidoHome.ProductosAAsignar.ToList());

            DepositoPedidoHome.Close();
            Close();
        }
    }
}