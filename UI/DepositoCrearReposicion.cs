using System;
using System.ComponentModel;
using System.Linq;
using System.Windows.Forms;
using EE;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class DepositoCrearReposicion : UpdatableForm
    {
        public BindingList<ProductoEe> Productos = new BindingList<ProductoEe>();
        public double Total;
        public DepositoCrearReposicion()
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

            if (gridPedido.SelectedRows.Count == 0)
            {
            }
        }

        public void ActualizarGrid()
        {
            gridPedido.DataSource = Productos;
            gridPedido.Columns["id"].Visible = false;
            gridPedido.Columns["fechaCreacion"].Visible = false;
            gridPedido.Columns["activo"].Visible = false;
            gridPedido.Columns["Costo"].Visible = false;

            gridPedido.Columns["nombre"].DisplayIndex = 0;
            gridPedido.Columns["codigo"].DisplayIndex = 1;
            gridPedido.Columns["precio"].DisplayIndex = 2;
            gridPedido.Columns["cantidad"].DisplayIndex = 3;

            gridPedido.Columns["nombre"].ReadOnly = true;
            gridPedido.Columns["codigo"].ReadOnly = true;
            gridPedido.Columns["precio"].ReadOnly = true;

            Total = Productos.Sum(producto => producto.Cantidad * producto.Precio);
            lblTotal.Text = $@"Total: ${Total}";

            gridPedido.Refresh();
        }

        private void gridVenta_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (gridPedido.SelectedRows.Count == 0)
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
            Productos.RemoveAt(gridPedido.SelectedRows[0].Index);
            ActualizarGrid();
        }

        private void btnCompletarVenta_Click(object sender, EventArgs e)
        {
            var completarVenta = new CompletarPedido(this);
            completarVenta.Show();
        }
    }

}
