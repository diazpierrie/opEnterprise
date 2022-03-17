using BLL;
using EE;
using System;
using System.Linq;
using System.Windows.Forms;
using MetroFramework;
using static EE.Sesion;

namespace UI
{
    public partial class DepositoCompletarPedido : UpdatableForm
    {
        public readonly DepositoPedidoHome DepositoPedidoHome;
        private ProveedorEe _proveedor;
        private readonly double _total;
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
            DepositoPedidoHome.Mdi.OpenWindowForm(proveedorBuscar);
        }

        private void btnCompletarPedido_Click(object sender, EventArgs e)
        {
            var respuesta = MetroMessageBox.Show(DepositoPedidoHome.Mdi, $"¿Está seguro que desea realizar el pedido al proveedor {_proveedor.Nombre}?",
                "Confirmacion de pedido", MessageBoxButtons.YesNo, MessageBoxIcon.Information);

            if (respuesta != DialogResult.Yes) return;

            var pedidoNuevo = new PedidoProveedorEe
            {
                Empleado = ObtenerSesion().Usuario,
                Proveedor = _proveedor,
                Deposito = ObtenerSesion().Deposito,
                Estado = new PedidoEstadoEe() { Id = 1 },
                FechaPedido = DateTime.Now,
                Total = _total
            };

            if (PedidoProveedorBll.Crear(pedidoNuevo, DepositoPedidoHome.ProductosAAsignar.ToList()) == 0) return;

            MetroMessageBox.Show(DepositoPedidoHome.Mdi, "Pedido realizado con exito", "Exito", MessageBoxButtons.OK,
                MessageBoxIcon.Question);
            DepositoPedidoHome.Close();
            Close();
        }
    }
}