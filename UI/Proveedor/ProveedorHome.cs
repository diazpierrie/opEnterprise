using BLL;
using System;
using System.Windows.Forms;
using EE;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class ProveedorHome : UpdatableForm
    {
        public ProveedorHome()
        {
            InitializeComponent();
        }

        public ProveedorHome(string button)
        {
            InitializeComponent();
            if (button != "Penalizar Proveedor") return;
            btnCrearProveedor.Visible = false;
            btnModificarProveedor.Visible = false;
            btnBorrarProveedor.Visible = false;
            btnRestaurarProveedor.Visible = false;
        }


        public void ActualizarGrid()
        {
            gridProveedor.DataSource = ProveedorBll.Obtener();

            gridProveedor.Columns["id"].Visible = false;
            gridProveedor.Columns["activo"].Visible = false;

            gridProveedor.Columns["nombre"].DisplayIndex = 0;
            gridProveedor.Columns["direccion"].DisplayIndex = 1;
            gridProveedor.Columns["codigoPostal"].DisplayIndex = 2;
            gridProveedor.Columns["mail"].DisplayIndex = 3;
            gridProveedor.Columns["telefono"].DisplayIndex = 4;
            gridProveedor.Columns["CantidadErrores"].DisplayIndex = 5;
        }

        private void btnBorrarProveedor_Click(object sender, EventArgs e)
        {
            if (gridProveedor.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedItem = int.Parse(gridProveedor.SelectedRows[0].Cells["id"].Value.ToString());
            var selectedProveedor = ProveedorBll.Obtener(selectedItem);
            var provBaja = new ProveedorBaja(this, selectedProveedor);
            provBaja.Show();
        }

        private void btnCrearProveedor_Click(object sender, EventArgs e)
        {
            var crearProveedor = new ProveedorAltaModificacion(this);
            crearProveedor.Show();
        }

        private void btnModificarProveedor_Click(object sender, EventArgs e)
        {
            if (gridProveedor.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedItem = int.Parse(gridProveedor.SelectedRows[0].Cells["id"].Value.ToString());
            var selectedProveedor = ProveedorBll.Obtener(selectedItem);
            var provAm = new ProveedorAltaModificacion(this, selectedProveedor);
            provAm.Show();
        }

        private void btnPenalizarProveedor_Click(object sender, EventArgs e)
        {
            if (gridProveedor.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedItem = int.Parse(gridProveedor.SelectedRows[0].Cells["id"].Value.ToString());
            var selectedProveedor = ProveedorBll.Obtener(selectedItem);
            var provAm = new ProveedorPenalizar(this, selectedProveedor);
            provAm.Show();
        }

        private void btnRestaurarProveedor_Click(object sender, EventArgs e)
        {
            var selectedItem = int.Parse(gridProveedor.SelectedRows[0].Cells["id"].Value.ToString());
            var selectedProveedor = ProveedorBll.Obtener(selectedItem);
            // ReSharper disable once ObjectCreationAsStatement
            new ProveedorRestaurar(this, selectedProveedor);
        }

        private void gridProveedor_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (gridProveedor.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedItem = int.Parse(gridProveedor.SelectedRows[0].Cells["id"].Value.ToString());
            var selectedProveedor = ProveedorBll.Obtener(selectedItem);
            var provAm = new ProveedorAltaModificacion(this, selectedProveedor);
            provAm.Show();
        }

        private void ProveedorHome_Load(object sender, EventArgs e)
        {
            ActualizarGrid();
        }

        private void btnVerPenalizaciones_Click(object sender, EventArgs e)
        {
            if (gridProveedor.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedProveedor = (ProveedorEe) gridProveedor.SelectedRows[0].DataBoundItem;
            var proveedorVerPenalizaciones = new ProveedorVerPenalizaciones(selectedProveedor);
            proveedorVerPenalizaciones.Show();
        }
    }
}