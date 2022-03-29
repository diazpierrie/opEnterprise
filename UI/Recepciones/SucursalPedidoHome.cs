using BLL;
using EE;
using MetroFramework;
using System;
using System.ComponentModel;
using System.Globalization;
using System.Linq;
using System.Windows.Forms;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class SucursalPedidoHome : UpdatableForm
    {
        public readonly Mdi Mdi;
        public readonly BindingList<ProductoEdificioEe> ProductosAAsignar = new BindingList<ProductoEdificioEe>();
        public BindingList<ProductoEdificioEe> ProductosDeposito { get; set; }
        private double _total;

        public SucursalPedidoHome(Mdi mdi)
        {
            Mdi = mdi;
            InitializeComponent();
            TraerProductos();
        }

        public void ActualizarGrid()
        {
            gridPedido.DataSource = ProductosAAsignar;
            gridPedido.Columns["id"].Visible = false;
            gridPedido.Columns["fechaCreacion"].Visible = false;
            gridPedido.Columns["activo"].Visible = false;
            gridPedido.Columns["precio"].Visible = false;
            gridPedido.Columns["codigo"].Visible = false;
            gridPedido.Columns["cantidadaretirar"].Visible = false;
            gridPedido.Columns["cantidadacomprar"].Visible = false;

            gridPedido.Columns["nombre"].DisplayIndex = 0;
            gridPedido.Columns["edificio"].DisplayIndex = 1;
            gridPedido.Columns["cantidad"].DisplayIndex = 2;
            gridPedido.Columns["costo"].DisplayIndex = 3;
            gridPedido.Columns["TotalProducto"].DisplayIndex = 4;

            gridPedido.Columns["Cantidad"].HeaderText = "Cantidad a Comprar";
            gridPedido.Columns["TotalProducto"].HeaderText = "Total del Producto";

            _total = ProductosAAsignar.Sum(producto => producto.Cantidad * producto.Costo);
            lblTotal.Text = $"Total: ${_total}";

            gridPedido.Refresh();

            var format = (NumberFormatInfo)NumberFormatInfo.CurrentInfo.Clone();
            format.CurrencySymbol = "$";
            gridPedido.Columns["TotalProducto"].DefaultCellStyle.FormatProvider = format;
            gridPedido.Columns["TotalProducto"].DefaultCellStyle.Format = "c";
            gridPedido.Columns["costo"].DefaultCellStyle.FormatProvider = format;
            gridPedido.Columns["costo"].DefaultCellStyle.Format = "c";
        }

        private void BtnAgregarProductos_Click(object sender, EventArgs e)
        {
            var agregarProducto = new SucursalProductoAgregar(this);
            Mdi.OpenWindowForm(agregarProducto);
        }

        private void BtnCompletarPedido_Click(object sender, EventArgs e)
        {
            var respuesta = MetroMessageBox.Show(Mdi, "¿Esta seguro de realizar el pedido?", "Confirmacion", MessageBoxButtons.YesNo, MessageBoxIcon.Information);
            if (respuesta != DialogResult.Yes) return;
            var pedidoNuevo = new PedidoDepositoEe()
            {
                Empleado = Sesion.ObtenerSesion().Usuario,
                Sucursal = Sesion.ObtenerSesion().Sucursal,
                Estado = new PedidoEstadoEe() { Id = 1 },
                FechaPedido = DateTime.Now,
            };

            if (PedidoDepositoBll.Crear(pedidoNuevo, ProductosAAsignar.ToList()) == 0) return;

            MetroMessageBox.Show(Mdi, "Pedido realizado con exito", "Exito", MessageBoxButtons.OK,
                MessageBoxIcon.Question);
            Close();
        }

        private void BtnRemoverProductos_Click(object sender, EventArgs e)
        {
            if (gridPedido.SelectedRows.Count == 0) return;

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
            ProductosDeposito = new BindingList<ProductoEdificioEe>(ProductoBll.ObtenerTodosDeposito());
        }

        private void VentaHome_Load(object sender, EventArgs e)
        {
            ActualizarGrid();
        }
    }
}