using BLL;
using EE;
using System;
using System.Collections.Generic;
using System.Windows.Forms;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class EnvioBuscar : UpdatableForm
    {
        private List<EnvioSucursalEe> _dataTable;

        public EnvioBuscar()
        {
            InitializeComponent();

            var estados = EnvioBll.ObtenerEstados();
            estados.Add(new EstadoEe { Id = 4, Nombre = "Todos" });
            cbEstado.DataSource = estados;
            cbEstado.SelectedIndex = 3;

            ActualizarGrid();
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            if (txtUsuario.Text == null &&
                txtCliente.Text == null) return;

            var envioEstado = (EstadoEe)cbEstado.SelectedItem;
            if (envioEstado.Nombre == "Todos")
            {
                gridClientes.DataSource = _dataTable.FindAll(x => x.Venta.Empleado.NombreCompleto.ToLower().Contains(txtUsuario.Text.ToLower())
                                                                  && x.Venta.Comprador.NombreCompleto.ToLower().Contains(txtCliente.Text.ToLower()));
            }
            else
            {
                gridClientes.DataSource = _dataTable.FindAll(x => x.Venta.Empleado.NombreCompleto.ToLower().Contains(txtUsuario.Text.ToLower())
                                                                  && x.Venta.Comprador.NombreCompleto.ToLower().Contains(txtCliente.Text.ToLower())
                                                                  && x.Estado.Nombre.ToLower().Contains(envioEstado.Nombre.ToLower()));
            }

            gridClientes.Refresh();
        }

        public void ActualizarGrid()
        {
            _dataTable = EnvioBll.ObtenerDeSucursal(Sesion.ObtenerSesion().Sucursal.Id);
            gridClientes.DataSource = _dataTable;

            gridClientes.Columns["id"].Visible = false;
            gridClientes.Columns["sucursal"].Visible = false;

            gridClientes.Columns["venta"].DisplayIndex = 0;
            gridClientes.Columns["Direccion"].DisplayIndex = 1;
            gridClientes.Columns["FechaSalida"].DisplayIndex = 2;
            gridClientes.Columns["FechaLlegada"].DisplayIndex = 3;
            gridClientes.Columns["estado"].DisplayIndex = 4;

            gridClientes.Refresh();
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void gridClientes_CellMouseDoubleClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            if (gridClientes.SelectedRows.Count <= 0) return;
            var envio = (EnvioSucursalEe)gridClientes.SelectedRows[0].DataBoundItem;
            var envioVerDetalle = new EnvioVerDetalle(envio);
            envioVerDetalle.Show();
        }

        private void btnVerDetalle_Click(object sender, EventArgs e)
        {
            if (gridClientes.SelectedRows.Count <= 0) return;
            var envio = (EnvioSucursalEe)gridClientes.SelectedRows[0].DataBoundItem;
            var envioVerDetalle = new EnvioVerDetalle(envio);
            envioVerDetalle.Show();
        }
    }
}