using BLL;
using EE;
using System;
using Security;

namespace UI
{
    public partial class ClienteAlta : UpdatableForm
    {
        private readonly ClienteBuscar _clienteBuscar;
        private readonly string[] _esSocioStrings = { Sesion.ObtenerSesion().Idioma.Textos["no"], Sesion.ObtenerSesion().Idioma.Textos["yes"] };
        public DireccionEe Direccion = new DireccionEe();

        public ClienteAlta(ClienteBuscar clienteBuscar)
        {
            _clienteBuscar = clienteBuscar;
            InitializeComponent();

            AllControls = Program.GetAllControls(this);
            AllControls.Add(lblApellido);
            AllControls.Add(lblDireccion);
            AllControls.Add(lblMail);
            AllControls.Add(lblNombre);
            AllControls.Add(lblTelefono);
            AllControls.Add(lblDNI);
            AllControls.Add(lblEsSocio);
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);
            cbEsSocio.DataSource = _esSocioStrings;
        }

        private void btnAccion_Click(object sender, EventArgs e)
        {
            var compradorNuevo = new CompradorEe
            {
                Nombre = txtNombre.Text,
                Apellido = txtApellido.Text,
                Dni = int.Parse(txtDNI.Text),
                FechaCreacion = DateTime.Now,
                Mail = txtMail.Text,
                Telefono = txtTelefono.Text,
                EsSocio = cbEsSocio.SelectedIndex == 1
            };

            compradorNuevo.Id = CompradorBll.Crear(compradorNuevo);

            DireccionBll.Crear(new DireccionEe
            {
                Comprador = compradorNuevo,
                Calle = Direccion.Calle,
                Localidad = Direccion.Localidad,
                Provincia = Direccion.Provincia,
                Pais = Direccion.Pais,
                CodigoPostal = Direccion.CodigoPostal
            }
            );

            _clienteBuscar.ActualizarGrid();
            Close();
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnAgregarDireccion_Click(object sender, EventArgs e)
        {
            var agregarDireccion = new DireccionAltaModificacion(this);
            agregarDireccion.Show();
        }

        public void ActualizarDireccion()
        {
            txtDireccion.Text = Direccion.ToString();
        }
    }
}