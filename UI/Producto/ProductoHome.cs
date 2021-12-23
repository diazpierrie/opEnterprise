using BLL;
using EE;
using System;
using System.Windows.Forms;
using MetroFramework;
using Security;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class ProductoHome : UpdatableForm
    {
        public ProductoHome()
        {
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);
        }
        
        public sealed override string Text
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

        private void btnBorrarProducto_Click(object sender, EventArgs e)
        {
            if (gridProducto.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedProducto = (ProductoEe) gridProducto.SelectedRows[0].DataBoundItem;
            var response = MetroMessageBox.Show(this, Sesion.ObtenerSesion().Idioma.Textos["question_delete"] + " " + Sesion.ObtenerSesion().Idioma.Textos["product"].ToLower() + " " + selectedProducto.Nombre + "?", Sesion.ObtenerSesion().Idioma.Textos["confirm_delete"], MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
            if (response != DialogResult.Yes) return;

            ProductoBll.Eliminar(selectedProducto);
            ActualizarGrid();


        }

        private void btnCrearProducto_Click(object sender, EventArgs e)
        {
            var crearProducto = new ProductoAltaModificacion(this);
            crearProducto.Show();
        }

        private void btnModificarProducto_Click(object sender, EventArgs e)
        {
            if (gridProducto.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedItem = int.Parse(gridProducto.SelectedRows[0].Cells["id"].Value.ToString());
            var selectedProducto = ProductoBll.Obtener(selectedItem);
            var provAm = new ProductoAltaModificacion(this, selectedProducto);
            provAm.Show();
        }
        
        private void gridProducto_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (gridProducto.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedItem = int.Parse(gridProducto.SelectedRows[0].Cells["id"].Value.ToString());
            var selectedProducto = ProductoBll.Obtener(selectedItem);
            var provAm = new ProductoAltaModificacion(this, selectedProducto);
            provAm.Show();
        }

        private void ProductoHome_Load(object sender, EventArgs e)
        {
            AllControls = Program.GetAllControls(this);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

            ActualizarGrid();
        }
    }
}