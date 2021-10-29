using System;
using System.Windows.Forms;

namespace UI
{
    public partial class Home : MetroFramework.Forms.MetroForm
    {
        public Home()
        {
            InitializeComponent();
        }

        private void btnProveedor_Click(object sender, EventArgs e)
        {
            var proveedorHome = new ProveedorHome();
            proveedorHome.Show();
        }

        private void btnEmpleado_Click(object sender, EventArgs e)
        {
            var empleadoHome = new EmpleadoHome();
            empleadoHome.Show();
        }

        private void btnRealizarVenta_Click(object sender, EventArgs e)
        {
            var ventaHome = new EmpleadoHome();
            ventaHome.Show();
        }
    }
}
