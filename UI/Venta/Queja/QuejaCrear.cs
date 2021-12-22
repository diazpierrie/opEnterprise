using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using BLL;
using EE;
using Security;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class QuejaCrear : UpdatableForm
    {
        private List<VentaEe> _dataTable;

        public QuejaCrear()
        {
            InitializeComponent();

            AllControls = Program.GetAllControls(this);
            AllControls.Add(lblCliente);
            AllControls.Add(lblEstado);
            AllControls.Add(lblUsuario);

            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

            var estados = VentaEstadoBll.Obtener().Where(x => x.Id != 3 &&
                                                              x.Id != 6 && 
                                                              x.Id != 7 && 
                                                              x.Id != 9).ToList();
            estados.Add(new EstadoEe { Id = 10, Nombre = Sesion.ObtenerSesion().Idioma.Textos["all"] });
            cbEstado.DataSource = estados;
            cbEstado.SelectedIndex = 5;

            ActualizarGrid();
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            if (txtUsuario.Text == null &&
                txtCliente.Text == null) return;

            var ventaEstado = (EstadoEe)cbEstado.SelectedItem;
            if (ventaEstado.Nombre == Sesion.ObtenerSesion().Idioma.Textos["all"])
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
            _dataTable = VentaBll.Obtener(Sesion.ObtenerSesion().Sucursal).Where(x => x.Estado.Id != 3 &&
                                                                                      x.Estado.Id != 6 &&
                                                                                      x.Estado.Id != 7 && 
                                                                                      x.Estado.Id != 9).ToList();
            gridClientes.DataSource = _dataTable;

            gridClientes.Columns["id"].Visible = false;
            gridClientes.Columns["sucursal"].Visible = false;
            gridClientes.Columns["fecha"].Visible = false;

            gridClientes.Columns["empleado"].DisplayIndex = 0;
            gridClientes.Columns["comprador"].DisplayIndex = 1;
            gridClientes.Columns["metodoPago"].DisplayIndex = 2;
            gridClientes.Columns["estado"].DisplayIndex = 3;
            gridClientes.Columns["total"].DisplayIndex = 4;

            gridClientes.Columns["empleado"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["employee"];
            gridClientes.Columns["comprador"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["client"];
            gridClientes.Columns["metodoPago"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["payment_method"];
            gridClientes.Columns["estado"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["status"];
            gridClientes.Columns["total"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["total"];

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
            new QuejaElegir(venta, this);
        }
    }
}
