using System;
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

        public ProductoAgregar(VentaHome homeForm)
        {
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);
            _homeForm = homeForm;
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
                var sucursal = (SucursalEe) selectedRow.DataBoundItem;

                ProductoBll.AsignarEmpleadoConSucursal(Usuario, sucursal);
            }

            ActualizarGrids();
        }

        private void btnDesasignarSucursal_Click(object sender, EventArgs e)
        {
            if (gridProductosAAgregar.SelectedRows.Count == 0) return;

            for (var index = 0; index < gridProductosAAgregar.SelectedRows.Count; index++)
            {
                var selectedRow = gridProductosAAgregar.SelectedRows[index];
                var sucursal = (SucursalEe) selectedRow.DataBoundItem;

                ProductoBll.DesasignarEmpleadoConSucursal(Usuario, sucursal);
            }

            ActualizarGrids();
        }

        private void ActualizarGrids()
        {
            gridProductos.DataSource = ProductoBll.ObtenerPorSucursal();
            gridProductos.Columns["id"].Visible = false;
            gridProductos.Columns["dvh"].Visible = false;
            gridProductos.Columns["activo"].Visible = false;

            gridProductos.Columns["nombre"].DisplayIndex = 0;
            gridProductos.Columns["codigo"].DisplayIndex = 1;
            gridProductos.Columns["fechaCreacion"].DisplayIndex = 2;
            gridProductos.Columns["precio"].DisplayIndex = 3;
            gridProductos.Columns["costo"].DisplayIndex = 4;

            gridProductosAAgregar.DataSource = ProductoBll.ObtenerSucursalesDeUsuario(Usuario);
            gridProductosAAgregar.Columns["id"].Visible = false;
            gridProductosAAgregar.Columns["dvh"].Visible = false;
            gridProductosAAgregar.Columns["activo"].Visible = false;

            gridProductosAAgregar.Columns["nombre"].DisplayIndex = 0;
            gridProductosAAgregar.Columns["codigo"].DisplayIndex = 1;
            gridProductosAAgregar.Columns["fechaCreacion"].DisplayIndex = 2;
            gridProductosAAgregar.Columns["precio"].DisplayIndex = 3;
            gridProductosAAgregar.Columns["costo"].DisplayIndex = 4;
        }

        private void ProductoAgregar_Load(object sender, EventArgs e)
        {
            AllControls = Program.GetAllControls(this);

            ActualizarGrids();

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);
        }

        private void txtBuscar_KeyDown(object sender, System.Windows.Forms.KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter & txtBuscar.Text != null)
            {
                gridProductos.DataSource = ProductoBll.ObtenerPorNombre();
            }
        }
    }
}