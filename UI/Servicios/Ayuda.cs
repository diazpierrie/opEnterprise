using System;
using EE;

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
            this.AllControls = Program.GetAllControls(this);

            string fileName = System.IO.Directory.GetCurrentDirectory() + "\\ManualDeUsuario" + ".pdf";
            view.LoadFromFile(fileName);
        }
    }
}