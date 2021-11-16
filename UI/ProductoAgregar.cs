using System;
using System.ComponentModel;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Windows.Forms;
using BLL;
using EE;
using Security;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class ProductoAgregar : UpdatableForm
    {
        public UsuarioEe Usuario;
        private readonly VentaHome _homeForm;
        private readonly DepositoCrearReposicion _depositoForm;
        private BindingList<ProductoEe> _productos = new BindingList<ProductoEe>();
        private readonly BindingList<ProductoEe> _productosAAgregar = new BindingList<ProductoEe>();


        public ProductoAgregar(VentaHome homeForm)
        {
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);
            _homeForm = homeForm;
        }

        public ProductoAgregar(DepositoCrearReposicion depositoForm)
        {
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);
            _depositoForm = depositoForm;
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnAgregarProducto_Click(object sender, EventArgs e)
        {
            if (gridProductos.SelectedRows.Count == 0) return;

            for (var index = 0; index < gridProductos.SelectedRows.Count; index++)
            {
                var selectedRow = gridProductos.SelectedRows[index];
                var producto = ((ProductoEe)selectedRow.DataBoundItem);
                var productoNuevo = (ProductoEe)producto.Clone();

                if (selectedRow.Cells["CantidadAComprar"].Value == null)
                {
                    productoNuevo.Cantidad = 1;
                    productoNuevo.Costo = productoNuevo.Cantidad * (double)selectedRow.Cells["precio"].Value;
                }
                else
                {
                    productoNuevo.Cantidad = (int)selectedRow.Cells["CantidadAComprar"].Value;
                    productoNuevo.Costo = productoNuevo.Cantidad * (double)selectedRow.Cells["precio"].Value;
                }


                if (_productosAAgregar.FirstOrDefault(x => x.Id == productoNuevo.Id) != null)
                {
                    _productosAAgregar.First(x => x.Id == productoNuevo.Id).Cantidad += productoNuevo.Cantidad;
                }
                else
                {
                    _productosAAgregar.Add(productoNuevo);
                }

                selectedRow.Cells["cantidad"].Value = (int)selectedRow.Cells["cantidad"].Value - productoNuevo.Cantidad;

                if ((int)selectedRow.Cells["cantidad"].Value == 0)
                {
                    _productos.RemoveAt(selectedRow.Index);
                }

                gridProductosAAgregar.Refresh();
            }
        }

        private void btnbtnRemoverProducto_Click(object sender, EventArgs e)
        {
            if (gridProductosAAgregar.SelectedRows.Count == 0) return;

            for (var index = 0; index < gridProductosAAgregar.SelectedRows.Count; index++)
            {
                var selectedRow = gridProductosAAgregar.SelectedRows[index];
                var producto = ((ProductoEe)selectedRow.DataBoundItem);
                var productoNuevo = (ProductoEe)producto.Clone();

                productoNuevo.Cantidad = (int)selectedRow.Cells["cantidad"].Value;

                if (_productos.FirstOrDefault(x => x.Id == productoNuevo.Id) != null)
                {
                    _productos.First(x => x.Id == productoNuevo.Id).Cantidad += productoNuevo.Cantidad;
                }
                else
                {
                    _productos.Add(productoNuevo);
                }

                _productosAAgregar.Remove(producto);

                gridProductos.Refresh();
            }
        }

        private void ActualizarGrids()
        {
            _productos = new BindingList<ProductoEe>(ProductoBll.ObtenerPorSucursal(Sesion.ObtenerSesion().Sucursal));
            gridProductos.DataSource = _productos;

            gridProductos.Columns["id"].Visible = false;
            gridProductos.Columns["codigo"].Visible = false;
            gridProductos.Columns["activo"].Visible = false;
            gridProductos.Columns["fechaCreacion"].Visible = false;
            gridProductos.Columns["costo"].Visible = false;

            gridProductos.Columns.Add("CantidadAComprar", "Cant. a comprar");
            gridProductos.Columns["CantidadAComprar"].ValueType = typeof(int);

            gridProductos.Columns["cantidad"].HeaderText = "Stock";

            gridProductos.Columns["nombre"].DisplayIndex = 0;
            gridProductos.Columns["precio"].DisplayIndex = 1;
            gridProductos.Columns["cantidad"].DisplayIndex = 2;
            gridProductos.Columns["CantidadAComprar"].DisplayIndex = 3;

            gridProductos.Columns["nombre"].ReadOnly = true;
            gridProductos.Columns["precio"].ReadOnly = true;
            gridProductos.Columns["CantidadAComprar"].ReadOnly = false;

            gridProductosAAgregar.DataSource = _productosAAgregar;
            gridProductosAAgregar.Columns["id"].Visible = false;
            gridProductosAAgregar.Columns["activo"].Visible = false;
            gridProductosAAgregar.Columns["codigo"].Visible = false;
            gridProductosAAgregar.Columns["fechaCreacion"].Visible = false;

            gridProductosAAgregar.Columns["costo"].HeaderText = "Total Producto";

            gridProductosAAgregar.Columns["nombre"].DisplayIndex = 0;
            gridProductosAAgregar.Columns["precio"].DisplayIndex = 1;
            gridProductosAAgregar.Columns["cantidad"].DisplayIndex = 2;
            gridProductosAAgregar.Columns["costo"].DisplayIndex = 3;
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
            if (_homeForm != null)
            {
                foreach (var producto in _productosAAgregar)
                {
                    producto.Cantidad = 1;
                    _homeForm.Productos.Add(producto);
                }
                _homeForm.ActualizarGrid();
                Close();
            }
            else
            {
                foreach (var producto in _productosAAgregar)
                {
                    producto.Cantidad = 1;
                    _depositoForm.Productos.Add(producto);
                }
                _depositoForm.ActualizarGrid();
                Close();
            }
        }

        private void gridProductos_DataBindingComplete(object sender, DataGridViewBindingCompleteEventArgs e)
        {
            gridProductos.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.DisplayedCells;
            gridProductos.Columns[1].AutoSizeMode = DataGridViewAutoSizeColumnMode.DisplayedCells;
            gridProductos.Columns[2].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
        }

        private void gridProductos_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {

            var row = (ProductoEe)gridProductos.Rows[e.RowIndex].DataBoundItem;

            if (gridProductos.CurrentCell.Value == null) return;

            if ((int)gridProductos.CurrentCell.Value > row.Cantidad ||
                (int)gridProductos.CurrentCell.Value <= 0)
            {
                gridProductos.CurrentCell.Value = 0;
            }
        }

    }
}