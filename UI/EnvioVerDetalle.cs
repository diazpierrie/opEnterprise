using System;
using BLL;
using EE;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class EnvioVerDetalle : UpdatableForm
    {
        public EnvioVerDetalle(EnvioSucursalEe envio)
        {
            InitializeComponent();
            gridDetalle.DataSource = EnvioBll.ObtenerDetalleDeSucursal(envio);

            if (gridDetalle.ColumnCount == 0 || gridDetalle.RowCount == 0)
            {
                return;
            }

            gridDetalle.Columns["id"].Visible = false;
            gridDetalle.Columns["Sucursal"].Visible = false;

            Show();
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
