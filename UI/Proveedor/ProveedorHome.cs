using BLL;
using EE;
using MetroFramework;
using Security;
using System;
using System.Windows.Forms;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class ProveedorHome : UpdatableForm
    {
        public readonly Mdi Mdi;

        public ProveedorHome(Mdi mdi)
        {
            Mdi = mdi;
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);
        }

        public ProveedorHome(Mdi mdi, string button)
        {
            Mdi = mdi;
            InitializeComponent();
            if (button != Sesion.ObtenerSesion().Idioma.Textos["penalize_vendor"]) return;
            btnCrearProveedor.Visible = false;
            btnModificarProveedor.Visible = false;
            btnBorrarProveedor.Visible = false;
            btnRestaurarProveedor.Visible = false;
            Text = button;
        }

        public sealed override string Text
        {
            get => base.Text;
            set => base.Text = value;
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

            gridProveedor.Columns["nombre"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["name"];
            gridProveedor.Columns["direccion"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["address"];
            gridProveedor.Columns["codigoPostal"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["zipcode"];
            gridProveedor.Columns["mail"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["mail"];
            gridProveedor.Columns["telefono"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["telephone"];
            gridProveedor.Columns["CantidadErrores"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["amount_errors"];
        }

        private void btnBorrarProveedor_Click(object sender, EventArgs e)
        {
            if (gridProveedor.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedProveedor = (ProveedorEe)gridProveedor.SelectedRows[0].DataBoundItem;
            var response = MetroMessageBox.Show(Mdi, Sesion.ObtenerSesion().Idioma.Textos["question_delete"] + " " + Sesion.ObtenerSesion().Idioma.Textos["vendor"].ToLower() + " " + selectedProveedor.Nombre + "?", Sesion.ObtenerSesion().Idioma.Textos["confirm_delete"], MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
            if (response != DialogResult.Yes) return;

            ProveedorBll.Eliminar(selectedProveedor);
            ActualizarGrid();
        }

        private void btnCrearProveedor_Click(object sender, EventArgs e)
        {
            var crearProveedor = new ProveedorAltaModificacion(this);
            Mdi.OpenWindowForm(crearProveedor);
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
            Mdi.OpenWindowForm(provAm);
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
            Mdi.OpenWindowForm(provAm);
        }

        private void btnRestaurarProveedor_Click(object sender, EventArgs e)
        {
            var selectedItem = int.Parse(gridProveedor.SelectedRows[0].Cells["id"].Value.ToString());
            var selectedProveedor = ProveedorBll.Obtener(selectedItem);
            // ReSharper disable once ObjectCreationAsStatement
            var listaVersiones = VersionEntidadBll.Obtener("proveedor", selectedProveedor.Id);

            if (listaVersiones.Count == 0)
            {
                MetroMessageBox.Show(Mdi, Sesion.ObtenerSesion().Idioma.Textos["vendor_no_versions"],
                    Sesion.ObtenerSesion().Idioma.Textos["error"], MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            var proveedorRestaurar = new ProveedorRestaurar(this, selectedProveedor, listaVersiones);
            Mdi.OpenWindowForm(proveedorRestaurar);
        }

        private void btnVerPenalizaciones_Click(object sender, EventArgs e)
        {
            if (gridProveedor.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedProveedor = (ProveedorEe)gridProveedor.SelectedRows[0].DataBoundItem;
            var lista = ProveedorBll.ObtenerPenalizaciones(selectedProveedor);

            if (lista.Count == 0)
            {
                return;
            }

            var proveedorVerPenalizaciones = new ProveedorVerPenalizaciones(lista);
            Mdi.OpenWindowForm(proveedorVerPenalizaciones);
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
            Mdi.OpenWindowForm(provAm);
        }

        private void ProveedorHome_Load(object sender, EventArgs e)
        {
            AllControls = Program.GetAllControls(this);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

            ActualizarGrid();
        }
    }
}