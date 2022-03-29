using BLL;
using EE;
using MetroFramework;
using Security;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Windows.Forms;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class VentaCancelar : UpdatableForm
    {
        private readonly Mdi _mdi;
        private List<VentaEe> _dataTable;

        public VentaCancelar(Mdi mdi)
        {
            _mdi = mdi;
            InitializeComponent();

            AllControls = Program.GetAllControls(this);
            AllControls.Add(lblCliente);
            AllControls.Add(lblUsuario);
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

            ActualizarGrid();
        }

        private void BtnBuscar_Click(object sender, EventArgs e)
        {
            if (txtUsuario.Text == null && txtCliente.Text == null) return;

            gridVentas.DataSource = _dataTable.FindAll(x => x.Empleado.NombreCompleto.IndexOf(txtUsuario.Text, StringComparison.OrdinalIgnoreCase) >= 0 &&
                                                                  x.Comprador.NombreCompleto.IndexOf(txtCliente.Text, StringComparison.OrdinalIgnoreCase) >= 0);

            gridVentas.Refresh();
        }

        private void ActualizarGrid()
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

            gridVentas.Columns["empleado"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["employee"];
            gridVentas.Columns["comprador"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["client"];
            gridVentas.Columns["metodoPago"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["payment_method"];
            gridVentas.Columns["estado"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["status"];
            gridVentas.Columns["total"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["total"];

            var format = (NumberFormatInfo)NumberFormatInfo.CurrentInfo.Clone();
            format.CurrencySymbol = "$";
            gridVentas.Columns["total"].DefaultCellStyle.FormatProvider = format;
            gridVentas.Columns["total"].DefaultCellStyle.Format = "c";

            gridVentas.Refresh();
        }

        private void BtnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void GridClientes_CellMouseDoubleClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            var venta = (VentaEe)gridVentas.SelectedRows[0].DataBoundItem;
            // ReSharper disable once ObjectCreationAsStatement
            var detalles = VentaBll.ObtenerDetalles(venta);

            if (detalles.Count == 0)
            {
                return;
            }

            _mdi.OpenWindowForm(new VentaVerDetalle(venta, detalles));
        }

        private void BtnCancelarVenta_Click(object sender, EventArgs e)
        {
            var venta = (VentaEe)gridVentas.SelectedRows[0].DataBoundItem;
            var respuesta = MetroMessageBox.Show(_mdi, Sesion.ObtenerSesion().Idioma.Textos["question_cancel_sale"],
                Sesion.ObtenerSesion().Idioma.Textos["confirmation"], MessageBoxButtons.YesNo, MessageBoxIcon.Warning);

            if (respuesta != DialogResult.Yes) return;
            VentaBll.Cancelar(venta);
            ActualizarGrid();
        }
    }
}