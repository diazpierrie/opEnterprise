using EE;
using Security;
using System;

namespace UI
{
    public partial class IdiomaBorrar : UpdatableForm
    {
        public IdiomaEe Idioma;
        private readonly IdiomaGestionar _homeForm;

        public IdiomaBorrar(IdiomaGestionar homeForm, IdiomaEe idioma)
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