using BLL;
using EE;
using System;
using System.Collections.Generic;
using System.Windows.Forms;
using MetroFramework;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class SucursalElegirProductos : UpdatableForm
    {
        private readonly List<PedidoDepositoDetalleEe> _productosSeleccionados;
        private readonly PedidoDepositoEe _pedido;
        private readonly SucursalEntradaRegistrar _depositoEntradaRegistrar;

        public SucursalElegirProductos(PedidoDepositoEe pedido, SucursalEntradaRegistrar depositoEntradaRegistrar)
        {
            _pedido = pedido;
            _depositoEntradaRegistrar = depositoEntradaRegistrar;
            InitializeComponent();
            _productosSeleccionados = PedidoDepositoBll.ObtenerDetalle(pedido);
            gridDetalle.DataSource = _productosSeleccionados;


            if (gridDetalle.ColumnCount == 0 || gridDetalle.RowCount == 0)
            {
                return;
            }

            gridDetalle.Columns["id"].Visible = false;
            gridDetalle.Columns["Pedido"].Visible = false;

            gridDetalle.Columns["producto"].ReadOnly = true;
            gridDetalle.Columns["cantidad"].ReadOnly = true;
            gridDetalle.Columns["CantidadAIngresar"].ReadOnly = false;

            gridDetalle.Columns["CantidadAIngresar"].HeaderText = "Cantidad a Ingresar";

            Show();
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnElegir_Click(object sender, EventArgs e)
        {
            var respuesta = MetroMessageBox.Show(_depositoEntradaRegistrar.Mdi,
                "¿Esta seguro que desea confirmar la entrada de productos?", "Confirmacion",
                MessageBoxButtons.YesNo, MessageBoxIcon.None);
            if (respuesta == DialogResult.Yes)
            {
                PedidoDepositoBll.RegistrarEntrada(_pedido, _productosSeleccionados);
                _depositoEntradaRegistrar.ActualizarGrid();
            }
            Close();
        }

        private void gridDetalle_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            var row = (PedidoDepositoDetalleEe)gridDetalle.Rows[e.RowIndex].DataBoundItem;
            if (gridDetalle.CurrentCell.Value != null && (int) gridDetalle.CurrentCell.Value <= 0) 
            {
                MetroMessageBox.Show(_depositoEntradaRegistrar.Mdi, "Por favor, ingrese un numero positivo", "Valor incorrecto", MessageBoxButtons.OK, MessageBoxIcon.Error);
                gridDetalle.CurrentCell.Value = row.Cantidad;
                return;
            }

            if ((int) gridDetalle.CurrentCell.Value <= row.Cantidad) return;

            MetroMessageBox.Show(_depositoEntradaRegistrar.Mdi, "Ingrese un valor positivo igual o menor a la cantidad a entrar",
                "Cantidad excedida", MessageBoxButtons.OK, MessageBoxIcon.Error);
            gridDetalle.CurrentCell.Value = row.Cantidad;
        }

        private void gridDetalle_DataError(object sender, DataGridViewDataErrorEventArgs e)
        {
            if (int.TryParse(gridDetalle.CurrentCell.EditedFormattedValue.ToString(), out _))
            {

                gridDetalle.CurrentCell.Value = gridDetalle.Tag;
            }
            else
            {
                MetroMessageBox.Show(_depositoEntradaRegistrar.Mdi, "Por favor, ingrese un numero positivo", "Valor incorrecto", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}