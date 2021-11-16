using System;
using System.Collections.Generic;
using System.Windows.Forms;
using BLL;
using EE;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class VentaQuejaCrear : UpdatableForm
    {
        private List<VentaEe> _dataTable;

        public VentaQuejaCrear()
        {
            InitializeComponent();

            var estados = VentaEstadoBll.Obtener();
            estados.Add(new VentaEstadoEe { Id = 4, Nombre = "Todos" });
            cbEstado.DataSource = estados;
            cbEstado.SelectedIndex = 3;

            ActualizarGrid();
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            if (txtUsuario.Text == null &&
                txtCliente.Text == null) return;

            var ventaEstado = (VentaEstadoEe)cbEstado.SelectedItem;
            if (ventaEstado.Nombre == "Todos")
            {
                gridClientes.DataSource = _dataTable.FindAll(x => x.Empleado.NombreCompleto.ToLower().Contains(txtUsuario.Text.ToLower())
                                                                  && x.Comprador.NombreCompleto.ToLower().Contains(txtCliente.Text.ToLower()));
            }
            else
            {
                gridClientes.DataSource = _dataTable.FindAll(x => x.Empleado.NombreCompleto.ToLower().Contains(txtUsuario.Text.ToLower())
                                                                  && x.Comprador.NombreCompleto.ToLower().Contains(txtCliente.Text.ToLower())
                                                                  && x.Estado.Nombre.ToLower().Contains(ventaEstado.Nombre.ToLower()));
            }

            gridClientes.Refresh();
        }

        public void ActualizarGrid()
        {
            _dataTable = VentaBll.Obtener(Sesion.ObtenerSesion().Sucursal);
            gridClientes.DataSource = _dataTable;

            gridClientes.Columns["id"].Visible = false;
            gridClientes.Columns["sucursal"].Visible = false;
            gridClientes.Columns["fecha"].Visible = false;

            gridClientes.Columns["empleado"].DisplayIndex = 0;
            gridClientes.Columns["comprador"].DisplayIndex = 1;
            gridClientes.Columns["metodoPago"].DisplayIndex = 2;
            gridClientes.Columns["estado"].DisplayIndex = 3;
            gridClientes.Columns["total"].DisplayIndex = 4;

            gridClientes.Refresh();
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void gridClientes_CellMouseDoubleClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            var venta = (VentaEe)gridClientes.SelectedRows[0].DataBoundItem;
            new VentaVerDetalle(venta);
        }

        private void btnElegirVenta_Click(object sender, EventArgs e)
        {
            var venta = (VentaEe)gridClientes.SelectedRows[0].DataBoundItem;
            new VentaElegirQueja(venta);
        }
    }
}
