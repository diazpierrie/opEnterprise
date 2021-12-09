using System;
using BLL;
using EE;

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

            lblPregunta.Text = $@"¿Está seguro que desea eliminar la direccion con calle {_direccion.Calle}?";
        }

        private void btnSi_Click(object sender, EventArgs e)
        {
            DireccionBll.Eliminar(_direccion);
            _homeForm.ActualizarGrid();
            Close();
        }

        private void btnNo_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
