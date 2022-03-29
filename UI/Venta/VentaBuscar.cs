using BLL;
using EE;
using Security;
using System;
using System.Collections.Generic;
using System.Windows.Forms;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class VentaBuscar : UpdatableForm
    {
        private readonly Mdi _mdi;
        private List<VentaEe> _dataTable;

        public VentaBuscar(Mdi mdi)
        {
            _mdi = mdi;
            InitializeComponent();

            AllControls = Program.GetAllControls(this);
            AllControls.Add(lblCliente);
            AllControls.Add(lblEstado);
            AllControls.Add(lblUsuario);
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

            var estados = VentaEstadoBll.Obtener();
            estados.Add(new EstadoEe { Id = 9, Nombre = Sesion.ObtenerSesion().Idioma.Textos["all"] });
            cbEstado.DataSource = estados;
            cbEstado.SelectedIndex = 9;

            ActualizarGrid();
        }

        private void ActualizarGrid()
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

            gridClientes.Columns["empleado"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["employee"];
            gridClientes.Columns["comprador"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["client"];
            gridClientes.Columns["metodoPago"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["payment_method"];
            gridClientes.Columns["estado"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["status"];
            gridClientes.Columns["total"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["total"];

            gridClientes.Refresh();
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
                                                                  && x.Comprador.NombreCompleto.IndexOf(txtCliente.Text, StringComparison.OrdinalIgnoreCase) >= 0
                                                                  && x.Estado.Nombre.IndexOf(ventaEstado.Nombre, StringComparison.OrdinalIgnoreCase) >= 0);
            }

            gridClientes.Refresh();
        }

        private void BtnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void GridClientes_CellMouseDoubleClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            var venta = (VentaEe)gridClientes.SelectedRows[0].DataBoundItem;
            // ReSharper disable once ObjectCreationAsStatement
            var detalles = VentaBll.ObtenerDetalles(venta);

            if (detalles.Count == 0)
            {
                return;
            }

            _mdi.OpenWindowForm(new VentaVerDetalle(venta, detalles));
        }
    }
}