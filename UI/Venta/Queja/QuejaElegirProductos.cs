using BLL;
using EE;
using MetroFramework;
using System;
using System.Collections.Generic;
using System.Windows.Forms;
using Security;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class QuejaElegirProductos : UpdatableForm
    {
        private readonly string _motivo;
        private readonly List<VentaDetalleEe> _productosSeleccionados = new List<VentaDetalleEe>();
        private readonly QuejaElegir _quejaElegir;
        private readonly VentaEe _venta;
        private double _total;

        public QuejaElegirProductos(VentaEe venta, string motivo, QuejaElegir quejaElegir)
        {
            _venta = venta;
            _motivo = motivo;
            _quejaElegir = quejaElegir;
            InitializeComponent();

            AllControls = Program.GetAllControls(this);
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

            var productos = VentaBll.ObtenerDetallesAgrupados(venta);
            gridDetalle.DataSource = productos;

            if (gridDetalle.ColumnCount == 0 || gridDetalle.RowCount == 0)
            {
                return;
            }

            gridDetalle.Columns["venta"].Visible = false;
            gridDetalle.Columns["precio"].Visible = false;
            gridDetalle.Columns["TotalDetalle"].Visible = false;
            gridDetalle.Columns["Id"].Visible = false;

            gridDetalle.Columns["producto"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["product"];
            gridDetalle.Columns["costo"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["cost"];
            gridDetalle.Columns["cantidad"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["amount"];

            gridDetalle.Columns["producto"].ReadOnly = true;
            gridDetalle.Columns["costo"].ReadOnly = true;

            if (_motivo == Sesion.ObtenerSesion().Idioma.Textos["loss"])
                lblTotal.Text = Sesion.ObtenerSesion().Idioma.Textos["loss"] + @" " + Sesion.ObtenerSesion().Idioma.Textos["total"] + @": $";
            else if (_motivo == Sesion.ObtenerSesion().Idioma.Textos["devolution"]) lblTotal.Visible = false;

            Show();
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

            lblTotal.Text = Sesion.ObtenerSesion().Idioma.Textos["loss"] + @" " + Sesion.ObtenerSesion().Idioma.Textos["total"] + $@": ${ _total}";
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnElegir_Click(object sender, EventArgs e)
        {
            if (_motivo == Sesion.ObtenerSesion().Idioma.Textos["loss"])
            {
                for (var i = 0; i < gridDetalle.SelectedRows.Count; i++)
                {
                    _productosSeleccionados.Add((VentaDetalleEe)gridDetalle.SelectedRows[i].DataBoundItem);
                }

                VentaBll.RegistrarPerdida(_venta, _total, _productosSeleccionados);
            }
            else if (_motivo == Sesion.ObtenerSesion().Idioma.Textos["devolution"])
            {
                for (var i = 0; i < gridDetalle.SelectedRows.Count; i++)
                {
                    _productosSeleccionados.Add((VentaDetalleEe)gridDetalle.SelectedRows[i].DataBoundItem);
                }

                VentaBll.RegistrarDevolucion(_venta, _productosSeleccionados);
            }

            _quejaElegir.ActualizarEstadoVentas();
            _quejaElegir.Close();
            Close();
        }

        private void gridDetalle_CellBeginEdit(object sender, DataGridViewCellCancelEventArgs e)
        {
            gridDetalle.Tag = gridDetalle.CurrentCell.Value;
        }

        private void gridDetalle_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            var row = (VentaDetalleEe)gridDetalle.Rows[e.RowIndex].DataBoundItem;
            if (gridDetalle.CurrentCell.Value != null && (int)gridDetalle.CurrentCell.Value < 0)
            {
                MetroMessageBox.Show(this, Sesion.ObtenerSesion().Idioma.Textos["please_positive_number"], Sesion.ObtenerSesion().Idioma.Textos["error"], MessageBoxButtons.OK, MessageBoxIcon.Error);
                gridDetalle.CurrentCell.Value = row.Cantidad;
                return;
            }

            if ((int)gridDetalle.CurrentCell.Value > row.Cantidad)
            {
                MetroMessageBox.Show(this, Sesion.ObtenerSesion().Idioma.Textos["please_positive_number_or_less"],
                    Sesion.ObtenerSesion().Idioma.Textos["error"], MessageBoxButtons.OK, MessageBoxIcon.Error);
                gridDetalle.CurrentCell.Value = row.Cantidad;
            }

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

        private void gridDetalle_SelectionChanged(object sender, EventArgs e)
        {
            ActualizarTotal();
        }
    }
}