using BLL;
using EE;
using MetroFramework;
using Security;
using System;
using System.ComponentModel;
using System.Globalization;
using System.Linq;
using System.Windows.Forms;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class VentaHome : UpdatableForm
    {
        public readonly Mdi Mdi;
        public readonly BindingList<ProductoEdificioEe> ProductosAAsignar = new BindingList<ProductoEdificioEe>();
        public BindingList<ProductoEdificioEe> ProductosDeposito { get; set; }
        public BindingList<ProductoEdificioEe> ProductosSucursal { get; set; }
        public double Total { get; set; }

        public VentaHome(Mdi mdi)
        {
            Mdi = mdi;
            InitializeComponent();
            TraerProductos();

            AllControls = Program.GetAllControls(this);
            AllControls.Add(lblTotal);
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);
            lblTotal.Text += ": ";
        }

        public void ActualizarGrid()
        {
            gridVenta.DataSource = ProductosAAsignar;
            gridVenta.Columns["id"].Visible = false;
            gridVenta.Columns["fechaCreacion"].Visible = false;
            gridVenta.Columns["activo"].Visible = false;
            gridVenta.Columns["cantidad"].Visible = false;
            gridVenta.Columns["Costo"].Visible = false;
            gridVenta.Columns["CantidadARetirar"].Visible = false;

            gridVenta.Columns["nombre"].DisplayIndex = 0;
            gridVenta.Columns["Edificio"].DisplayIndex = 1;
            gridVenta.Columns["codigo"].DisplayIndex = 2;
            gridVenta.Columns["precio"].DisplayIndex = 3;
            gridVenta.Columns["CantidadAComprar"].DisplayIndex = 4;
            gridVenta.Columns["TotalProducto"].DisplayIndex = 5;

            gridVenta.Columns["nombre"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["name"];
            gridVenta.Columns["Edificio"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["building"];
            gridVenta.Columns["codigo"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["code"];
            gridVenta.Columns["precio"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["price"];
            gridVenta.Columns["CantidadAComprar"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["amount_buy"];
            gridVenta.Columns["TotalProducto"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["total_product"];

            Total = ProductosAAsignar.Sum(producto => producto.CantidadAComprar * producto.Precio);
            lblTotal.Text = $"Total: ${Total}";

            gridVenta.Refresh();

            var format = (NumberFormatInfo)NumberFormatInfo.CurrentInfo.Clone();
            format.CurrencySymbol = "$";
            gridVenta.Columns["TotalProducto"].DefaultCellStyle.FormatProvider = format;
            gridVenta.Columns["TotalProducto"].DefaultCellStyle.Format = "c";
            gridVenta.Columns["precio"].DefaultCellStyle.FormatProvider = format;
            gridVenta.Columns["precio"].DefaultCellStyle.Format = "c";
        }

        private void BtnCompletarVenta_Click(object sender, EventArgs e)
        {
            if (ProductosAAsignar.Count != 0)
            {
                var completarVenta = new VentaCompletar(this);
                Mdi.OpenWindowForm(completarVenta);
            }
            else
            {
                MetroMessageBox.Show(Mdi, Sesion.ObtenerSesion().Idioma.Textos["please_add_products"],
                    Sesion.ObtenerSesion().Idioma.Textos["error"], MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void BtnCrearVenta_Click(object sender, EventArgs e)
        {
            var agregarProducto = new VentaProductoAgregar(this);
            Mdi.OpenWindowForm(agregarProducto);
        }

        private void BtnRemoverProductos_Click(object sender, EventArgs e)
        {
            if (gridVenta.SelectedRows.Count == 0) return;

            ProductosAAsignar.Clear();
            TraerProductos();
            ActualizarGrid();
        }

        private void GridVenta_CellValueChanged(object sender, DataGridViewCellEventArgs e)
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