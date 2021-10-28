using System;
using System.Linq;
using System.Windows.Forms;
using EE;
using Security;

namespace UI
{
    public partial class Login : UpdatableForm
    {
        public Login()
        {
            InitializeComponent();
        }

        private void Login_Load(object sender, EventArgs e)
        {
            IdiomaManager.CargarDefault();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            this.AllControls = Program.GetAllControls(this);
            AllControls.Add(lbUsuario);
            AllControls.Add(lbPassword);
            AllControls.Add(lbIdioma);

            CargarIdiomas();
        }


        private void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            if (!SesionManager.IniciarSesion(txtUsuario.Text, txtPassword.Text))
            {
                MetroFramework.MetroMessageBox.Show(this, Sesion.ObtenerSesion().Idioma.Textos["login_failed"], Sesion.ObtenerSesion().Idioma.Textos["notification"]);
                return;
            }
            var sesion = Sesion.ObtenerSesion();

            MetroFramework.MetroMessageBox.Show(this, sesion.Idioma.Textos["login_success"], sesion.Idioma.Textos["notification"]);

            //Dv.ActualizarDv();

            if (!Dv.VerificarDv())
            {
                if (PermisosManager.VerificarPatente(sesion.Usuario, "DigitoVerificador"))
                {
                    var error = new ErrorDv();
                    error.Show();
                    return;
                }

                MetroFramework.MetroMessageBox.Show(this, sesion.Idioma.Textos["error_contact_admin"], sesion.Idioma.Textos["notification"]);
                return;
            }

            this.Hide();
            var h1 = new Home();
            h1.ShowDialog();
            this.Close();
        }

        private void cbIdioma_SelectedIndexChanged(object sender, EventArgs e)
        {
            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, int.Parse(cbIdioma.SelectedValue.ToString() ?? string.Empty));
        }

        private void CargarIdiomas()
        {
            cbIdioma.DisplayMember = "Value";
            cbIdioma.ValueMember = "Key";

            var idiomas = IdiomaManager.Obtener().ToDictionary(id => id.Id, id => id.Nombre);

            cbIdioma.DataSource = new BindingSource(idiomas, null);
        }
    }
}

