using BLL;
using EE;
using System;
using System.Linq;

namespace UI
{
    public partial class CompletarPedido : UpdatableForm
    {
        private readonly DepositoCrearReposicion _depositoHome;
        private ProveedorEe _proveedor;

        public CompletarPedido(DepositoCrearReposicion depositoHome)
        {
            _depositoHome = depositoHome;
            InitializeComponent();
            txtProveedor.Enabled = false;
        }

        private void btnBuscarProveedor_Click(object sender, EventArgs e)
        {
            var buscarProveedor = new ProveedorBuscar(this);
            buscarProveedor.Show();
        }

        public void AsignarProveedor(ProveedorEe proveedor)
        {
            _proveedor = proveedor;
            txtProveedor.Text = _proveedor.ToString();
        }

        private void btnRealizarVenta_Click(object sender, EventArgs e)
        {
            PedidoProveedorBll.Crear(new PedidoProveedorEe
            {
                Proveedor = _proveedor,
                Deposito = Sesion.ObtenerSesion().Deposito,
                Empleado = Sesion.ObtenerSesion().Usuario,
                Estado = PedidoEstadoBll.Obtener(1),
                Fecha = DateTime.Now,
                Total = _depositoHome.Total
            },
                _depositoHome.Productos.ToList());

            Close();
            _depositoHome.Close();
        }
    }
}