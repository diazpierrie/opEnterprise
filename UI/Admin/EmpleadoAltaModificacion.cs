using BLL;
using EE;
using Security;
using System;
using System.Linq;
using System.Windows.Forms;

namespace UI
{
    public partial class EmpleadoAltaModificacion : UpdatableForm
    {
        private readonly UsuarioEe _usuario = new UsuarioEe();
        private readonly EmpleadoHome _homeForm;
        private readonly bool _crear;

        public EmpleadoAltaModificacion(EmpleadoHome homeForm)
        {
            _homeForm = homeForm;

            _crear = true;
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            btnAccion.Text = Sesion.ObtenerSesion().Idioma.Textos["create"];
            CambiarTitulo(Sesion.ObtenerSesion().Idioma.Textos["create_employee"]);
        }

        public EmpleadoAltaModificacion(EmpleadoHome homeForm, UsuarioEe usuario)
        {
            _homeForm = homeForm;
            _usuario = usuario;

            _crear = false;
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            btnAccion.Text = Sesion.ObtenerSesion().Idioma.Textos["modify"];
            CambiarTitulo(Sesion.ObtenerSesion().Idioma.Textos["modify_employee"]);
        }

        private void BtnAccion_Click(object sender, EventArgs e)
        {
            if (_crear)
            {
                var usuario = new UsuarioEe
                {
                    Nombre = txtNombre.Text,
                    Apellido = txtApellido.Text,
                    Dni = int.Parse(txtDNI.Text),
                    Mail = txtMail.Text,
                    Telefono = txtTelefono.Text,
                    NombreUsuario = txtUsername.Text,
                    Rol = new FamiliaEe { Id = int.Parse(cbRol.SelectedValue.ToString()) },
                };
                UsuarioBll.Crear(usuario);
            }
            else
            {
                _usuario.Nombre = txtNombre.Text;
                _usuario.Apellido = txtApellido.Text;
                _usuario.Dni = int.Parse(txtDNI.Text);
                _usuario.Mail = txtMail.Text;
                _usuario.Telefono = txtTelefono.Text;
                _usuario.NombreUsuario = txtUsername.Text;
                _usuario.Rol = new FamiliaEe { Id = int.Parse(cbRol.SelectedValue.ToString()) };
                UsuarioBll.Actualizar(_usuario);
            }

            Close();
            _homeForm.ActualizarGrid();
        }

        private void EmpleadoAltaModificacion_Load(object sender, EventArgs e)
        {
            AllControls.Add(lblApellido);
            AllControls.Add(lblMail);
            AllControls.Add(lblNombre);
            AllControls.Add(lblUsername);
            AllControls.Add(lblRol);
            AllControls.Add(lblDNI);
            AllControls.Add(lblTelefono);

            if (_usuario.Id == 0)
            {
                txtUsername.Enabled = true;
            }

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

            CargarFamilias();
            CargarDetalleUsuario();
        }

        private void CargarFamilias()
        {
            cbRol.DisplayMember = "Value";
            cbRol.ValueMember = "Key";

            var familias = RolManager.ObtenerFamilia().ToDictionary(ee => ee.Id, ee => ee.Nombre);

            cbRol.DataSource = new BindingSource(familias, null);
        }

        private void CargarDetalleUsuario()
        {
            if (_usuario.Id == 0) { return; }

            txtNombre.Text = _usuario.Nombre;
            txtApellido.Text = _usuario.Apellido;
            txtDNI.Text = _usuario.Dni.ToString();
            txtMail.Text = _usuario.Mail;
            txtTelefono.Text = _usuario.Telefono;
            txtUsername.Text = _usuario.NombreUsuario;

            RolManager.ObtenerFamiliaPorUsuario(_usuario);
            cbRol.SelectedIndex = cbRol.FindStringExact(_usuario.Rol != null ? _usuario.Rol.Nombre : "");
        }

        private void CambiarTitulo(string titulo)
        {
            Text = titulo;
        }
    }
}