using System;
using System.Collections.Generic;
using System.Windows.Forms;
using BLL;
using EE;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class VentaQuejaElegirProducto : UpdatableForm
    {
        private readonly VentaEe _venta;
        private readonly string _motivo;
        private double _total;
        private readonly List<VentaDetalleEe> _productosSeleccionados = new List<VentaDetalleEe>();

        public VentaQuejaElegirProducto(VentaEe venta, string motivo)
        {
            _venta = venta;
            _motivo = motivo;
            InitializeComponent();
            var productos = VentaBll.ObtenerDetalle(venta.Id);
            gridDetalle.DataSource = productos;

            if (gridDetalle.ColumnCount == 0 || gridDetalle.RowCount == 0)
            {
                return;
            }

            gridDetalle.Columns["id"].Visible = false;
            gridDetalle.Columns["Venta"].Visible = false;

            gridDetalle.Columns["producto"].ReadOnly = true;
            gridDetalle.Columns["costo"].ReadOnly = true;
            gridDetalle.Columns["precio"].ReadOnly = true;

            lblTotal.Text = @"Perdida Total: $0";

            Show();
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnElegir_Click(object sender, EventArgs e)
        {
            switch (_motivo)
            {
                case "Perdida":

                    for (var i = 0; i < gridDetalle.SelectedRows.Count; i++)
                    {
                        _productosSeleccionados.Add((VentaDetalleEe)gridDetalle.SelectedRows[i].DataBoundItem);
                    }

                    VentaBll.RegistrarPerdida(_venta, _total, _productosSeleccionados);
                    break;

                case "Devolucion":

                    for (var i = 0; i < gridDetalle.SelectedRows.Count; i++)
                    {
                        _productosSeleccionados.Add((VentaDetalleEe)gridDetalle.SelectedRows[i].DataBoundItem);
                    }

                    VentaBll.RegistrarDevolucion(_venta, _productosSeleccionados);
                    break;
            }
        }

        private void gridDetalle_SelectionChanged(object sender, EventArgs e)
        {
            ActualizarTotal();
        }

        private void ActualizarTotal()
        {
            if (gridDetalle.SelectedRows.Count == 0) return;
            _total = 0;

            for (var i = 0; i < gridDetalle.SelectedRows.Count; i++)
            {
                var producto = (VentaDetalleEe)gridDetalle.SelectedRows[i].DataBoundItem;
                _total += producto.Costo * producto.Cantidad;
            }

            lblTotal.Text = $@"Perdida Total: ${_total}";
        }

        private void gridDetalle_CellBeginEdit(object sender, DataGridViewCellCancelEventArgs e)
        {
            gridDetalle.Tag = gridDetalle.CurrentCell.Value;
        }

        private void gridDetalle_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            if ((int)gridDetalle.CurrentCell.Value <= (int)gridDetalle.Tag &&
                (int)gridDetalle.CurrentCell.Value > 0)
            {
                ActualizarTotal();
            }
            else
            {
                gridDetalle.CurrentCell.Value = gridDetalle.Tag;
            }
        }
    }
}
