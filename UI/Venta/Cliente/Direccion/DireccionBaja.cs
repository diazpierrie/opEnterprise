using BLL;
using EE;
using System;

namespace UI
{
    public partial class DireccionBaja : UpdatableForm
    {
        private readonly DireccionHome _homeForm;
        private readonly DireccionEe _direccion;

        public DireccionBaja(DireccionHome homeForm, DireccionEe direccion)
        {
            InitializeComponent();
            _homeForm = homeForm;
            _direccion = direccion;

            lblPregunta.Text = $"¿Está seguro que desea eliminar la direccion con calle {_direccion.Calle}?";
        }

        private void BtnSi_Click(object sender, EventArgs e)
        {
            DireccionBll.Eliminar(_direccion);
            _homeForm.ActualizarGrid();
            Close();
        }

        private void BtnNo_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}