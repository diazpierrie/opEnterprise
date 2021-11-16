using System;
using BLL;
using EE;

namespace UI
{
    public partial class ClienteAlta : UpdatableForm
    {
        private readonly ClienteBuscar _clienteBuscar;
        private readonly string[] _esSocioStrings = { "No", "Si" };


        public ClienteAlta(ClienteBuscar clienteBuscar)
        {
            _clienteBuscar = clienteBuscar;
            InitializeComponent();
            cbEsSocio.DataSource = _esSocioStrings;
        }

        private void btnAccion_Click(object sender, EventArgs e)
        {
            CompradorBll.Crear(new CompradorEe
            {
                Nombre = txtNombre.Text,
                Apellido = txtApellido.Text,
                Dni = int.Parse(txtDNI.Text),
                FechaCreacion = DateTime.Now,
                Mail = txtMail.Text,
                Telefono = txtTelefono.Text,
                EsSocio = (cbEsSocio.SelectedIndex == 1)
            });

            _clienteBuscar.ActualizarGrid();
            Close();
        }
    }
}
