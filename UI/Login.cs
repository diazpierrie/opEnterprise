using System;
using System.Linq;
using System.Windows.Forms;
using BLL;
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

            switch (sesion.Usuario.Puesto.Id)
            {
                case 1:
                {
                    sesion.Usuario.Depositos = DepositoBll.ObtenerDepositosDeUsuario(sesion.Usuario);
                    if (sesion.Usuario.Depositos != null)
                    {
                        if (sesion.Usuario.Depositos.Count == 1)
                        {
                            var h1 = new Home();
                            h1.ShowDialog();
                            this.Close();
                        }
                        else
                        {
                            var depositoElegir = new DepositoElegir(sesion.Usuario.Depositos);
                            depositoElegir.Show();
                        }
                    }
                    else
                    {
                        MetroFramework.MetroMessageBox.Show(this, sesion.Idioma.Textos["no_warehouse_found"], sesion.Idioma.Textos["notification"]);
                    }
                    break;
                }
                case 2:
                {
                    sesion.Usuario.Sucursales = SucursalBll.ObtenerSucursalesDeUsuario(sesion.Usuario);
                    if (sesion.Usuario.Sucursales != null)
                    {
                        if (sesion.Usuario.Sucursales.Count == 1)
                        {
                            var h1 = new Home();
                            h1.ShowDialog();
                            this.Close();
                        }
                        else
                        {
                            var depositoElegir = new SucursalElegir(sesion.Usuario.Sucursales);
                            depositoElegir.Show();
                        }
                    }
                    else
                    {
                        MetroFramework.MetroMessageBox.Show(this, sesion.Idioma.Textos["no_branch_found"], sesion.Idioma.Textos["notification"]);
                    }
                    break;
                }
                default:
                {
                    var h1 = new Home();
                    h1.ShowDialog();
                    this.Close();
                    break;
                }
            }
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

