using BLL;
using EE;
using Security;

namespace UI
{
    public partial class ProveedorAltaModificacion : UpdatableForm
    {
        public ProveedorEe Proveedor = new ProveedorEe();
        private ProveedorHome _homeForm;
        private ProveedorBuscar _buscarForm;

        public bool Crear;

        public ProveedorAltaModificacion(ProveedorBuscar buscarForm)
        {
            _buscarForm = buscarForm;

            Crear = true;
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            btnAccion.Text = "Crear";
            this.Text = "Crear Proveedor";
        }

        public ProveedorAltaModificacion(ProveedorHome homeForm)
        {
            _homeForm = homeForm;

            Crear = true;
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            btnAccion.Text = "Crear";
            this.Text = "Crear Proveedor";
        }

        public ProveedorAltaModificacion(ProveedorHome homeForm, ProveedorEe proveedor)
        {
            _homeForm = homeForm;
            Proveedor = proveedor;

            Crear = false;
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            btnAccion.Text = "Modificar";
            this.Text = "Modificar Proveedor";
            
            txtNombre.Text = Proveedor.Nombre;
            txtCodigoPostal.Text = Proveedor.CodigoPostal.ToString();
            txtDireccion.Text = Proveedor.Direccion;
            txtTelefono.Text = Proveedor.Telefono;
            txtMail.Text = Proveedor.Mail;
        }

        private void btnAccion_Click(object sender, System.EventArgs e)
        {
            if (Crear)
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
                Proveedor.Nombre = txtNombre.Text;
                Proveedor.CodigoPostal = int.Parse(txtCodigoPostal.Text);
                Proveedor.Direccion = txtDireccion.Text;
                Proveedor.Telefono = txtTelefono.Text;
                Proveedor.Mail = txtMail.Text;

                ProveedorBll.Actualizar(Proveedor);
            }

            this.Close();
            if (_homeForm != null)
            {
                _homeForm.ActualizarGrid();
            }
            else
            {
                _buscarForm.ActualizarGrid();
            }
            
        }

        private void ProveedorCrear_Load(object sender, System.EventArgs e)
        {
            this.AllControls = Program.GetAllControls(this);

            AllControls.Add(lblDireccion);
            AllControls.Add(lblCodigoPostal);
            AllControls.Add(lblNombre);
            AllControls.Add(lblTelefono);
            AllControls.Add(lblMail);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);
        }


    }
}
