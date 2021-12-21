using BLL;
using EE;
using MetroFramework;
using System;
using System.Collections.Generic;
using System.Windows.Forms;
using UI.Properties;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class EnvioGestion : UpdatableForm
    {
        private List<EnvioEe> _dataTable;

        public EnvioGestion()
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
            switch (Settings.Default.TipoEdificio)
            {
                case "Deposito":
                    _dataTable = EnvioBll.ObtenerDeDeposito(Sesion.ObtenerSesion().Deposito.Id);
                    break;
                case "Sucursal":
                    _dataTable = EnvioBll.ObtenerDeSucursal(Sesion.ObtenerSesion().Sucursal.Id);
                    break;
            }

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
            var envio = (EnvioEe)gridClientes.SelectedRows[0].DataBoundItem;
            var envioVerDetalle = new EnvioVerDetalle(envio);
            envioVerDetalle.Show();
        }

        private void btnDespacharEnvio_Click(object sender, EventArgs e)
        {
            if (gridClientes.SelectedRows.Count <= 0) return;
            var envio = (EnvioEe)gridClientes.SelectedRows[0].DataBoundItem;

            if (envio.FechaSalida == default)
            {
                var respuesta = MetroMessageBox.Show(this, "¿Esta seguro que desea despachar el envio?", "Despacho de productos",
                    MessageBoxButtons.YesNo, MessageBoxIcon.Question);

                if (respuesta != DialogResult.Yes) return;
                EnvioBll.ConfirmarDespachoSucursal(envio);
                ActualizarGrid();
            }
            else
            {
                MetroMessageBox.Show(this, "El envio ya fue despachado", "Envio ya despachado", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnConfirmarRecepcion_Click(object sender, EventArgs e)
        {
            if (gridClientes.SelectedRows.Count <= 0) return;
            var envio = (EnvioEe)gridClientes.SelectedRows[0].DataBoundItem;
            if (envio.FechaSalida != default)
            {
                if (envio.FechaLlegada == default)
                {
                    var respuesta = MetroMessageBox.Show(this, "¿Esta seguro que desea confirmar la recepcion del envio?", "Confirmacion de recepcion",
                        MessageBoxButtons.YesNo, MessageBoxIcon.Question);

                    if (respuesta != DialogResult.Yes) return;
                    EnvioBll.ConfirmarRecepcionEnvio(envio);
                    ActualizarGrid();
                }
                else
                {
                    MetroMessageBox.Show(this, "El envio ya fue recibido", "Envio ya recibido", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else
            {
                MetroMessageBox.Show(this, "El envio debe ser despachado primero", "Envio sin despachar", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}