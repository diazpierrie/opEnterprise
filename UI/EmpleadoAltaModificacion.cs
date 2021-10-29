using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Forms;
using BLL;
using EE;
using Security;

namespace UI
{
    public partial class EmpleadoAltaModificacion : UpdatableForm
    {
        private UsuarioEe _usuario = new UsuarioEe();
        private readonly EmpleadoHome _homeForm;
        private bool _crear;
        public EmpleadoAltaModificacion(EmpleadoHome homeForm)
        {
            _homeForm = homeForm;

            _crear = true;
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            btnAccion.Text = "Crear";
            this.Text = "Crear Empleado";
        }

        public EmpleadoAltaModificacion(EmpleadoHome homeForm, UsuarioEe usuario)
        {
            _homeForm = homeForm;
            _usuario = usuario;

            _crear = false;
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            btnAccion.Text = "Modificar";
            this.Text = "Modificar Empleado";
        }

        private void btnAccion_Click(object sender, EventArgs e)
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
                        Permiso = new FamiliaEe() { Id = int.Parse(cbPermiso.SelectedValue.ToString()) },
                        Sector = new SectorEe() { Id = int.Parse(cbSector.SelectedValue.ToString()) },
                        Puesto = new PuestoEe() { Id = int.Parse(cbPuesto.SelectedValue.ToString()) }
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
                    _usuario.Permiso = new FamiliaEe() {Id = int.Parse(cbPermiso.SelectedValue.ToString())};
                    _usuario.Sector = new SectorEe() {Id = int.Parse(cbSector.SelectedValue.ToString())};
                    _usuario.Puesto = new PuestoEe() {Id = int.Parse(cbPuesto.SelectedValue.ToString())};
                    UsuarioBll.Actualizar(_usuario);
                }

                this.Close();
                _homeForm.ActualizarGrid();
        }

        private void EmpleadoAltaModificacion_Load(object sender, EventArgs e)
        {

            AllControls.Add(lblApellido);
            AllControls.Add(lblMail);
            AllControls.Add(lblNombre);
            AllControls.Add(lblUsername);
            AllControls.Add(lblRol);
            AllControls.Add(lblPuesto);

            if (this._usuario.Id == 0)
            {
                txtUsername.Enabled = true;
            }

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

            CargarFamilias();
            CargarPuestos();
            CargarSectores();
            CargarDetalleUsuario();
        }

        private void CargarSectores()
        {
            cbSector.DisplayMember = "Value";
            cbSector.ValueMember = "Key";

            var sectores = SectorManager.Obtener().ToDictionary(ee => ee.Id, ee => ee.Nombre);
            cbSector.DataSource = new BindingSource(sectores, null);
        }

        private void CargarFamilias()
        {
            cbPermiso.DisplayMember = "Value";
            cbPermiso.ValueMember = "Key";

            var familias = PermisosManager.ObtenerFamilia().ToDictionary(ee => ee.Id, ee => ee.Nombre);

            cbPermiso.DataSource = new BindingSource(familias, null);
        }

        private void CargarPuestos()
        {
            var puestos = PuestoBll.Obtener();

            cbPuesto.DisplayMember = "Value";
            cbPuesto.ValueMember = "Key";

            var items = puestos.ToDictionary(puesto => puesto.Id, puesto => puesto.Nombre);

            cbPuesto.DataSource = new BindingSource(items, null);
        }

        private void CargarDetalleUsuario()
        {
            if (this._usuario.Id == 0) { return; }

            txtNombre.Text = _usuario.Nombre;
            txtApellido.Text = _usuario.Apellido;
            txtDNI.Text = _usuario.Dni.ToString();
            txtMail.Text = _usuario.Mail;
            txtTelefono.Text = _usuario.Telefono;
            txtUsername.Text = _usuario.NombreUsuario;

            PermisosManager.ObtenerFamilia(_usuario);
            cbPermiso.SelectedIndex = cbPermiso.FindStringExact((_usuario.Permiso != null ? _usuario.Permiso.Nombre : ""));

            SectorManager.Obtener(_usuario);
            cbSector.Text = _usuario.Sector != null ? _usuario.Sector.Nombre : "";

            PuestoBll.Obtener(_usuario);
            cbPuesto.SelectedIndex = cbPuesto.FindStringExact((_usuario.Puesto != null ? _usuario.Puesto.Nombre : (String)""));
        }
    }
}
