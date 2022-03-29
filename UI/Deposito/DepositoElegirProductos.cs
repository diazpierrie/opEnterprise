using BLL;
using EE;
using MetroFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class DepositoElegirProductos : UpdatableForm
    {
        private readonly DepositoEntradaRegistrar _depositoEntradaRegistrar;
        private readonly PedidoProveedorEe _pedido;
        private readonly List<PedidoProveedorDetalleEe> _productosSeleccionados;

        public DepositoElegirProductos(PedidoProveedorEe pedido, DepositoEntradaRegistrar depositoEntradaRegistrar,
            List<PedidoProveedorDetalleEe> pedidoProveedorDetalleEes)
        {
            _pedido = pedido;
            _depositoEntradaRegistrar = depositoEntradaRegistrar;
            InitializeComponent();
            _productosSeleccionados = pedidoProveedorDetalleEes;
            gridDetalle.DataSource = _productosSeleccionados;

            gridDetalle.Columns["id"].Visible = false;
            gridDetalle.Columns["Pedido"].Visible = false;

            gridDetalle.Columns["producto"].ReadOnly = true;
            gridDetalle.Columns["cantidad"].ReadOnly = true;
            gridDetalle.Columns["CantidadAIngresar"].ReadOnly = false;
        }

        private void BtnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void BtnElegir_Click(object sender, EventArgs e)
        {
            var respuesta = MetroMessageBox.Show(_depositoEntradaRegistrar.Mdi1,
                "¿Esta seguro que desea confirmar la entrada de productos?", "Confirmacion",
                MessageBoxButtons.YesNo, MessageBoxIcon.None);
            if (respuesta == DialogResult.Yes)
            {
                PedidoProveedorBll.RegistrarEntrada(_pedido, _productosSeleccionados);
                MetroMessageBox.Show(_depositoEntradaRegistrar.Mdi1,
                    "Entrada de productos registrada", "Notificacion",
                    MessageBoxButtons.OK, MessageBoxIcon.Question);
                _depositoEntradaRegistrar.ActualizarGrid();

                if (_productosSeleccionados.Any(producto => producto.Cantidad != producto.CantidadAIngresar))
                {
                    respuesta = MetroMessageBox.Show(_depositoEntradaRegistrar.Mdi1,
                        "Se detectaron productos faltantes, ¿desea penalizar al proveedor?", "Productos faltantes",
                        MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                    if (respuesta == DialogResult.Yes)
                    {
                        ProveedorBll.Penalizar(_pedido.Proveedor, 1); //Productos faltantes
                    }
                }
            }
            Close();
        }

        private void GridDetalle_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            var row = (PedidoProveedorDetalleEe)gridDetalle.Rows[e.RowIndex].DataBoundItem;
            if (gridDetalle.CurrentCell.Value != null && (int)gridDetalle.CurrentCell.Value < 0)
            {
                MetroMessageBox.Show(_depositoEntradaRegistrar.Mdi1, "Por favor, ingrese un numero positivo", "Valor incorrecto", MessageBoxButtons.OK, MessageBoxIcon.Error);
                gridDetalle.CurrentCell.Value = row.Cantidad;
                return;
            }

            if ((int)gridDetalle.CurrentCell.Value <= row.Cantidad) return;

            MetroMessageBox.Show(_depositoEntradaRegistrar.Mdi1, "Ingrese un valor positivo igual o menor a la cantidad a entrar",
                "Cantidad excedida", MessageBoxButtons.OK, MessageBoxIcon.Error);
            gridDetalle.CurrentCell.Value = row.Cantidad;
        }

        private void GridDetalle_DataError(object sender, DataGridViewDataErrorEventArgs e)
        {
            if (int.TryParse(gridDetalle.CurrentCell.EditedFormattedValue.ToString(), out _))
            {
                gridDetalle.CurrentCell.Value = gridDetalle.Tag;
            }
            else
            {
                MetroMessageBox.Show(_depositoEntradaRegistrar.Mdi1, "Por favor, ingrese un numero positivo", "Valor incorrecto", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}