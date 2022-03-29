using BLL;
using EE;
using System;
using System.Collections.Generic;

namespace UI
{
    public partial class ProveedorBuscar : UpdatableForm
    {
        private List<ProveedorEe> _dataTable;

        public readonly DepositoCompletarPedido Fatherform;

        public ProveedorBuscar(DepositoCompletarPedido fatherform)
        {
            Fatherform = fatherform;
            InitializeComponent();
            ActualizarGrid();
        }

        private void BtnBuscar_Click(object sender, EventArgs e)
        {
            if (txtNombre.Text == null && txtDireccion.Text == null && txtCodigoPostal.Text == null && txtMail.Text == null && txtTelefono.Text == null) return;

            gridClientes.DataSource = _dataTable.FindAll(x => x.Nombre.Contains(txtNombre.Text.ToLower())
                                                             && x.Direccion.Contains(txtDireccion.Text.ToLower())
                                                             && x.CodigoPostal.ToString().Contains(txtCodigoPostal.Text.ToLower())
                                                             && x.Mail.Contains(txtMail.Text.ToLower())
                                                             && x.Telefono.Contains(txtTelefono.Text.ToLower()));
            gridClientes.Refresh();
        }

        private void BtnElegir_Click(object sender, EventArgs e)
        {
            Fatherform.AsignarProveedor(_dataTable[gridClientes.SelectedRows[0].Index]);
            Close();
        }

        private void BtnAltaCliente_Click(object sender, EventArgs e)
        {
            var altaCliente = new ProveedorAltaModificacion(this);
            Fatherform.DepositoPedidoHome.Mdi1.OpenWindowForm(altaCliente);
        }

        public void ActualizarGrid()
        {
            _dataTable = ProveedorBll.Obtener();
            gridClientes.DataSource = _dataTable;

            gridClientes.Columns["id"].Visible = false;
            gridClientes.Columns["activo"].Visible = false;
            gridClientes.Columns["cantidadErrores"].Visible = false;

            gridClientes.Columns["nombre"].DisplayIndex = 0;
            gridClientes.Columns["direccion"].DisplayIndex = 1;
            gridClientes.Columns["mail"].DisplayIndex = 2;
            gridClientes.Columns["codigoPostal"].DisplayIndex = 3;
            gridClientes.Columns["telefono"].DisplayIndex = 4;

            gridClientes.Refresh();
        }
    }
}