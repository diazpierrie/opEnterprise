using BLL;
using EE;
using MetroFramework;
using System;
using System.Collections.Generic;
using System.Windows.Forms;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class DepositoConfirmarRecepcion : UpdatableForm
    {
        private List<EnvioEe> _dataTable;

        public DepositoConfirmarRecepcion()
        {
            InitializeComponent();

            var estados = EnvioBll.ObtenerEstados();
            estados.Add(new EstadoEe { Id = 4, Nombre = "Todos" });
            cbEstado.DataSource = estados;
            cbEstado.SelectedIndex = 3;

            ActualizarGrid();
        }

        private void BtnBuscar_Click(object sender, EventArgs e)
        {
            if (txtUsuario.Text == null && txtCliente.Text == null) return;

            var envioEstado = (EstadoEe)cbEstado.SelectedItem;
            if (envioEstado.Nombre == "Todos")
            {
                gridClientes.DataSource = _dataTable.FindAll(x => x.Venta.Empleado.NombreCompleto.IndexOf(txtUsuario.Text, StringComparison.OrdinalIgnoreCase) >= 0
                                                                  && x.Venta.Comprador.NombreCompleto.IndexOf(txtCliente.Text, StringComparison.OrdinalIgnoreCase) >= 0);
            }
            else
            {
                gridClientes.DataSource = _dataTable.FindAll(x => x.Venta.Empleado.NombreCompleto.IndexOf(txtUsuario.Text, StringComparison.OrdinalIgnoreCase) >= 0
                                                                  && x.Venta.Comprador.NombreCompleto.IndexOf(txtCliente.Text, StringComparison.OrdinalIgnoreCase) >= 0
                                                                  && x.Estado.Nombre.IndexOf(envioEstado.Nombre, StringComparison.OrdinalIgnoreCase) >= 0);
            }

            gridClientes.Refresh();
        }

        private void ActualizarGrid()
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

        private void BtnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void GridClientes_CellMouseDoubleClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            if (gridClientes.SelectedRows.Count <= 0) return;
            var envio = (EnvioEe)gridClientes.SelectedRows[0].DataBoundItem;
            var detalleDeSucursal = EnvioBll.ObtenerDetalleDeSucursal(envio);

            if (detalleDeSucursal.Count == 0)
            {
                return;
            }

            var envioVerDetalle = new EnvioVerDetalle(detalleDeSucursal);
            envioVerDetalle.Show();
        }

        private void BtnDespacharEnvio_Click(object sender, EventArgs e)
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
                MetroMessageBox.Show(this, "El envio ya fue despachado", "Envio ya despachado");
            }
        }

        private void BtnConfirmarRecepcion_Click(object sender, EventArgs e)
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
                    MetroMessageBox.Show(this, "El envio ya fue recibido", "Envio ya recibido");
                }
            }
            else
            {
                MetroMessageBox.Show(this, "El envio debe ser despachado primero", "Envio sin despachar");
            }
        }
    }
}