using System;
using BLL;
using EE;
using Security;

namespace UI
{
    public partial class DepositoAsignar : UpdatableForm
    {
        public UsuarioEe Usuario;

        public DepositoAsignar(UsuarioEe usuario)
        {
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);
            Usuario = usuario;
        }

        private void AsignarDeposito_Load(object sender, EventArgs e)
        {
            AllControls = Program.GetAllControls(this);

            ActualizarGrid();

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnAsignarDeposito_Click(object sender, EventArgs e)
        {
            if (gridAsignarDeposito.SelectedRows.Count == 0) return;

            for (var index = 0; index < gridAsignarDeposito.SelectedRows.Count; index++)
            {
                var selectedRow = gridAsignarDeposito.SelectedRows[index];
                var deposito = (DepositoEe) selectedRow.DataBoundItem;

                DepositoBll.AsignarEmpleadoConDeposito(Usuario, deposito);
            }

            ActualizarGrid();
        }

        private void btnDesasignarDeposito_Click(object sender, EventArgs e)
        {
            if (gridDesasignarDeposito.SelectedRows.Count == 0) return;

            for (var index = 0; index < gridDesasignarDeposito.SelectedRows.Count; index++)
            {
                var selectedRow = gridDesasignarDeposito.SelectedRows[index];
                var deposito = (DepositoEe) selectedRow.DataBoundItem;

                DepositoBll.DesasignarEmpleadoConDeposito(Usuario, deposito);
            }

            ActualizarGrid();
        }

        private void ActualizarGrid()
        {
            gridAsignarDeposito.DataSource = DepositoBll.ObtenerActivos();
            gridAsignarDeposito.Columns["id"].Visible = false;
            gridAsignarDeposito.Columns["activo"].Visible = false;
            gridAsignarDeposito.Columns["nombre"].DisplayIndex = 0;
            gridAsignarDeposito.Columns["direccion"].DisplayIndex = 1;
            gridAsignarDeposito.Columns["mail"].DisplayIndex = 2;
            gridAsignarDeposito.Columns["codigoPostal"].DisplayIndex = 3;
            gridAsignarDeposito.Columns["mail"].DisplayIndex = 4;
            gridAsignarDeposito.Columns["telefono"].DisplayIndex = 5;

            gridDesasignarDeposito.DataSource = DepositoBll.ObtenerDepositosDeUsuario(Usuario);
            gridDesasignarDeposito.Columns["id"].Visible = false;
            gridDesasignarDeposito.Columns["activo"].Visible = false;
            gridDesasignarDeposito.Columns["nombre"].DisplayIndex = 0;
            gridDesasignarDeposito.Columns["direccion"].DisplayIndex = 1;
            gridDesasignarDeposito.Columns["mail"].DisplayIndex = 2;
            gridDesasignarDeposito.Columns["codigoPostal"].DisplayIndex = 3;
            gridDesasignarDeposito.Columns["mail"].DisplayIndex = 4;
            gridDesasignarDeposito.Columns["telefono"].DisplayIndex = 5;
        }
    }
}