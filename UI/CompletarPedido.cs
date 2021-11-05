using System;
using System.Linq;
using BLL;
using EE;

namespace UI
{
    public partial class CompletarPedido : UpdatableForm
    {
        private readonly DepositoCrearReposicion _depositoHome;
        private ProveedorEe _Proveedor;
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

        public void AsignarProveedor(ProveedorEe Proveedor)
        {
            _Proveedor = Proveedor;
            txtProveedor.Text = _Proveedor.ToString();
        }

        private void btnRealizarVenta_Click(object sender, EventArgs e)
        {
            PedidoProveedorBll.Crear(new PedidoProveedorEe()
            {
                Proveedor = _Proveedor,
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
