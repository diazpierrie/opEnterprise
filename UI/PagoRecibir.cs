using System;
using System.Collections.Generic;
using System.Globalization;
using System.Windows.Forms;
using BLL;
using EE;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class PagoRecibir : UpdatableForm
    {
        private List<VentaEe> _dataTable;

        public PagoRecibir()
        {
            InitializeComponent();

            var estados = VentaEstadoBll.Obtener();
            estados.Add(new EstadoEe { Id = 4, Nombre = "Todos" });

            ActualizarGrid();
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            if (txtUsuario.Text == null &&
                txtCliente.Text == null) return;

                gridVentas.DataSource = _dataTable.FindAll(x => x.Empleado.NombreCompleto.ToLower().Contains(txtUsuario.Text.ToLower())
                                                                  && x.Comprador.NombreCompleto.ToLower().Contains(txtCliente.Text.ToLower()));

                gridVentas.Refresh();
        }

        public void ActualizarGrid()
        {
            _dataTable = VentaBll.ObtenerPendienteDePago(Sesion.ObtenerSesion().Sucursal);
            gridVentas.DataSource = _dataTable;

            gridVentas.Columns["id"].Visible = false;
            gridVentas.Columns["sucursal"].Visible = false;
            gridVentas.Columns["fecha"].Visible = false;

            gridVentas.Columns["empleado"].DisplayIndex = 0;
            gridVentas.Columns["comprador"].DisplayIndex = 1;
            gridVentas.Columns["metodoPago"].DisplayIndex = 2;
            gridVentas.Columns["estado"].DisplayIndex = 3;
            gridVentas.Columns["total"].DisplayIndex = 4;

            var format = (NumberFormatInfo)NumberFormatInfo.CurrentInfo.Clone();
            format.CurrencySymbol = "$";
            gridVentas.Columns["total"].DefaultCellStyle.FormatProvider = format;
            gridVentas.Columns["total"].DefaultCellStyle.Format = "c";

            gridVentas.Refresh();
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void gridClientes_CellMouseDoubleClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            var venta = (VentaEe)gridVentas.SelectedRows[0].DataBoundItem;
            // ReSharper disable once ObjectCreationAsStatement
            new VentaVerDetalle(venta);
        }

        private void btnElegirVenta_Click(object sender, EventArgs e)
        {
            var venta = (VentaEe)gridVentas.SelectedRows[0].DataBoundItem;
            var confirmarPago = new ConfirmarPago(this, venta);
            confirmarPago.Show();
        }
    }
}
