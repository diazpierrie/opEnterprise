using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BLL;
using EE;

namespace UI
{
    public partial class ConfirmarPago : UpdatableForm
    {
        private readonly VentaEe _venta;

        public ConfirmarPago(VentaEe venta)
        {
            _venta = venta;
            InitializeComponent();

            gridVentaDetalle.DataSource = VentaBll.ObtenerDetalle(venta.Id);
            lblTotal.Text = $@"Total: ${venta.Total}";

            var vuelto = venta.Total - double.Parse(txtEfectivo.Text);

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
                lblVueltoADar.Text = $@"Dinero faltante: ${vuelto}";
            }

        }

        private void btnCompletarVenta_Click(object sender, EventArgs e)
        {
            VentaBll.ConfirmarPago(_venta);
        }
    }
}
