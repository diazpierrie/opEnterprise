using System;
using BLL;
using EE;
using Security;

namespace UI
{
    public partial class ProveedorAltaModificacion : UpdatableForm
    {
        private readonly ProveedorEe _proveedor = new ProveedorEe();
        private readonly ProveedorHome _homeForm;
        private readonly ProveedorBuscar _buscarForm;

        private readonly bool _crear;

        public ProveedorAltaModificacion(ProveedorBuscar buscarForm)
        {
            _buscarForm = buscarForm;

            _crear = true;
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            btnAccion.Text = Sesion.ObtenerSesion().Idioma.Textos["create"];
            CambiarTitulo(Sesion.ObtenerSesion().Idioma.Textos["create"] + " " + Sesion.ObtenerSesion().Idioma.Textos["vendor"]);
        }

        public ProveedorAltaModificacion(ProveedorHome homeForm)
        {
            _homeForm = homeForm;

            _crear = true;
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            btnAccion.Text = Sesion.ObtenerSesion().Idioma.Textos["create"];
            CambiarTitulo(Sesion.ObtenerSesion().Idioma.Textos["create"] + " " + Sesion.ObtenerSesion().Idioma.Textos["vendor"]);
        }

        public ProveedorAltaModificacion(ProveedorHome homeForm, ProveedorEe proveedor)
        {
            _homeForm = homeForm;
            _proveedor = proveedor;

            _crear = false;
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            btnAccion.Text = Sesion.ObtenerSesion().Idioma.Textos["modify"];
            CambiarTitulo(Sesion.ObtenerSesion().Idioma.Textos["modify"] + " " + Sesion.ObtenerSesion().Idioma.Textos["vendor"]);

            txtNombre.Text = _proveedor.Nombre;
            txtCodigoPostal.Text = _proveedor.CodigoPostal.ToString();
            txtDireccion.Text = _proveedor.Direccion;
            txtTelefono.Text = _proveedor.Telefono;
            txtMail.Text = _proveedor.Mail;
        }

        private void btnAccion_Click(object sender, EventArgs e)
        {
            if (_crear)
            {
                var proveedor = new ProveedorEe
                {
                    Nombre = txtNombre.Text,
                    CodigoPostal = int.Parse(txtCodigoPostal.Text),
                    Direccion = txtDireccion.Text,
                    Telefono = txtTelefono.Text,
                    Mail = txtMail.Text,
                };

                ProveedorBll.Crear(proveedor);
            }
            else
            {
                _proveedor.Nombre = txtNombre.Text;
                _proveedor.CodigoPostal = int.Parse(txtCodigoPostal.Text);
                _proveedor.Direccion = txtDireccion.Text;
                _proveedor.Telefono = txtTelefono.Text;
                _proveedor.Mail = txtMail.Text;

                ProveedorBll.Actualizar(_proveedor);
            }

            if (_homeForm != null)
            {
                _homeForm.ActualizarGrid();
            }
            else
            {
                _buscarForm.ActualizarGrid();
            }

            Close();

        }

        private void ProveedorCrear_Load(object sender, EventArgs e)
        {
            AllControls = Program.GetAllControls(this);

            AllControls.Add(lblDireccion);
            AllControls.Add(lblCodigoPostal);
            AllControls.Add(lblNombre);
            AllControls.Add(lblTelefono);
            AllControls.Add(lblMail);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);
        }
        
        private void CambiarTitulo(string titulo)
        {
            Text = titulo;
        }


    }
}
