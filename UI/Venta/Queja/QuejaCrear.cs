using BLL;
using EE;
using Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using MetroFramework;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class QuejaCrear : UpdatableForm
    {
        public readonly Mdi Mdi;
        private List<VentaEe> _dataTable;

        public QuejaCrear(Mdi mdi)
        {
            Mdi = mdi;
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

        private void BtnBuscar_Click(object sender, EventArgs e)
        {
            if (txtUsuario.Text == null && txtCliente.Text == null) return;

            var ventaEstado = (EstadoEe)cbEstado.SelectedItem;
            if (ventaEstado.Nombre == Sesion.ObtenerSesion().Idioma.Textos["all"])
            {
                gridClientes.DataSource = _dataTable.FindAll(x => x.Empleado.NombreCompleto.IndexOf(txtUsuario.Text, StringComparison.OrdinalIgnoreCase) >= 0
                                                                  && x.Comprador.NombreCompleto.IndexOf(txtCliente.Text, StringComparison.OrdinalIgnoreCase) >= 0);
            }
            else
            {
                gridClientes.DataSource = _dataTable.FindAll(x => x.Empleado.NombreCompleto.IndexOf(txtUsuario.Text, StringComparison.OrdinalIgnoreCase) >= 0
                                                                  && x.Comprador.NombreCompleto.IndexOf(txtCliente.Text,StringComparison.OrdinalIgnoreCase) >= 0
                                                                  && x.Estado.Nombre.IndexOf(ventaEstado.Nombre, StringComparison.OrdinalIgnoreCase) >= 0);
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

        private void BtnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void GridClientes_CellMouseDoubleClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            var venta = (VentaEe)gridClientes.SelectedRows[0].DataBoundItem;
            var detalles = VentaBll.ObtenerDetalles(venta);

            if (detalles.Count == 0)
            {
                return;
            }

            Mdi.OpenWindowForm(new VentaVerDetalle(venta, detalles));
        }

        private void BtnElegirVenta_Click(object sender, EventArgs e)
        {
            var venta = (VentaEe)gridClientes.SelectedRows[0].DataBoundItem;
            var obtenerDetallesAgrupados = VentaBll.ObtenerDetallesAgrupados(venta);
            if (obtenerDetallesAgrupados.Count == 0)
            {
                MetroMessageBox.Show(Mdi, Sesion.ObtenerSesion().Idioma.Textos["sale_no_products"], Sesion.ObtenerSesion().Idioma.Textos["error"], MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            var quejaElegir = new QuejaElegir(venta, this, obtenerDetallesAgrupados);
            quejaElegir.Show();
        }
    }
}