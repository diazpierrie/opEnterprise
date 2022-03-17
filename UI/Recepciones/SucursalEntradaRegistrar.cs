using BLL;
using EE;
using System;
using System.Collections.Generic;
using System.Windows.Forms;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class SucursalEntradaRegistrar : UpdatableForm
    {
        public readonly Mdi Mdi;
        private List<PedidoDepositoEe> _dataTable;

        public SucursalEntradaRegistrar(Mdi mdi)
        {
            Mdi = mdi;
            InitializeComponent();
            ActualizarGrid();
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            if (txtEmpleado.Text == null) return;

                gridPedidos.DataSource = _dataTable.FindAll(x => x.Empleado.NombreCompleto.ToLower().Contains(txtEmpleado.Text.ToLower()));
                gridPedidos.Refresh();
        }

        public void ActualizarGrid()
        {
            _dataTable = PedidoDepositoBll.ObtenerIniciados();
            gridPedidos.DataSource = _dataTable;

            gridPedidos.Columns["id"].Visible = false;
            gridPedidos.Columns["Sucursal"].Visible = false;
            gridPedidos.Columns["estado"].Visible = false;
            gridPedidos.Columns["FechaRecepcion"].Visible = false;

            gridPedidos.Columns["Empleado"].DisplayIndex = 0;
            gridPedidos.Columns["FechaPedido"].DisplayIndex = 1;

            //var format = (NumberFormatInfo)NumberFormatInfo.CurrentInfo.Clone();
            //format.CurrencySymbol = "$";
            //gridPedidos.Columns["total"].DefaultCellStyle.FormatProvider = format;
            //gridPedidos.Columns["total"].DefaultCellStyle.Format = "c";

            gridPedidos.Refresh();
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }
        
        private void btnConfirmarRecepcion_Click(object sender, EventArgs e)
        {
            if (gridPedidos.SelectedRows.Count <= 0) return;
            var pedido = (PedidoDepositoEe)gridPedidos.SelectedRows[0].DataBoundItem;
            var depositoElegirProductos = new SucursalElegirProductos(pedido, this);
            Mdi.OpenWindowForm(depositoElegirProductos);
        }

        private void gridClientes_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (gridPedidos.SelectedRows.Count <= 0) return;
            var pedido = (PedidoDepositoEe)gridPedidos.SelectedRows[0].DataBoundItem;
            new SucursalVerDetalle(pedido);

        }
    }
}