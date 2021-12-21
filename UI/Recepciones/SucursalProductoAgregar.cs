using BLL;
using EE;
using MetroFramework;
using Security;
using System;
using System.Globalization;
using System.Linq;
using System.Windows.Forms;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class SucursalProductoAgregar : UpdatableForm
    {
        private readonly SucursalPedidoHome _sucursalPedidoHome;

        public SucursalProductoAgregar(SucursalPedidoHome homeForm)
        {
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);
            _sucursalPedidoHome = homeForm;
            cbDepositos.DataSource = DepositoBll.ObtenerActivos();
        }

        private void ActualizarGrids()
        {
            var depositosSelectedItem = (DepositoEe) cbDepositos.SelectedItem;
            gridProductos.DataSource = _sucursalPedidoHome.ProductosDeposito.Where(x => x.Edificio.Id == depositosSelectedItem.Id).ToList();

            gridProductos.Columns["id"].Visible = false;
            gridProductos.Columns["codigo"].Visible = false;
            gridProductos.Columns["activo"].Visible = false;
            gridProductos.Columns["fechaCreacion"].Visible = false;
            gridProductos.Columns["precio"].Visible = false;
            gridProductos.Columns["TotalProducto"].Visible = false;

            gridProductos.Columns["nombre"].DisplayIndex = 0;
            gridProductos.Columns["edificio"].DisplayIndex = 1;
            gridProductos.Columns["cantidad"].DisplayIndex = 2;
            gridProductos.Columns["costo"].DisplayIndex = 3;
            gridProductos.Columns["CantidadAComprar"].DisplayIndex = 4;

            gridProductos.Columns["nombre"].ReadOnly = true;
            gridProductos.Columns["costo"].ReadOnly = true;
            gridProductos.Columns["cantidad"].ReadOnly = false;

            gridProductosAAgregar.DataSource = _sucursalPedidoHome.ProductosAAsignar;
            gridProductosAAgregar.Columns["id"].Visible = false;
            gridProductosAAgregar.Columns["activo"].Visible = false;
            gridProductosAAgregar.Columns["codigo"].Visible = false;
            gridProductosAAgregar.Columns["fechaCreacion"].Visible = false;
            gridProductosAAgregar.Columns["precio"].Visible = false;
            gridProductosAAgregar.Columns["CantidadAComprar"].Visible = false;
            gridProductosAAgregar.Columns["CantidadARetirar"].Visible = false;

            gridProductosAAgregar.Columns["nombre"].DisplayIndex = 0;
            gridProductosAAgregar.Columns["edificio"].DisplayIndex = 1;
            gridProductosAAgregar.Columns["costo"].DisplayIndex = 2;
            gridProductosAAgregar.Columns["cantidad"].DisplayIndex = 3;
            gridProductosAAgregar.Columns["TotalProducto"].DisplayIndex = 4;

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

        private void btnAgregarProducto_Click(object sender, EventArgs e)
        {
            if (gridProductos.SelectedRows.Count == 0) return;

            for (var index = 0; index < gridProductos.SelectedRows.Count; index++)
            {
                var selectedRow = gridProductos.SelectedRows[index];
                var producto = (ProductoEdificioEe)selectedRow.DataBoundItem;
                var productoNuevo = (ProductoEdificioEe)producto.Clone();

                if ((int)selectedRow.Cells["CantidadAComprar"].Value == 0 || selectedRow.Cells["CantidadAComprar"].Value == null)
                {
                    productoNuevo.Cantidad = 1;
                }
                else
                {
                    productoNuevo.Cantidad = (int)selectedRow.Cells["CantidadAComprar"].Value;
                }

                productoNuevo.TotalProducto = productoNuevo.Cantidad * productoNuevo.Costo;

                var productoExistente = _sucursalPedidoHome.ProductosAAsignar.FirstOrDefault(x => x.Id.Equals(productoNuevo.Id) && Equals(x.Edificio, productoNuevo.Edificio));
                if (productoExistente != null)
                {
                    productoExistente.Cantidad += productoNuevo.Cantidad;
                    productoExistente.TotalProducto = productoExistente.Cantidad * productoNuevo.Costo;
                }
                else
                {
                    _sucursalPedidoHome.ProductosAAsignar.Add(productoNuevo);
                }

                producto.Cantidad -= productoNuevo.Cantidad;
                if (producto.Cantidad == 0)
                {
                    _sucursalPedidoHome.ProductosDeposito.Remove((ProductoEdificioEe)selectedRow.DataBoundItem);

                    ActualizarGrids();
                }

                gridProductos.Refresh();
                gridProductos.RefreshEdit();
                gridProductosAAgregar.Refresh();
                gridProductosAAgregar.RefreshEdit();
            }
        }

        private void btnAsignarProductos_Click(object sender, EventArgs e)
        {
            _sucursalPedidoHome.ActualizarGrid();
            Close();
        }

        private void btnbtnRemoverProducto_Click(object sender, EventArgs e)
        {
            if (gridProductosAAgregar.SelectedRows.Count == 0) return;

            for (var index = 0; index < gridProductosAAgregar.SelectedRows.Count; index++)
            {
                var selectedRow = gridProductosAAgregar.SelectedRows[index];
                var producto = (ProductoEdificioEe)selectedRow.DataBoundItem;
                var productoNuevo = (ProductoEdificioEe)producto.Clone();

                productoNuevo.Cantidad = producto.CantidadAComprar;
                productoNuevo.CantidadAComprar = 0;

                if (_sucursalPedidoHome.ProductosDeposito.FirstOrDefault(x => x.Id == productoNuevo.Id) != null)
                {
                    _sucursalPedidoHome.ProductosDeposito.FirstOrDefault(x => x.Id == productoNuevo.Id).Cantidad += productoNuevo.Cantidad;
                }
                else
                {
                    _sucursalPedidoHome.ProductosDeposito.Add(productoNuevo);
                }

                _sucursalPedidoHome.ProductosAAsignar.Remove(producto);
                ActualizarGrids();
            }
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            if (_sucursalPedidoHome.ProductosAAsignar.Count == 0) Close();

            foreach (var producto in _sucursalPedidoHome.ProductosAAsignar)
            {
                var productoNuevo = (ProductoEdificioEe)producto.Clone();

                productoNuevo.Cantidad = producto.CantidadAComprar;
                productoNuevo.CantidadAComprar = 0;

                if (_sucursalPedidoHome.ProductosDeposito.FirstOrDefault(x => x.Id == productoNuevo.Id) != null)
                {
                    _sucursalPedidoHome.ProductosDeposito.FirstOrDefault(x => x.Id == productoNuevo.Id).Cantidad += productoNuevo.Cantidad;
                }
                else
                {
                    _sucursalPedidoHome.ProductosDeposito.Add(productoNuevo);
                }
            }

            _sucursalPedidoHome.ProductosAAsignar.Clear();
            ActualizarGrids();
            Close();
        }

        private void gridProductos_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            if (gridProductos.CurrentCell.Value == null || (int)gridProductos.CurrentCell.Value > 0) return;

            gridProductos.CurrentCell.Value = 0;
        }

        private void gridProductos_DataBindingComplete(object sender, DataGridViewBindingCompleteEventArgs e)
        {
            gridProductos.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.DisplayedCells;
            gridProductos.Columns[1].AutoSizeMode = DataGridViewAutoSizeColumnMode.DisplayedCells;
            gridProductos.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
        }

        private void gridProductos_DataError(object sender, DataGridViewDataErrorEventArgs e)
        {
            if (int.TryParse(gridProductos.CurrentCell.EditedFormattedValue.ToString(), out _))
            {
                gridProductos.CurrentCell.Value = 0;
            }
            else
            {
                MetroMessageBox.Show(this, "Por favor solo ingrese numeros positivos", "Valor incorrecto");
            }
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

        private void cbDepositos_SelectedIndexChanged(object sender, EventArgs e)
        {
            ActualizarGrids();
        }

        //private void gridDetalle_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        //{
        //    var row = (PedidoProveedorDetalleEe)gridDetalle.Rows[e.RowIndex].DataBoundItem;
        //    if (gridDetalle.CurrentCell.Value != null && (int)gridDetalle.CurrentCell.Value <= 0)
        //    {
        //        MetroMessageBox.Show(this, "Por favor, ingrese un numero positivo", "Valor incorrecto", MessageBoxButtons.OK, MessageBoxIcon.Error);
        //        gridDetalle.CurrentCell.Value = row.Cantidad;
        //        return;
        //    }

        //    if ((int)gridDetalle.CurrentCell.Value >= row.Cantidad)
        //    {
        //        MetroMessageBox.Show(this, "Ingrese un valor positivo igual o menor a la cantidad a entrar",
        //            "Cantidad excedida", MessageBoxButtons.OK, MessageBoxIcon.Error);
        //        gridDetalle.CurrentCell.Value = row.Cantidad;
        //    }
        //}

        //private void gridDetalle_DataError(object sender, DataGridViewDataErrorEventArgs e)
        //{
        //    if (int.TryParse(gridDetalle.CurrentCell.EditedFormattedValue.ToString(), out _))
        //    {

        //        gridDetalle.CurrentCell.Value = gridDetalle.Tag;
        //    }
        //    else
        //    {
        //        MetroMessageBox.Show(this, "Por favor, ingrese un numero positivo", "Valor incorrecto", MessageBoxButtons.OK, MessageBoxIcon.Error);
        //    }
        //}
    }
}