using BLL;
using EE;
using System;
using UI.Properties;

namespace UI
{
    public partial class EdificioConfigurar : UpdatableForm
    {
        private readonly Home _homeForm;
        private readonly string[] _tipoEdificioStrings = { "Deposito", "Sucursal" };

        public EdificioConfigurar(Home homeForm)
        {
            _homeForm = homeForm;
            InitializeComponent();

            cbTipoEdificio.DataSource = _tipoEdificioStrings;
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

            Settings.Default["TipoEdificio"] = _tipoEdificioStrings[cbTipoEdificio.SelectedIndex];

            var edificioSeleccionado = (EntidadFiscalEe)cbEdificio.SelectedItem;
            Settings.Default["IdEdificio"] = edificioSeleccionado.Id;
            Settings.Default.Save();

            if (ReferenceEquals(Settings.Default["TipoEdificio"], "Deposito"))
            {
                Sesion.ObtenerSesion().Deposito = DepositoBll.Obtener(edificioSeleccionado.Id);
                Sesion.ObtenerSesion().Sucursal = null;
            }
            else if (ReferenceEquals(Settings.Default["TipoEdificio"], "Sucursal"))
            {
                Sesion.ObtenerSesion().Deposito = null;
                Sesion.ObtenerSesion().Sucursal = SucursalBll.Obtener(edificioSeleccionado.Id);
            }

            _homeForm.ActualizarTabs();
        }
    }
}