using System;
using BLL;
using EE;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class DepositoVerDetalle : UpdatableForm
    {
        public DepositoVerDetalle(PedidoProveedorEe pedido)
        {
            InitializeComponent();
            gridDetalle.DataSource = PedidoProveedorBll.ObtenerDetalle(pedido);

            if (gridDetalle.ColumnCount == 0 || gridDetalle.RowCount == 0)
            {
                return;
            }

            gridDetalle.Columns["id"].Visible = false;
            gridDetalle.Columns["Pedido"].Visible = false;

            Show();
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
