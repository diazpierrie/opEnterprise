using System;
using System.Collections.Generic;
using BLL;
using EE;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class ClienteBuscar : UpdatableForm
    {
        private List<CompradorEe> _dataTable;
        private readonly CompletarVenta _fatherform;
        public ClienteBuscar(CompletarVenta fatherform)
        {
            _fatherform = fatherform;
            InitializeComponent();
            ActualizarGrid();
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            if (txtNombre.Text == null &&
                txtApellido.Text == null &&
                txtDni.Text == null &&
                txtMail.Text == null &&
                txtTelefono.Text == null) return;

            gridClientes.DataSource = _dataTable.FindAll(x => x.Nombre.Contains(txtNombre.Text.ToLower())
                                                             && x.Apellido.Contains(txtApellido.Text.ToLower())
                                                             && x.Dni.ToString().Contains(txtDni.Text.ToLower())
                                                             && x.Mail.Contains(txtMail.Text.ToLower())
                                                             && x.Telefono.Contains(txtTelefono.Text.ToLower()));
            gridClientes.Refresh();
        }

        private void btnElegir_Click(object sender, EventArgs e)
        {
            _fatherform.AsignarCliente(_dataTable[gridClientes.SelectedRows[0].Index]);
            Close();
        }

        private void btnAltaCliente_Click(object sender, EventArgs e)
        {
            var altaCliente = new ClienteAlta(this);
            altaCliente.Show();
        }

        public void ActualizarGrid()
        {
            _dataTable = CompradorBll.Obtener();
            gridClientes.DataSource = _dataTable;

            gridClientes.Columns["id"].Visible = false;
            gridClientes.Columns["activo"].Visible = false;
            gridClientes.Columns["fechaCreacion"].Visible = false;

            gridClientes.Columns["nombre"].DisplayIndex = 0;
            gridClientes.Columns["apellido"].DisplayIndex = 1;
            gridClientes.Columns["mail"].DisplayIndex = 2;
            gridClientes.Columns["dni"].DisplayIndex = 3;
            gridClientes.Columns["telefono"].DisplayIndex = 4;

            gridClientes.Refresh();
        }
    }
}
