using System;
using BLL;
using EE;
using Security;

namespace UI
{
    public partial class DireccionAltaModificacion : UpdatableForm
    {
        private readonly ClienteAlta _clienteAltaForm;
        private readonly DireccionEe _direccion = new DireccionEe();
        private readonly DireccionHome _homeForm;

        private readonly bool _crear;

        public DireccionAltaModificacion(DireccionHome homeForm)
        {
            _homeForm = homeForm;

            _crear = true;
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            btnAccion.Text = "Crear";
            CambiarTitulo("Crear Direccion");
        }
        public DireccionAltaModificacion(ClienteAlta clienteAltaForm)
        {
            _clienteAltaForm = clienteAltaForm;

            _crear = true;
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            btnAccion.Text = "Crear";
            CambiarTitulo("Crear Direccion");
        }

        public DireccionAltaModificacion(DireccionHome homeForm, DireccionEe direccion)
        {
            _homeForm = homeForm;
            _direccion = direccion;

            _crear = false;
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            btnAccion.Text = "Modificar";
            CambiarTitulo("Modificar Direccion");

            txtCalle.Text = _direccion.Calle;
            txtLocalidad.Text = _direccion.Localidad;
            txtProvincia.Text = _direccion.Provincia;
            txtPais.Text = _direccion.Pais;
            txtCodigoPostal.Text = _direccion.CodigoPostal;
        }

        private void btnAccion_Click(object sender, EventArgs e)
        {
            if (_crear)
            {
                if (_clienteAltaForm != null)
                {
                    _clienteAltaForm.Direccion = new DireccionEe
                    {
                        Id = 0,
                        Comprador = null,
                        Calle = txtCalle.Text,
                        Localidad = txtLocalidad.Text,
                        Provincia = txtProvincia.Text,
                        Pais = txtPais.Text,
                        CodigoPostal = txtCodigoPostal.Text
                    };
                    _clienteAltaForm.ActualizarDireccion();
                }
                else
                {
                    var direccion = new DireccionEe
                    {
                        Comprador = _homeForm.Comprador,
                        Calle = txtCalle.Text,
                        Localidad = txtLocalidad.Text,
                        Provincia = txtProvincia.Text,
                        Pais = txtPais.Text,
                        CodigoPostal = txtCodigoPostal.Text,

                    };
                    DireccionBll.Crear(direccion);
                    _homeForm.ActualizarGrid();
                }

            }
            else
            {
                _direccion.Calle = txtCalle.Text;
                _direccion.Localidad = txtLocalidad.Text;
                _direccion.Provincia = txtProvincia.Text;
                _direccion.Pais = txtPais.Text;
                _direccion.CodigoPostal = txtCodigoPostal.Text;

                DireccionBll.Actualizar(_direccion);
                _homeForm.ActualizarGrid();
            }

            
            Close();
        }

        private void ProveedorCrear_Load(object sender, EventArgs e)
        {
            AllControls = Program.GetAllControls(this);

            AllControls.Add(lblLocalidad);
            AllControls.Add(lblProvincia);
            AllControls.Add(lblNombre);
            AllControls.Add(lblCodigoPostal);
            AllControls.Add(lblPais);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);
        }
        
        private void CambiarTitulo(string titulo)
        {
            Text = titulo;
        }


    }
}
