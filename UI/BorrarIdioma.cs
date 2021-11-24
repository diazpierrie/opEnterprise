using EE;
using Security;
using System;

namespace UI
{
    public partial class BorrarIdioma : UpdatableForm
    {
        public IdiomaEe Idioma;
        private readonly GestionarIdioma _homeForm;

        public BorrarIdioma(GestionarIdioma homeForm, IdiomaEe idioma)
        {
            InitializeComponent();
            Idioma = idioma;
            lblPregunta.Text = $@"¿Está seguro que desea eliminar el idioma {Idioma.Nombre}?";
            _homeForm = homeForm;
        }

        private void btnSi_Click(object sender, EventArgs e)
        {
            IdiomaManager.Eliminar(Idioma);
            _homeForm.CargarComboBox();
            Close();
        }

        private void btnNo_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}