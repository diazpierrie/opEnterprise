using EE;
using System;
using System.Collections.Generic;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class EnvioVerDetalle : UpdatableForm
    {
        public EnvioVerDetalle(List<EnvioDetalleEe> detalleDeSucursal)
        {
            InitializeComponent();
            gridDetalle.DataSource = detalleDeSucursal;

            gridDetalle.Columns["id"].Visible = false;
            gridDetalle.Columns["Edificio"].Visible = false;
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}