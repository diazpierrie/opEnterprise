using System;
using EE;
using Security;

namespace UI
{
    public partial class GestionarIdioma : UpdatableForm
    {
        public GestionarIdioma()
        {
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);
        }

        private void GestionarIdioma_Load(object sender, EventArgs e)
        {
            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

            cbLenguajes.DisplayMember = "Text";
            cbLenguajes.ValueMember = "Value";

            CargarComboBox();
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            var agregarIdioma = new GestionarControles(this);
            agregarIdioma.Show();
        }

        public void CargarComboBox()
        {
            cbLenguajes.DataSource = IdiomaManager.Obtener();
        }

        private void Editar_Click(object sender, EventArgs e)
        {
            var modificarIdioma = new GestionarControles(this, (IdiomaEe)cbLenguajes.SelectedValue);
            modificarIdioma.Show();
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            var borrarIdioma = new BorrarIdioma(this, (IdiomaEe)cbLenguajes.SelectedValue);
            borrarIdioma.Show();
        }
    }
}
