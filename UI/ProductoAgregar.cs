using System;
using System.ComponentModel;
using System.Windows.Forms;
using BLL;
using EE;
using Security;

namespace UI
{
    public partial class ProductoAgregar : UpdatableForm
    {
        public UsuarioEe Usuario;
        private readonly VentaHome _homeForm;
        private readonly DepositoCrearReposicion _depositoForm;
        private BindingList<ProductoEe> _productosAAgregar = new BindingList<ProductoEe>();

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

        private void btnAsignarSucursal_Click(object sender, EventArgs e)
        {
            if (gridProductos.SelectedRows.Count == 0) return;

            for (var index = 0; index < gridProductos.SelectedRows.Count; index++)
            {
                var selectedRow = gridProductos.SelectedRows[index];
                var producto = (ProductoEe) selectedRow.DataBoundItem;

                _productosAAgregar.Add(producto);
            }

        }

        private void btnDesasignarSucursal_Click(object sender, EventArgs e)
        {
            if (gridProductosAAgregar.SelectedRows.Count == 0) return;

            for (var index = 0; index < gridProductosAAgregar.SelectedRows.Count; index++)
            {
                var selectedRow = gridProductosAAgregar.SelectedRows[index];
                var producto = (ProductoEe)selectedRow.DataBoundItem;

                _productosAAgregar.Remove(producto);
            }

        }

        private void ActualizarGrids()
        {
            gridProductos.DataSource = ProductoBll.ObtenerPorSucursal(Sesion.ObtenerSesion().Sucursal);
            gridProductos.Columns["id"].Visible = false;
            gridProductos.Columns["activo"].Visible = false;
            gridProductos.Columns["fechaCreacion"].Visible = false;
            gridProductos.Columns["costo"].Visible = false;
            gridProductos.Columns["cantidad"].Visible = false;

            gridProductos.Columns["nombre"].DisplayIndex = 0;
            gridProductos.Columns["codigo"].DisplayIndex = 1;
            gridProductos.Columns["precio"].DisplayIndex = 2;


            gridProductosAAgregar.DataSource = _productosAAgregar;
            gridProductosAAgregar.Columns["id"].Visible = false;
            gridProductosAAgregar.Columns["activo"].Visible = false;
            gridProductosAAgregar.Columns["fechaCreacion"].Visible = false;
            gridProductosAAgregar.Columns["costo"].Visible = false;
            gridProductosAAgregar.Columns["cantidad"].Visible = false;

            gridProductosAAgregar.Columns["nombre"].DisplayIndex = 0;
            gridProductosAAgregar.Columns["codigo"].DisplayIndex = 1;
            gridProductosAAgregar.Columns["precio"].DisplayIndex = 2;
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
    }
}