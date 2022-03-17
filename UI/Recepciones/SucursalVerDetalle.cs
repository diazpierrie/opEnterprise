using System;
using System.Collections.Generic;
using EE;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class SucursalVerDetalle : UpdatableForm
    {
        public SucursalVerDetalle(List<PedidoDepositoDetalleEe> pedidoDepositoDetalleEes)
        {
            InitializeComponent();

            gridDetalle.DataSource = pedidoDepositoDetalleEes;

            gridDetalle.Columns["id"].Visible = false;
            gridDetalle.Columns["Pedido"].Visible = false;

        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
