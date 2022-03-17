using System;
using BLL;
using EE;
using Security;

namespace UI.Sucursal
{
    public partial class SucursalAltaModificacion : UpdatableForm
    {
        private readonly SucursalEe _sucursal = new SucursalEe();
        private readonly SucursalHome _homeForm;
        private readonly bool _crear;
        public SucursalAltaModificacion(SucursalHome homeForm)
        {
            _homeForm = homeForm;

            _crear = true;
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            btnAccion.Text = Sesion.ObtenerSesion().Idioma.Textos["create"];
            CambiarTitulo(Sesion.ObtenerSesion().Idioma.Textos["create"] + " " + Sesion.ObtenerSesion().Idioma.Textos["branch"]);
        }

        public SucursalAltaModificacion(SucursalHome homeForm, SucursalEe sucursal)
        {
            _homeForm = homeForm;
            _sucursal = sucursal;

            _crear = false;
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            btnAccion.Text = Sesion.ObtenerSesion().Idioma.Textos["modify"];
            CambiarTitulo(Sesion.ObtenerSesion().Idioma.Textos["modify"] + " " + Sesion.ObtenerSesion().Idioma.Textos["branch"]);
        }

        private void btnAccion_Click(object sender, EventArgs e)
        {
            if (_crear)
            {
                var deposito = new SucursalEe
                {
                    Nombre = txtNombre.Text,
                    Mail = txtMail.Text,
                    Telefono = txtTelefono.Text,
                    Direccion = txtDireccion.Text,
                    CodigoPostal = int.Parse(txtCodigoPostal.Text),
                };
                SucursalBll.Crear(deposito);
            }
            else
            {
                _sucursal.Nombre = txtNombre.Text;
                _sucursal.Mail = txtMail.Text;
                _sucursal.Telefono = txtTelefono.Text;
                _sucursal.Direccion = txtDireccion.Text;
                _sucursal.CodigoPostal = int.Parse(txtCodigoPostal.Text);

                SucursalBll.Actualizar(_sucursal);
            }

            Close();
            _homeForm.ActualizarGrid();
        }

        private void EmpleadoAltaModificacion_Load(object sender, EventArgs e)
        {

            AllControls.Add(lblDireccion);
            AllControls.Add(lblMail);
            AllControls.Add(lblNombre);
            AllControls.Add(lblCodigoPostal);
            AllControls.Add(lblDireccion);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

            CargarDetalleDeposito();
        }

        private void CargarDetalleDeposito()
        {
            if (_sucursal.Id == 0) { return; }
            txtNombre.Text = _sucursal.Nombre;
            txtMail.Text = _sucursal.Mail;
            txtTelefono.Text = _sucursal.Telefono;
            txtDireccion.Text = _sucursal.Direccion;
            txtCodigoPostal.Text = _sucursal.CodigoPostal.ToString();
        }

        private void CambiarTitulo(string titulo)
        {
            Text = titulo;
        }
    }
}
