using EE;
using System;

namespace UI
{
    public partial class Ayuda : UpdatableForm
    {
        public Ayuda()
        {
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);
        }

        private void Ayuda_Load(object sender, EventArgs e)
        {
            AllControls = Program.GetAllControls(this);

            var fileName = System.IO.Directory.GetCurrentDirectory() + "\\ManualDeUsuario.pdf";
            view.LoadFromFile(fileName);
        }
    }
}