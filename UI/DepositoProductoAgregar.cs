using BLL;
using EE;
using Security;
using System;
using System.Globalization;
using System.Linq;
using System.Windows.Forms;
using MetroFramework;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class DepositoProductoAgregar : UpdatableForm
    {
        private readonly DepositoPedidoHome _ventaHome;

        public DepositoProductoAgregar(DepositoPedidoHome homeForm)
        {
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);
            _ventaHome = homeForm;
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            if (_ventaHome.ProductosAAsignar.Count == 0) Close();

            _ventaHome.ProductosAAsignar.Clear();
            ActualizarGrids();
            Close();
        }

        private void btnAgregarProducto_Click(object sender, EventArgs e)
        {
            if (gridProductos.SelectedRows.Count == 0) return;

            for (var index = 0; index < gridProductos.SelectedRows.Count; index++)
            {
                var selectedRow = gridProductos.SelectedRows[index];
                var producto = (ProductoEe)selectedRow.DataBoundItem;
                var productoNuevo = (ProductoEe)producto.Clone();

                if ((int)selectedRow.Cells["cantidad"].Value == 0 || selectedRow.Cells["cantidad"].Value == null)
                {
                    productoNuevo.Cantidad = 1;
                }
                else
                {
                    productoNuevo.Cantidad = (int)selectedRow.Cells["cantidad"].Value;
                }

                productoNuevo.TotalProducto = productoNuevo.Cantidad * productoNuevo.Costo;

                var productoAgregado = _ventaHome.ProductosAAsignar.FirstOrDefault(x => x.Id.Equals(productoNuevo.Id));
                if (productoAgregado != null)
                {
                    productoAgregado.Cantidad += productoNuevo.Cantidad;
                    productoAgregado.TotalProducto = productoAgregado.Cantidad * productoNuevo.Costo;
                }
                else
                {
                    _ventaHome.ProductosAAsignar.Add(productoNuevo);
                }

                gridProductos.Refresh();
                gridProductos.RefreshEdit();
                gridProductosAAgregar.Refresh();
                gridProductosAAgregar.RefreshEdit();
            }
        }

        private void btnbtnRemoverProducto_Click(object sender, EventArgs e)
        {
            if (gridProductosAAgregar.SelectedRows.Count == 0) return;

            for (var index = 0; index < gridProductosAAgregar.SelectedRows.Count; index++)
            {
                var selectedRow = gridProductosAAgregar.SelectedRows[index];
                var producto = (ProductoEe)selectedRow.DataBoundItem;
                var productoNuevo = (ProductoEe)producto.Clone();

                _ventaHome.ProductosAAsignar.Remove(producto);
                ActualizarGrids();
            }
        }

        private void ActualizarGrids()
        {
            gridProductos.DataSource = ProductoBll.ObtenerActivos();
            gridProductos.Columns["id"].Visible = false;
            gridProductos.Columns["codigo"].Visible = false;
            gridProductos.Columns["activo"].Visible = false;
            gridProductos.Columns["fechaCreacion"].Visible = false;
            gridProductos.Columns["precio"].Visible = false;
            gridProductos.Columns["TotalProducto"].Visible = false;

            gridProductos.Columns["nombre"].DisplayIndex = 0;
            gridProductos.Columns["costo"].DisplayIndex = 1;
            gridProductos.Columns["cantidad"].DisplayIndex = 2;

            gridProductos.Columns["nombre"].ReadOnly = true;
            gridProductos.Columns["costo"].ReadOnly = true;
            gridProductos.Columns["cantidad"].ReadOnly = false;

            gridProductosAAgregar.DataSource = _ventaHome.ProductosAAsignar;
            gridProductosAAgregar.Columns["id"].Visible = false;
            gridProductosAAgregar.Columns["activo"].Visible = false;
            gridProductosAAgregar.Columns["codigo"].Visible = false;
            gridProductosAAgregar.Columns["fechaCreacion"].Visible = false;
            gridProductosAAgregar.Columns["precio"].Visible = false;

            gridProductosAAgregar.Columns["nombre"].DisplayIndex = 0;
            gridProductosAAgregar.Columns["costo"].DisplayIndex = 1;
            gridProductosAAgregar.Columns["cantidad"].DisplayIndex = 2;
            gridProductosAAgregar.Columns["TotalProducto"].DisplayIndex = 3;


            gridProductosAAgregar.Columns["TotalProducto"].HeaderText = "Total del Producto";

            var format = (NumberFormatInfo)NumberFormatInfo.CurrentInfo.Clone();
            format.CurrencySymbol = "$";

            gridProductosAAgregar.Columns["TotalProducto"].DefaultCellStyle.FormatProvider = format;
            gridProductosAAgregar.Columns["TotalProducto"].DefaultCellStyle.Format = "c";
            gridProductosAAgregar.Columns["costo"].DefaultCellStyle.FormatProvider = format;
            gridProductosAAgregar.Columns["costo"].DefaultCellStyle.Format = "c";

            gridProductos.Columns["costo"].DefaultCellStyle.FormatProvider = format;
            gridProductos.Columns["costo"].DefaultCellStyle.Format = "c";
        }

        private void ProductoAgregar_Load(object sender, EventArgs e)
        {
            AllControls = Program.GetAllControls(this);

            ActualizarGrids();

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);
        }

        private void txtBuscar_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter & txtBuscar.Text != null)
            {
                gridProductos.DataSource = ProductoBll.ObtenerPorNombre();
            }
        }

        private void btnAsignarProductos_Click(object sender, EventArgs e)
        {
            _ventaHome.ActualizarGrid();
            Close();
        }

        private void gridProductos_DataBindingComplete(object sender, DataGridViewBindingCompleteEventArgs e)
        {
            gridProductos.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.DisplayedCells;
            gridProductos.Columns[1].AutoSizeMode = DataGridViewAutoSizeColumnMode.DisplayedCells;
            gridProductos.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
        }

        private void gridProductos_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            if (gridProductos.CurrentCell.Value == null || (int)gridProductos.CurrentCell.Value > 0) return;

            gridProductos.CurrentCell.Value = 0;
        }

        private void gridProductos_DataError(object sender, DataGridViewDataErrorEventArgs e)
        {
            int value;
            if (int.TryParse(gridProductos.CurrentCell.EditedFormattedValue.ToString(), out value))
            {
                gridProductos.CurrentCell.Value = 0;
            }
            else
            {
                MetroMessageBox.Show(this, "Por favor solo ingrese numeros positivos", "Valor incorrecto");
            }

        }
    }
}