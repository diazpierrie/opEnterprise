using System;
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
        private double _vuelto;

        public ConfirmarPago(RecibirPago recibirPago, VentaEe venta)
        {
            _recibirPago = recibirPago;
            _venta = venta;
            InitializeComponent();
            ActualizarGrid();
            lblTotal.Text = $@"Total: ${venta.Total}";

            if (venta.MetodoPago.Nombre != "Efectivo")
            {
                lblEfectivoRecibido.Visible = false;
                txtEfectivo.Visible = false;
                lblVueltoADar.Visible = false;
            }
            else
            {
                lblEfectivoRecibido.Visible = true;
                txtEfectivo.Visible = true;
                lblVueltoADar.Visible = true;
            }
        }

        private void ActualizarGrid()
        {
            gridVentaDetalle.DataSource = VentaBll.ObtenerDetalles(_venta);

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
            if (_vuelto <= 0)
            {
                VentaBll.ConfirmarPago(new PagoEe() { Venta = _venta, MontoCobrado = _venta.Total, Vuelto = _vuelto * -1 });
                _recibirPago.ActualizarGrid();
                Close();
            }
            else
            {
                MetroMessageBox.Show(this, "Pago incorrecto", "Error");
            }
        }

        private void txtEfectivo_TextChanged(object sender, EventArgs e)
        {
            if (txtEfectivo.Text == Empty || !txtEfectivo.Text.All(char.IsDigit)) return;

            _vuelto = _venta.Total - double.Parse(txtEfectivo.Text);

            lblVueltoADar.FontSize = MetroLabelSize.Medium;

            if (_vuelto == 0)
            {
                lblVueltoADar.Visible = false;
            }
            else if (_vuelto < 0)
            {
                lblVueltoADar.Text = $@"Vuelto a dar: ${_vuelto * -1}";
            }
            else
            {
                lblVueltoADar.Text = $@"Dinero faltante: ${_vuelto }";

            }
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
