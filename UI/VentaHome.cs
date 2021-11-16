using System;
using System.ComponentModel;
using System.Linq;
using System.Windows.Forms;
using EE;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class VentaHome : UpdatableForm
    {
        public readonly BindingList<ProductoEe> Productos = new BindingList<ProductoEe>();
        public double Total;
        public VentaHome()
        {
            InitializeComponent();
        }

        private void btnCrearVenta_Click(object sender, EventArgs e)
        {
            var agregarProducto = new ProductoAgregar(this);
            agregarProducto.Show();
        }

        private void VentaHome_Load(object sender, EventArgs e)
        {
            ActualizarGrid();

            if (gridVenta.SelectedRows.Count == 0)
            {
            }
        }

        public void ActualizarGrid()
        {
            gridVenta.DataSource = Productos;
            gridVenta.Columns["id"].Visible = false;
            gridVenta.Columns["fechaCreacion"].Visible = false;
            gridVenta.Columns["activo"].Visible = false;
            gridVenta.Columns["Costo"].Visible = false;

            gridVenta.Columns["nombre"].DisplayIndex = 0;
            gridVenta.Columns["codigo"].DisplayIndex = 1;
            gridVenta.Columns["precio"].DisplayIndex = 2;
            gridVenta.Columns["cantidad"].DisplayIndex = 3;

            gridVenta.Columns["nombre"].ReadOnly = true;
            gridVenta.Columns["codigo"].ReadOnly = true;
            gridVenta.Columns["precio"].ReadOnly = true;

            Total = Productos.Sum(producto => producto.Cantidad * producto.Precio);
            lblTotal.Text = $@"Total: ${Total}";

            gridVenta.Refresh();
        }

        private void gridVenta_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (gridVenta.SelectedRows.Count == 0)
            {
            }

            //var selectedItem = int.Parse(gridVenta.SelectedRows[0].Cells["id"].Value.ToString());
            //var selectedVenta = UsuarioBll.Obtener(selectedItem);
            //var provAm = new VentaAltaModificacion(this, selectedVenta);
            //provAm.Show();
        }


        private void gridVenta_CellValueChanged(object sender, DataGridViewCellEventArgs e)
        {
            ActualizarGrid();
        }

        private void btnModificarVenta_Click(object sender, EventArgs e)
        {
            Productos.RemoveAt(gridVenta.SelectedRows[0].Index);
            ActualizarGrid();
        }

        private void btnCompletarVenta_Click(object sender, EventArgs e)
        {
            var completarVenta = new CompletarVenta(this);
            completarVenta.Show();
        }
    }

}
