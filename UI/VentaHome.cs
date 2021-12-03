using System;
using System.ComponentModel;
using System.Globalization;
using System.Linq;
using System.Windows.Forms;
using BLL;
using EE;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class VentaHome : UpdatableForm
    {
        public readonly BindingList<ProductoEdificioEe> ProductosAAsignar = new BindingList<ProductoEdificioEe>();
        public BindingList<ProductoEdificioEe> ProductosDeposito;
        public BindingList<ProductoEdificioEe> ProductosSucursal;
        public double Total;
        public VentaHome()
        {
            InitializeComponent();
            TraerProductos();
        }

        public void ActualizarGrid()
        {
            gridVenta.DataSource = ProductosAAsignar;
            gridVenta.Columns["id"].Visible = false;
            gridVenta.Columns["fechaCreacion"].Visible = false;
            gridVenta.Columns["activo"].Visible = false;
            gridVenta.Columns["cantidad"].Visible = false;
            gridVenta.Columns["Costo"].Visible = false;

            gridVenta.Columns["nombre"].DisplayIndex = 0;
            gridVenta.Columns["Edificio"].DisplayIndex = 1;
            gridVenta.Columns["codigo"].DisplayIndex = 2;
            gridVenta.Columns["precio"].DisplayIndex = 3;
            gridVenta.Columns["CantidadAComprar"].DisplayIndex = 4;
            gridVenta.Columns["TotalProducto"].DisplayIndex = 5;

            Total = ProductosAAsignar.Sum(producto => producto.CantidadAComprar * producto.Precio);
            lblTotal.Text = $@"Total: ${Total}";

            gridVenta.Refresh();

            var format = (NumberFormatInfo)NumberFormatInfo.CurrentInfo.Clone();
            format.CurrencySymbol = "$";
            gridVenta.Columns["TotalProducto"].DefaultCellStyle.FormatProvider = format;
            gridVenta.Columns["TotalProducto"].DefaultCellStyle.Format = "c";
            gridVenta.Columns["precio"].DefaultCellStyle.FormatProvider = format;
            gridVenta.Columns["precio"].DefaultCellStyle.Format = "c";
        }

        private void btnCompletarVenta_Click(object sender, EventArgs e)
        {
            var completarVenta = new CompletarVenta(this);
            completarVenta.Show();
        }

        private void btnCrearVenta_Click(object sender, EventArgs e)
        {
            var agregarProducto = new ProductoAgregar(this);
            agregarProducto.Show();
        }

        private void btnModificarVenta_Click(object sender, EventArgs e)
        {
            if (gridVenta.SelectedRows.Count == 0) return;

            ProductosAAsignar.Clear();
            TraerProductos();
            ActualizarGrid();
        }

        private void gridVenta_CellValueChanged(object sender, DataGridViewCellEventArgs e)
        {
            ActualizarGrid();
        }

        private void TraerProductos()
        {
            ProductosSucursal = new BindingList<ProductoEdificioEe>(ProductoBll.ObtenerPorSucursal(Sesion.ObtenerSesion().Sucursal));
            ProductosDeposito = new BindingList<ProductoEdificioEe>(ProductoBll.ObtenerTodosDeposito());
        }
        private void VentaHome_Load(object sender, EventArgs e)
        {
            ActualizarGrid();
        }
    }

}
