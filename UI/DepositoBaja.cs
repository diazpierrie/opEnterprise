using System;
using BLL;
using EE;

namespace UI
{
    public partial class DepositoBaja : UpdatableForm
    {
        public DepositoEe Deposito;
        private readonly DepositoHome _homeForm;

        public DepositoBaja(DepositoHome homeForm, DepositoEe deposito)
        {
            InitializeComponent();
            Deposito = deposito;
            lblPregunta.Text = $@"¿Está seguro que desea eliminar el Deposito {Deposito.Nombre}?";
            _homeForm = homeForm;
        }

        private void btnSi_Click(object sender, EventArgs e)
        {
            DepositoBll.Eliminar(Deposito);
            _homeForm.ActualizarGrid();
            this.Close();
        }

        private void btnNo_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
