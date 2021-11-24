using System;
using System.Drawing;
using System.Globalization;
using System.Linq;
using BLL;
using EE;
using MetroFramework;
using static System.String;

namespace UI
{
    public partial class ConfirmarPago : UpdatableForm
    {
        private readonly RecibirPago _recibirPago;
        private readonly VentaEe _venta;

        public ConfirmarPago(RecibirPago recibirPago, VentaEe venta)
        {
            _recibirPago = recibirPago;
            _venta = venta;
            InitializeComponent();
            ActualizarGrid();
            lblTotal.Text = $@"Total: ${venta.Total}";

        }

        private void ActualizarGrid()
        {
            gridVentaDetalle.DataSource = VentaBll.ObtenerDetalle(_venta.Id);

            gridVentaDetalle.Columns["id"].Visible = false;
            gridVentaDetalle.Columns["Venta"].Visible = false;
            gridVentaDetalle.Columns["Costo"].Visible = false;

            gridVentaDetalle.Columns["producto"].DisplayIndex = 0;
            gridVentaDetalle.Columns["precio"].DisplayIndex = 1;
            gridVentaDetalle.Columns["cantidad"].DisplayIndex = 2;
            gridVentaDetalle.Columns["TotalDetalle"].DisplayIndex = 3;

            var format = (NumberFormatInfo)NumberFormatInfo.CurrentInfo.Clone();
            format.CurrencySymbol = "$";
            gridVentaDetalle.Columns["TotalDetalle"].DefaultCellStyle.FormatProvider = format;
            gridVentaDetalle.Columns["TotalDetalle"].DefaultCellStyle.Format = "c";
            gridVentaDetalle.Columns["precio"].DefaultCellStyle.FormatProvider = format;
            gridVentaDetalle.Columns["precio"].DefaultCellStyle.Format = "c";
        }

        private void btnCompletarVenta_Click(object sender, EventArgs e)
        {
            VentaBll.ConfirmarPago(_venta);
            _recibirPago.ActualizarGrid();
            Close();
;        }

        private void txtEfectivo_TextChanged(object sender, EventArgs e)
        {
            if (txtEfectivo.Text == Empty || !txtEfectivo.Text.All(char.IsDigit)) return;

            var vuelto = _venta.Total - double.Parse(txtEfectivo.Text);

            lblVueltoADar.FontSize = MetroLabelSize.Medium;

            if (vuelto == 0)
            {
                lblVueltoADar.Visible = false;
            }
            else if (vuelto > 0)
            {
                lblVueltoADar.Text = $@"Vuelto a dar: ${vuelto}";
            }
            else
            {
                lblVueltoADar.Text = $@"Dinero faltante: ${vuelto * -1}";

            }
        }
    }
}
