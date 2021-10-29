using System;
using BLL;
using EE;
using Security;

namespace UI
{
    public partial class SucursalAsignar : UpdatableForm
    {
        public UsuarioEe Usuario;

        public SucursalAsignar(UsuarioEe usuario)
        {
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);
            Usuario = usuario;
        }

        private void AsignarSucursal_Load(object sender, EventArgs e)
        {
            AllControls = Program.GetAllControls(this);

            ActualizarGrid();

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnAsignarSucursal_Click(object sender, EventArgs e)
        {
            if (gridAsignarSucursal.SelectedRows.Count == 0) return;

            for (var index = 0; index < gridAsignarSucursal.SelectedRows.Count; index++)
            {
                var selectedRow = gridAsignarSucursal.SelectedRows[index];
                var sucursal = (SucursalEe) selectedRow.DataBoundItem;

                SucursalBll.AsignarEmpleadoConSucursal(Usuario, sucursal);
            }

            ActualizarGrid();
        }

        private void btnDesasignarSucursal_Click(object sender, EventArgs e)
        {
            if (gridDesasignarSucursal.SelectedRows.Count == 0) return;

            for (var index = 0; index < gridDesasignarSucursal.SelectedRows.Count; index++)
            {
                var selectedRow = gridDesasignarSucursal.SelectedRows[index];
                var sucursal = (SucursalEe) selectedRow.DataBoundItem;

                SucursalBll.DesasignarEmpleadoConSucursal(Usuario, sucursal);
            }

            ActualizarGrid();
        }

        private void ActualizarGrid()
        {
            gridAsignarSucursal.DataSource = SucursalBll.ObtenerActivos();
            gridAsignarSucursal.Columns["id"].Visible = false;
            gridAsignarSucursal.Columns["activo"].Visible = false;
            gridAsignarSucursal.Columns["nombre"].DisplayIndex = 0;
            gridAsignarSucursal.Columns["direccion"].DisplayIndex = 1;
            gridAsignarSucursal.Columns["mail"].DisplayIndex = 2;
            gridAsignarSucursal.Columns["codigoPostal"].DisplayIndex = 3;
            gridAsignarSucursal.Columns["mail"].DisplayIndex = 4;
            gridAsignarSucursal.Columns["telefono"].DisplayIndex = 5;

            gridDesasignarSucursal.DataSource = SucursalBll.ObtenerSucursalesDeUsuario(Usuario);
            gridDesasignarSucursal.Columns["id"].Visible = false;
            gridDesasignarSucursal.Columns["activo"].Visible = false;
            gridDesasignarSucursal.Columns["nombre"].DisplayIndex = 0;
            gridDesasignarSucursal.Columns["direccion"].DisplayIndex = 1;
            gridDesasignarSucursal.Columns["mail"].DisplayIndex = 2;
            gridDesasignarSucursal.Columns["codigoPostal"].DisplayIndex = 3;
            gridDesasignarSucursal.Columns["mail"].DisplayIndex = 4;
            gridDesasignarSucursal.Columns["telefono"].DisplayIndex = 5;
        }
    }
}