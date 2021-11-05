using System;
using UI.Properties;
using BLL;
using EE;

namespace UI
{
    public partial class ConfigurarEdificio : UpdatableForm
    {
        private readonly Home _homeForm;

        private enum TipoEdificioEnum { Deposito = 0, Sucursal = 1 }


        public ConfigurarEdificio(Home homeForm)
        {
            _homeForm = homeForm;
            InitializeComponent();

            cbTipoEdificio.DataSource = Enum.GetValues(typeof(TipoEdificioEnum));
            CargarEdificios();
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void cbTipoEdificio_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargarEdificios();
        }

        private void CargarEdificios()
        {
            switch (cbTipoEdificio.SelectedIndex)
            {
                // Deposito
                case 0:
                    cbEdificio.DataSource = DepositoBll.ObtenerActivos();
                    break;
                // Sucursal
                case 1:
                    cbEdificio.DataSource = SucursalBll.ObtenerActivos();
                    break;
            }
        }

        private void btnConfigurar_Click(object sender, EventArgs e)
        {
            if (cbEdificio.SelectedIndex == -1 || cbTipoEdificio.SelectedIndex == -1)
            {
                return;
            }

            Settings.Default["TipoEdificio"] = Enum.GetName(typeof(TipoEdificioEnum), cbTipoEdificio.SelectedIndex);

            var edificioSeleccionado = (EntidadFiscalEe)cbEdificio.SelectedItem;
            Settings.Default["IdEdificio"] = edificioSeleccionado.Id;
            Settings.Default.Save();
            _homeForm.ActualizarTabs();
        }
    }
}

