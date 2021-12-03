using BLL;
using EE;
using Security;
using System;
using System.Linq;
using System.Windows.Forms;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class RetiroLocalAgregar : UpdatableForm
    {
        private readonly CompletarVenta _completarVenta;

        public RetiroLocalAgregar(CompletarVenta completarVenta)
        {
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);
            _completarVenta = completarVenta;
        }

        private void ActualizarGrids()
        {
            gridProductosAComprar.DataSource = _completarVenta.Ventahome.ProductosAAsignar.Where(x => Equals(x.Edificio, Sesion.ObtenerSesion().Sucursal)).ToList();

            gridProductosAComprar.Columns["id"].Visible = false;
            gridProductosAComprar.Columns["codigo"].Visible = false;
            gridProductosAComprar.Columns["activo"].Visible = false;
            gridProductosAComprar.Columns["fechaCreacion"].Visible = false;
            gridProductosAComprar.Columns["costo"].Visible = false;
            gridProductosAComprar.Columns["TotalProducto"].Visible = false;
            gridProductosAComprar.Columns["precio"].Visible = false;
            gridProductosAComprar.Columns["Edificio"].Visible = false;
            gridProductosAComprar.Columns["cantidad"].Visible = false;

            gridProductosAComprar.Columns["nombre"].DisplayIndex = 0;
            gridProductosAComprar.Columns["CantidadAComprar"].DisplayIndex = 1;
            gridProductosAComprar.Columns["CantidadARetirar"].DisplayIndex = 2;

            gridProductosAComprar.Columns["nombre"].ReadOnly = true;
            gridProductosAComprar.Columns["CantidadAComprar"].ReadOnly = true;
            gridProductosAComprar.Columns["CantidadARetirar"].ReadOnly = false;

            gridProductosRetiro.DataSource = _completarVenta.ProductosRetiroLocal;
            gridProductosRetiro.Columns["id"].Visible = false;
            gridProductosRetiro.Columns["activo"].Visible = false;
            gridProductosRetiro.Columns["codigo"].Visible = false;
            gridProductosRetiro.Columns["fechaCreacion"].Visible = false;
            gridProductosRetiro.Columns["cantidad"].Visible = false;
            gridProductosRetiro.Columns["costo"].Visible = false;
            gridProductosRetiro.Columns["TotalProducto"].Visible = false;
            gridProductosRetiro.Columns["precio"].Visible = false;
            gridProductosRetiro.Columns["Edificio"].Visible = false;
            gridProductosRetiro.Columns["CantidadAComprar"].Visible = false;

            gridProductosRetiro.Columns["nombre"].DisplayIndex = 0;
            gridProductosRetiro.Columns["CantidadARetirar"].DisplayIndex = 1;

            gridProductosAComprar.Refresh();
            gridProductosAComprar.RefreshEdit();
            gridProductosRetiro.Refresh();
            gridProductosRetiro.RefreshEdit();
        }

        private void btnAgregarProducto_Click(object sender, EventArgs e)
        {
            if (gridProductosAComprar.SelectedRows.Count == 0) return;

            for (var index = 0; index < gridProductosAComprar.SelectedRows.Count; index++)
            {
                var selectedRow = gridProductosAComprar.SelectedRows[index];
                var productoRow = (ProductoEdificioEe)selectedRow.DataBoundItem;
                var productoNuevo = (ProductoEdificioEe)productoRow.Clone();

                if ((int)selectedRow.Cells["CantidadARetirar"].Value == 0 || selectedRow.Cells["CantidadARetirar"].Value == null)
                {
                    productoNuevo.CantidadARetirar = 1;
                }
                else
                {
                    productoNuevo.CantidadARetirar = (int)selectedRow.Cells["CantidadARetirar"].Value;
                }

                var productoAgregado = _completarVenta.ProductosRetiroLocal.FirstOrDefault(x => x.Id.Equals(productoNuevo.Id));
                if (productoAgregado != null)
                {
                    productoAgregado.CantidadARetirar += productoNuevo.CantidadARetirar;
                }
                else
                {
                    _completarVenta.ProductosRetiroLocal.Add(productoNuevo);
                }

                productoRow.CantidadAComprar -= productoNuevo.CantidadARetirar;

                gridProductosAComprar.Refresh();
                gridProductosAComprar.RefreshEdit();
                gridProductosRetiro.Refresh();
                gridProductosRetiro.RefreshEdit();

                if (productoRow.CantidadAComprar != 0) continue;
                _completarVenta.Ventahome.ProductosAAsignar.Remove((ProductoEdificioEe)selectedRow.DataBoundItem);
                ActualizarGrids();
            }
        }

        private void btnAsignarProductos_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnbtnRemoverProducto_Click(object sender, EventArgs e)
        {
            if (gridProductosRetiro.SelectedRows.Count == 0) return;

            for (var index = 0; index < gridProductosRetiro.SelectedRows.Count; index++)
            {
                var selectedRow = gridProductosRetiro.SelectedRows[index];
                var producto = (ProductoEdificioEe)selectedRow.DataBoundItem;
                var productoNuevo = (ProductoEdificioEe)producto.Clone();

                productoNuevo.CantidadAComprar = producto.CantidadARetirar;
                productoNuevo.CantidadARetirar = 0;

                if (_completarVenta.Ventahome.ProductosAAsignar.FirstOrDefault(x => x.Id.Equals(productoNuevo.Id) && Equals(x.Edificio, productoNuevo.Edificio)) != null)
                {
                    _completarVenta.Ventahome.ProductosAAsignar.FirstOrDefault(x => x.Id.Equals(productoNuevo.Id) && Equals(x.Edificio, productoNuevo.Edificio)).CantidadAComprar += productoNuevo.CantidadAComprar;
                }
                else
                {
                    _completarVenta.Ventahome.ProductosAAsignar.Add(productoNuevo);
                }
                _completarVenta.ProductosRetiroLocal.Remove(producto);
                ActualizarGrids();
            }
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            foreach (var producto in _completarVenta.Ventahome.ProductosAAsignar)
            {
                var productoNuevo = (ProductoEdificioEe)producto.Clone();

                productoNuevo.CantidadAComprar = producto.CantidadARetirar;
                productoNuevo.CantidadAComprar = 0;

                if (_completarVenta.Ventahome.ProductosAAsignar.FirstOrDefault(x => x.Id == productoNuevo.Id) != null)
                {
                    _completarVenta.Ventahome.ProductosAAsignar.FirstOrDefault(x => x.Id == productoNuevo.Id).Cantidad += productoNuevo.Cantidad;
                }
                else
                {
                    _completarVenta.Ventahome.ProductosAAsignar.Add(productoNuevo);
                }
            }
            _completarVenta.ProductosRetiroLocal.Clear();
            ActualizarGrids();
            Close();
        }

        private void gridProductos_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            var row = (ProductoEdificioEe)gridProductosAComprar.Rows[e.RowIndex].DataBoundItem;

            if (gridProductosAComprar.CurrentCell.Value == null) return;

            if ((int)gridProductosAComprar.CurrentCell.Value > row.CantidadAComprar ||
                (int)gridProductosAComprar.CurrentCell.Value <= 0)
            {
                gridProductosAComprar.CurrentCell.Value = 0;
            }
        }

        private void gridProductos_DataBindingComplete(object sender, DataGridViewBindingCompleteEventArgs e)
        {
            gridProductosAComprar.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.DisplayedCells;
            gridProductosAComprar.Columns[1].AutoSizeMode = DataGridViewAutoSizeColumnMode.DisplayedCells;
            gridProductosAComprar.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
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
                gridProductosAComprar.DataSource = ProductoBll.ObtenerPorNombre();
            }
        }
    }
}