using BLL;
using EE;
using MetroFramework;
using System;
using System.Windows.Forms;

namespace UI
{
    public partial class ProveedorPenalizar : UpdatableForm
    {
        private readonly ProveedorEe _proveedor;
        private readonly ProveedorHome _proveedorHome;

        public ProveedorPenalizar(ProveedorHome proveedorHome, ProveedorEe proveedor)
        {
            _proveedor = proveedor;
            _proveedorHome = proveedorHome;
            InitializeComponent();
            var motivos = ProveedorBll.ObtenerMotivosPenalizacion();
            cbMotivos.DataSource = motivos;
        }

        private void ActualizarEstadoVentas()
        {
            _proveedorHome.ActualizarGrid();
        }

        private void btnAsignarQueja_Click(object sender, EventArgs e)
        {
            var response = MetroMessageBox.Show(this, $"¿Está seguro que desea penalizar a {_proveedor.Nombre}? \n Motivo: {cbMotivos.Text}",
                "Confirmacion de penalizacion", MessageBoxButtons.YesNo, MessageBoxIcon.Information);
            if (response != DialogResult.Yes) return;

            if (ProveedorBll.Penalizar(_proveedor, cbMotivos.SelectedIndex) != 0)
            {
                MetroMessageBox.Show(this, "Proveedor penalizado con exito", "Exito", MessageBoxButtons.OK,
                    MessageBoxIcon.Question);

                ActualizarEstadoVentas();
                Close();
            }
        }
    }
}