using System;
using System.Collections.Generic;
using EE;

namespace UI
{
    public partial class DepositoElegir : UpdatableForm
    {
        private readonly List<DepositoEe> _depositos;

        public DepositoElegir(List<DepositoEe> depositos)
        {
            _depositos = depositos;
            cbDepositos.DataSource = _depositos;
            InitializeComponent();
        }

        private void btnElegir_Click(object sender, EventArgs e)
        {
            Sesion.ObtenerSesion().Deposito = _depositos[cbDepositos.SelectedIndex];
            var h1 = new Home();
            h1.ShowDialog();
            Close();
        }

        private void btnLogOut_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
