using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BLL;
using EE;

namespace UI
{
    public partial class ClienteAlta : UpdatableForm
    {
        private readonly ClienteBuscar _clienteBuscar;
        private enum EsSocio
        {
            No = 0,
            Si = 1
        };

        public ClienteAlta(ClienteBuscar clienteBuscar)
        {
            _clienteBuscar = clienteBuscar;
            InitializeComponent();
            cbEsSocio.DataSource = Enum.GetValues(typeof(EsSocio));
        }

        private void btnAccion_Click(object sender, EventArgs e)
        {
            CompradorBll.Crear(new CompradorEe()
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
