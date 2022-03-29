using BLL;
using EE;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Windows.Forms;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class DepositoEntradaRegistrar : UpdatableForm
    {
        public Mdi Mdi1 { get; }
        private List<PedidoProveedorEe> _dataTable;

        public DepositoEntradaRegistrar(Mdi mdi)
        {
            Mdi1 = mdi;
            InitializeComponent();
            ActualizarGrid();
        }

        private void BtnBuscar_Click(object sender, EventArgs e)
        {
            if (txtEmpleado.Text == null && txtProveedor.Text == null) return;

            gridPedidos.DataSource = _dataTable.FindAll(x => x.Empleado.NombreCompleto.IndexOf(txtEmpleado.Text, StringComparison.OrdinalIgnoreCase) >= 0 &&
                                                                           x.Proveedor.Nombre.IndexOf(txtProveedor.Text, StringComparison.OrdinalIgnoreCase) >= 0);
            gridPedidos.Refresh();
        }

        public void ActualizarGrid()
        {
            _dataTable = PedidoProveedorBll.ObtenerIniciados();
            gridPedidos.DataSource = _dataTable;

            gridPedidos.Columns["id"].Visible = false;
            gridPedidos.Columns["Deposito"].Visible = false;
            gridPedidos.Columns["estado"].Visible = false;
            gridPedidos.Columns["FechaRecepcion"].Visible = false;

            gridPedidos.Columns["Empleado"].DisplayIndex = 0;
            gridPedidos.Columns["Proveedor"].DisplayIndex = 1;
            gridPedidos.Columns["FechaPedido"].DisplayIndex = 2;
            gridPedidos.Columns["total"].DisplayIndex = 3;

            var format = (NumberFormatInfo)NumberFormatInfo.CurrentInfo.Clone();
            format.CurrencySymbol = "$";
            gridPedidos.Columns["total"].DefaultCellStyle.FormatProvider = format;
            gridPedidos.Columns["total"].DefaultCellStyle.Format = "c";

            gridPedidos.Refresh();
        }

        private void BtnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void BtnConfirmarRecepcion_Click(object sender, EventArgs e)
        {
            if (gridPedidos.SelectedRows.Count <= 0) return;
            var pedido = (PedidoProveedorEe)gridPedidos.SelectedRows[0].DataBoundItem;
            var detalle = PedidoProveedorBll.ObtenerDetalle(pedido);

            if (detalle.Count == 0)
            {
                return;
            }

            var depositoElegirProductos = new DepositoElegirProductos(pedido, this, detalle);
            Mdi1.OpenWindowForm(depositoElegirProductos);
        }

        private void GridClientes_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (gridPedidos.SelectedRows.Count <= 0) return;
            var pedido = (PedidoProveedorEe)gridPedidos.SelectedRows[0].DataBoundItem;
            var detalle = PedidoProveedorBll.ObtenerDetalle(pedido);

            if (detalle.Count == 0)
            {
                return;
            }

            var depositoVerDetalle = new DepositoVerDetalle(detalle);
            Mdi1.OpenWindowForm(depositoVerDetalle);
        }
    }
}