using EE;
using System;
using System.Collections.Generic;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class DepositoVerDetalle : UpdatableForm
    {
        public DepositoVerDetalle(List<PedidoProveedorDetalleEe> pedidoProveedorDetalleEes)
        {
            InitializeComponent();
            gridDetalle.DataSource = pedidoProveedorDetalleEes;
            gridDetalle.Columns["id"].Visible = false;
            gridDetalle.Columns["Pedido"].Visible = false;
        }

        private void BtnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}