using BLL;
using EE;
using System;
using System.Collections.Generic;
using System.Windows.Forms;
using MetroFramework;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class DepositoElegirProductos : UpdatableForm
    {
        private readonly List<PedidoProveedorDetalleEe> _productosSeleccionados;
        private readonly PedidoProveedorEe _pedido;
        private readonly DepositoEntradaRegistrar _depositoEntradaRegistrar;

        public DepositoElegirProductos(PedidoProveedorEe pedido, DepositoEntradaRegistrar depositoEntradaRegistrar)
        {
            _pedido = pedido;
            _depositoEntradaRegistrar = depositoEntradaRegistrar;
            InitializeComponent();
            _productosSeleccionados = PedidoProveedorBll.ObtenerDetalle(pedido);
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

            Show();
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnElegir_Click(object sender, EventArgs e)
        {
            var respuesta = MetroMessageBox.Show(this,
                "¿Esta seguro que desea confirmar la entrada de productos?", "Confirmacion",
                MessageBoxButtons.YesNo, MessageBoxIcon.None);
            if (respuesta == DialogResult.Yes)
            {
                PedidoProveedorBll.RegistrarEntrada(_pedido, _productosSeleccionados);
                _depositoEntradaRegistrar.ActualizarGrid();
                ProveedorBll.Penalizar(_pedido.Proveedor, 1); //Productos faltantes

                foreach (var producto in _productosSeleccionados)
                {
                    if (producto.Cantidad == producto.CantidadAIngresar) continue;

                    respuesta = MetroMessageBox.Show(this,
                    "Se detectaron productos faltantes, ¿desea penalizar al proveedor?", "Productos faltantes",
                    MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                    if (respuesta == DialogResult.Yes)
                    {
                        ProveedorBll.Penalizar(_pedido.Proveedor, 1); //Productos faltantes
                    }
                    break;
                }
            }
            Close();
        }

        private void gridDetalle_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            var row = (PedidoProveedorDetalleEe)gridDetalle.Rows[e.RowIndex].DataBoundItem;
            if ((gridDetalle.CurrentCell.Value == null
                || (int)gridDetalle.CurrentCell.Value > 0)
                && (int)gridDetalle.CurrentCell.Value < row.Cantidad) return;

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
                MetroMessageBox.Show(this, "Por favor solo ingrese numeros positivos", "Valor incorrecto", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}