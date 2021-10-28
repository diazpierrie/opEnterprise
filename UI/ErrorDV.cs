using System;
using System.IO;
using System.Windows.Forms;
using EE;
using Security;

namespace UI
{
    public partial class ErrorDv : UpdatableForm
    {
        private OpenFileDialog _openFileDialog1;

        public ErrorDv()
        {
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);
            IdiomaManager.Cargar(Sesion.ObtenerSesion().Idioma);
        }

        private void ErrorDV_Load(object sender, EventArgs e)
        {
            this.AllControls = Program.GetAllControls(this);

            var erorrs = Dv.ObtenerErrores().Split('\n');
            foreach (var error in erorrs)
            {
                listErrors.Items.Add(error);
            }

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);
        }

        private void metroButton1_Click(object sender, EventArgs e)
        {
            var bt = new BitacoreTable();
            bt.Show();
        }

        private void btnRestore_Click(object sender, EventArgs e)
        {
            _openFileDialog1 = new OpenFileDialog
            {
                Filter = "Database backups (*.bak)|*.bak",
                Title = "Open database backup",
                InitialDirectory = Directory.GetCurrentDirectory() + "\\..\\..\\..\\BackUps\\",
            };

            if (_openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                BackUp.RealizarRestore(_openFileDialog1.FileName, Sesion.ObtenerSesion().Usuario);
                lblResponse.Text = Sesion.ObtenerSesion().Idioma.Textos["restore_done"];
            }
        }

        private void btnRestDV_Click(object sender, EventArgs e)
        {
            Dv.ActualizarDv();
        }
	}
}
