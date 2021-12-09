using System;
using System.Windows.Forms;
using EE;
using Security;

namespace UI
{
    public partial class RealizarBackup : UpdatableForm
    {
        private OpenFileDialog _openFileDialog1;

        public RealizarBackup()
        {
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);
        }

        private void btnBackUp_Click(object sender, EventArgs e)
        {
            label1.Text = BackUp.RealizarBackUp(Sesion.ObtenerSesion().Usuario) ? Sesion.ObtenerSesion().Idioma.Textos["bkp_done"] : Sesion.ObtenerSesion().Idioma.Textos["error"];
        }

        private void btnRestore_Click(object sender, EventArgs e)
        {
            _openFileDialog1 = new OpenFileDialog
            {
                Filter = @"Database backups (*.bak)|*.bak",
                Title = @"Open database backup",
                InitialDirectory = @"C:\openEnterprise Backup\",
            };

            if (_openFileDialog1.ShowDialog() != DialogResult.OK) return;

            label1.Text = BackUp.RealizarRestore(_openFileDialog1.FileName, Sesion.ObtenerSesion().Usuario) ? Sesion.ObtenerSesion().Idioma.Textos["restore_done"] : Sesion.ObtenerSesion().Idioma.Textos["error"];
        }

        private void RealizarBackup_Load(object sender, EventArgs e)
        {
            AllControls = Program.GetAllControls(this);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);
        }
    }
}
