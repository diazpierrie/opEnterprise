using BLL;
using EE;
using System;
using System.Windows.Forms;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public abstract partial class DireccionHome : UpdatableForm
    {
        public readonly CompradorEe Comprador;

        protected DireccionHome(CompradorEe comprador)
        {
            Comprador = comprador;
            InitializeComponent();
        }

        private void BtnCrearDireccion_Click(object sender, EventArgs e)
        {
            var direccionAltaModificacion = new DireccionAltaModificacion(this);

            direccionAltaModificacion.Show();
        }

        private void BtnModificarDireccion_Click(object sender, EventArgs e)
        {
            if (gridDireccion.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedItem = int.Parse(gridDireccion.SelectedRows[0].Cells["id"].Value.ToString());
            var selectedProveedor = DireccionBll.Obtener(selectedItem);
            var direccionAltaModificacion = new DireccionAltaModificacion(this, selectedProveedor);
            direccionAltaModificacion.Show();
        }

        private void DireccionHome_Load(object sender, EventArgs e)
        {
            ActualizarGrid();
        }

        public void ActualizarGrid()
        {
            gridDireccion.DataSource = ProveedorBll.Obtener();

            gridDireccion.Columns["id"].Visible = false;
            gridDireccion.Columns["activo"].Visible = false;

            gridDireccion.Columns["nombre"].DisplayIndex = 0;
            gridDireccion.Columns["direccion"].DisplayIndex = 1;
            gridDireccion.Columns["codigoPostal"].DisplayIndex = 2;
            gridDireccion.Columns["mail"].DisplayIndex = 3;
            gridDireccion.Columns["telefono"].DisplayIndex = 4;
            gridDireccion.Columns["CantidadErrores"].DisplayIndex = 5;
        }

        private void GridDireccion_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (gridDireccion.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedItem = int.Parse(gridDireccion.SelectedRows[0].Cells["id"].Value.ToString());
            var direccion = DireccionBll.Obtener(selectedItem);
            var direccionAltaModificacion = new DireccionAltaModificacion(this, direccion);
            direccionAltaModificacion.Show();
        }

        private void BtnBorrarDireccion_Click(object sender, EventArgs e)
        {
            if (gridDireccion.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedItem = int.Parse(gridDireccion.SelectedRows[0].Cells["id"].Value.ToString());
            var direccion = DireccionBll.Obtener(selectedItem);
            var direccionBaja = new DireccionBaja(this, direccion);
            direccionBaja.Show();
        }

        private void BtnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}