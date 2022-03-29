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

        private void BtnBuscar_Click(object sender, EventArgs e)
        {
            if (txtEmpleado.Text == null) return;

            gridPedidos.DataSource = _dataTable.FindAll(x => x.Empleado.NombreCompleto.IndexOf(txtEmpleado.Text, StringComparison.OrdinalIgnoreCase) >= 0);
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

            gridPedidos.Refresh();
        }

        private void BtnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void BtnConfirmarRecepcion_Click(object sender, EventArgs e)
        {
            if (gridPedidos.SelectedRows.Count <= 0) return;
            var pedido = (PedidoDepositoEe)gridPedidos.SelectedRows[0].DataBoundItem;

            var depositoDetalle = PedidoDepositoBll.ObtenerDetalle(pedido);

            if (depositoDetalle.Count == 0)
            {
                return;
            }

            var depositoElegirProductos = new SucursalElegirProductos(pedido, this, depositoDetalle);
            Mdi.OpenWindowForm(depositoElegirProductos);
        }

        private void GridClientes_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (gridPedidos.SelectedRows.Count <= 0) return;
            var pedido = (PedidoDepositoEe)gridPedidos.SelectedRows[0].DataBoundItem;

            var detalle = PedidoDepositoBll.ObtenerDetalle(pedido);

            if (detalle.Count == 0)
            {
                return;
            }

            var sucursalVerDetalle = new SucursalVerDetalle(detalle);

            Mdi.OpenWindowForm(sucursalVerDetalle);
        }
    }
}