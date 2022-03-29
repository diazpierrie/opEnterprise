using BLL;
using EE;
using MetroFramework;
using Security;
using System;
using System.Windows.Forms;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class ProductoHome : UpdatableForm
    {
        private readonly Mdi _mdi;

        public ProductoHome(Mdi mdi)
        {
            _mdi = mdi;
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);
        }

        public override sealed string Text
        {
            get => base.Text;
            set => base.Text = value;
        }

        public void ActualizarGrid()
        {
            gridProducto.DataSource = ProductoBll.ObtenerActivos();

            gridProducto.Columns["id"].Visible = false;
            gridProducto.Columns["fechaCreacion"].Visible = false;
            gridProducto.Columns["cantidad"].Visible = false;
            gridProducto.Columns["totalproducto"].Visible = false;
            gridProducto.Columns["activo"].Visible = false;
            gridProducto.Columns["nombre"].DisplayIndex = 0;
            gridProducto.Columns["codigo"].DisplayIndex = 1;
            gridProducto.Columns["fechaCreacion"].DisplayIndex = 2;
            gridProducto.Columns["precio"].DisplayIndex = 3;
            gridProducto.Columns["costo"].DisplayIndex = 4;

            gridProducto.Columns["nombre"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["name"];
            gridProducto.Columns["codigo"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["code"];
            gridProducto.Columns["precio"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["price"];
            gridProducto.Columns["costo"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["cost"];
        }

        private void BtnBorrarProducto_Click(object sender, EventArgs e)
        {
            if (gridProducto.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedProducto = (ProductoEe)gridProducto.SelectedRows[0].DataBoundItem;
            var response = MetroMessageBox.Show(_mdi, Sesion.ObtenerSesion().Idioma.Textos["question_delete"] + " " + Sesion.ObtenerSesion().Idioma.Textos["product"].ToLower() + " " + selectedProducto.Nombre + "?", Sesion.ObtenerSesion().Idioma.Textos["confirm_delete"], MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
            if (response != DialogResult.Yes) return;

            ProductoBll.Eliminar(selectedProducto);
            ActualizarGrid();
        }

        private void BtnCrearProducto_Click(object sender, EventArgs e)
        {
            var crearProducto = new ProductoAltaModificacion(this);
            _mdi.OpenWindowForm(crearProducto);
        }

        private void BtnModificarProducto_Click(object sender, EventArgs e)
        {
            if (gridProducto.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedItem = int.Parse(gridProducto.SelectedRows[0].Cells["id"].Value.ToString());
            var selectedProducto = ProductoBll.Obtener(selectedItem);
            var provAm = new ProductoAltaModificacion(this, selectedProducto);
            _mdi.OpenWindowForm(provAm);
        }

        private void GridProducto_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (gridProducto.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedItem = int.Parse(gridProducto.SelectedRows[0].Cells["id"].Value.ToString());
            var selectedProducto = ProductoBll.Obtener(selectedItem);
            var provAm = new ProductoAltaModificacion(this, selectedProducto);
            _mdi.OpenWindowForm(provAm);
        }

        private void ProductoHome_Load(object sender, EventArgs e)
        {
            AllControls = Program.GetAllControls(this);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

            ActualizarGrid();
        }
    }
}