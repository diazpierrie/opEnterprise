using BLL;
using EE;
using System;

namespace UI
{
    public partial class ClienteAlta : UpdatableForm
    {
        private readonly ClienteBuscar _clienteBuscar;
        private readonly string[] _esSocioStrings = { "No", "Si" };
        public DireccionEe Direccion = new DireccionEe();

        public ClienteAlta(ClienteBuscar clienteBuscar)
        {
            _clienteBuscar = clienteBuscar;
            InitializeComponent();
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
            var AgregarDireccion = new DireccionAltaModificacion(this);
            AgregarDireccion.Show();
        }

        public void ActualizarDireccion()
        {
            txtDireccion.Text = Direccion.ToString();
        }
    }
}