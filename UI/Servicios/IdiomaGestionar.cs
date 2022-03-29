using EE;
using MetroFramework;
using Security;
using System;
using System.Windows.Forms;

namespace UI
{
    public partial class IdiomaGestionar : UpdatableForm
    {
        private readonly Mdi _mdi;

        public IdiomaGestionar(Mdi mdi)
        {
            _mdi = mdi;
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);
        }

        public void CargarComboBox()
        {
            cbLenguajes.DataSource = IdiomaManager.Obtener();
            _mdi.CargarIdiomas();
        }

        private void BtnAdd_Click(object sender, EventArgs e)
        {
            var agregarIdioma = new ControlesGestionar(this);
            _mdi.OpenWindowForm(agregarIdioma);
        }

        private void BtnDelete_Click(object sender, EventArgs e)
        {
            var response = MetroMessageBox.Show(_mdi, Sesion.ObtenerSesion().Idioma.Textos["delete_language"] + " " + (IdiomaEe)cbLenguajes.SelectedValue + "?", Sesion.ObtenerSesion().Idioma.Textos["warning"], MessageBoxButtons.YesNo, MessageBoxIcon.Warning);

            if (response != DialogResult.Yes) return;

            IdiomaManager.Eliminar((IdiomaEe)cbLenguajes.SelectedValue);
            CargarComboBox();
        }

        private void Editar_Click(object sender, EventArgs e)
        {
            var modificarIdioma = new ControlesGestionar(this, (IdiomaEe)cbLenguajes.SelectedValue);
            _mdi.OpenWindowForm(modificarIdioma);
        }

        private void GestionarIdioma_Load(object sender, EventArgs e)
        {
            AllControls = Program.GetAllControls(this);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

            cbLenguajes.DisplayMember = "Text";
            cbLenguajes.ValueMember = "Value";

            CargarComboBox();
        }
    }
}