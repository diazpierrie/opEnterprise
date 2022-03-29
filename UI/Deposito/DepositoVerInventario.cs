using BLL;
using EE;
using System;
using System.Collections.Generic;
using System.Globalization;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class DepositoVerInventario : UpdatableForm
    {
        private List<ProductoEdificioEe> _dataTable;

        public DepositoVerInventario()
        {
            InitializeComponent();
            ActualizarGrid();
        }

        private void BtnBuscar_Click(object sender, EventArgs e)
        {
            if (txtNombre.Text == null && txtCodigo.Text == null) return;

            gridInventario.DataSource = _dataTable.FindAll(x => x.Nombre.IndexOf(txtNombre.Text, StringComparison.OrdinalIgnoreCase) >= 0 &&
                                                                              x.Codigo.IndexOf(txtCodigo.Text, StringComparison.OrdinalIgnoreCase) >= 0);

            gridInventario.Refresh();
        }

        private void ActualizarGrid()
        {
            _dataTable = ProductoBll.ObtenerDeposito(Sesion.ObtenerSesion().Deposito);
            gridInventario.DataSource = _dataTable;

            gridInventario.Columns["id"].Visible = false;
            gridInventario.Columns["activo"].Visible = false;
            gridInventario.Columns["edificio"].Visible = false;
            gridInventario.Columns["cantidadacomprar"].Visible = false;
            gridInventario.Columns["cantidadaretirar"].Visible = false;
            gridInventario.Columns["fechacreacion"].Visible = false;
            gridInventario.Columns["totalproducto"].Visible = false;

            gridInventario.Columns["nombre"].DisplayIndex = 0;
            gridInventario.Columns["codigo"].DisplayIndex = 1;
            gridInventario.Columns["costo"].DisplayIndex = 2;
            gridInventario.Columns["precio"].DisplayIndex = 3;
            gridInventario.Columns["cantidad"].DisplayIndex = 4;

            var format = (NumberFormatInfo)NumberFormatInfo.CurrentInfo.Clone();
            format.CurrencySymbol = "$";

            gridInventario.Columns["costo"].DefaultCellStyle.FormatProvider = format;
            gridInventario.Columns["costo"].DefaultCellStyle.Format = "c";
            gridInventario.Columns["precio"].DefaultCellStyle.FormatProvider = format;
            gridInventario.Columns["precio"].DefaultCellStyle.Format = "c";

            gridInventario.Refresh();
        }
    }
}