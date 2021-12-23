using System;
using System.Linq;
using System.Windows.Forms;
using BLL;
using EE;
using MetroFramework;
using Security;
using UI.Properties;

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

            AllControls = Program.GetAllControls(this);
            AllControls.Add(lbUsuario);
            AllControls.Add(lbPassword);
            AllControls.Add(lbIdioma);
            
            CargarIdiomas();
        }


        private void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            if (!SesionManager.IniciarSesion(txtUsuario.Text, txtPassword.Text))
            {
                MetroMessageBox.Show(this, Sesion.ObtenerSesion().Idioma.Textos["login_failed"], Sesion.ObtenerSesion().Idioma.Textos["notification"], MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            var sesion = Sesion.ObtenerSesion();

            MetroMessageBox.Show(this, sesion.Idioma.Textos["login_success"], sesion.Idioma.Textos["notification"], MessageBoxButtons.OK, MessageBoxIcon.Question);

            Dv.ActualizarDv();

            if (!Dv.VerificarDv())
            {
                if (PermisosManager.VerificarPatente(sesion.Usuario, "DigitoVerificador"))
                {
                    var error = new ErrorDv();
                    error.Show();
                    return;
                }

                MetroMessageBox.Show(this, sesion.Idioma.Textos["error_contact_admin"], sesion.Idioma.Textos["notification"]);
                return;
            }


            var tipoEdificio = Settings.Default.TipoEdificio;
            var idEdificio = Settings.Default.IdEdificio;

            if (!string.IsNullOrEmpty(tipoEdificio) && !string.IsNullOrEmpty(idEdificio.ToString()))
            {
                switch (tipoEdificio)
                {
                    case "Deposito":
                        sesion.Deposito = DepositoBll.Obtener(idEdificio);
                        break;
                    case "Sucursal":
                        sesion.Sucursal = SucursalBll.Obtener(idEdificio);
                        break;
                }
            }
            else
            {
                MetroMessageBox.Show(this, sesion.Idioma.Textos["wrong_config"], sesion.Idioma.Textos["notification"]);
                return;
            }

            Hide();
            var h1 = new Home();

            switch (sesion.Usuario.Permiso.Id)
            {
                case 1: //Deposito
                    {
                        if (tipoEdificio == "Deposito")
                        {
                            sesion.Usuario.Depositos = DepositoBll.ObtenerDepositosDeUsuario(sesion.Usuario);
                            if (sesion.Usuario.Depositos != null)
                            {

                                if (sesion.Usuario.Depositos.Find(depo => depo.Id == idEdificio) != null)
                                {

                                    h1.ShowDialog();
                                    Close();
                                }
                                else
                                {
                                    MetroMessageBox.Show(this, sesion.Idioma.Textos["wrong_warehouse"], sesion.Idioma.Textos["notification"], MessageBoxButtons.OK, MessageBoxIcon.Error);
                                }
                            }

                        }
                        else
                        {
                            MetroMessageBox.Show(this, sesion.Idioma.Textos["wrong_building"], sesion.Idioma.Textos["notification"], MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                        break;
                    }
                case 2: //Sucursal
                    {
                        if (tipoEdificio == "Sucursal")
                        {
                            sesion.Usuario.Sucursales = SucursalBll.ObtenerSucursalesDeUsuario(sesion.Usuario);
                            if (sesion.Usuario.Sucursales != null)
                            {

                                if (sesion.Usuario.Sucursales.Find(sucu => sucu.Id == idEdificio) != null)
                                {

                                    h1.ShowDialog();
                                    Close();
                                }
                                else
                                {
                                    MetroMessageBox.Show(this, sesion.Idioma.Textos["wrong_branch"], sesion.Idioma.Textos["notification"], MessageBoxButtons.OK, MessageBoxIcon.Error);
                                }
                            }

                        }
                        else
                        {
                            MetroMessageBox.Show(this, sesion.Idioma.Textos["wrong_building"], sesion.Idioma.Textos["notification"], MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                        break;
                    }
                default:
                    {
                        h1.ShowDialog();
                        Close();
                        break;
                    }
            }
        }

        private void cbIdioma_SelectedIndexChanged(object sender, EventArgs e)
        {
            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, int.Parse(cbIdioma.SelectedValue.ToString()));
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

