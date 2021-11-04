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
// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class VentaVerDetalle : UpdatableForm
    {
        public VentaVerDetalle(VentaEe venta)
        {
            InitializeComponent();
            gridDetalle.DataSource = VentaBll.ObtenerDetalle(venta.Id);

            if (gridDetalle.ColumnCount == 0 || gridDetalle.RowCount == 0)
            {
                return;
            }

            gridDetalle.Columns["id"].Visible = false;
            gridDetalle.Columns["Venta"].Visible = false;
            lblTotal.Text = $"Total: ${venta.Total}";

            Show();


        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
