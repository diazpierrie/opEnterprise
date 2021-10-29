using System;
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
            gridProductos.DataSource = ProductoBll.ObtenerActivos();
            gridProductos.Columns["id"].Visible = false;
            gridProductos.Columns["activo"].Visible = false;
            gridProductos.Columns["nombre"].DisplayIndex = 0;
            gridProductos.Columns["direccion"].DisplayIndex = 1;
            gridProductos.Columns["mail"].DisplayIndex = 2;
            gridProductos.Columns["codigoPostal"].DisplayIndex = 3;
            gridProductos.Columns["mail"].DisplayIndex = 4;
            gridProductos.Columns["telefono"].DisplayIndex = 5;

            gridProductosAAgregar.DataSource = ProductoBll.ObtenerSucursalesDeUsuario(Usuario);
            gridProductosAAgregar.Columns["id"].Visible = false;
            gridProductosAAgregar.Columns["activo"].Visible = false;
            gridProductosAAgregar.Columns["nombre"].DisplayIndex = 0;
            gridProductosAAgregar.Columns["direccion"].DisplayIndex = 1;
            gridProductosAAgregar.Columns["mail"].DisplayIndex = 2;
            gridProductosAAgregar.Columns["codigoPostal"].DisplayIndex = 3;
            gridProductosAAgregar.Columns["mail"].DisplayIndex = 4;
            gridProductosAAgregar.Columns["telefono"].DisplayIndex = 5;
        }

        private void ProductoAgregar_Load(object sender, EventArgs e)
        {
            AllControls = Program.GetAllControls(this);

            ActualizarGrids();

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);
        }
    }
}