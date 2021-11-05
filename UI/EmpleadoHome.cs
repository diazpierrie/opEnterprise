using System;
using System.Windows.Forms;
using BLL;
using EE;

namespace UI
{
    public partial class EmpleadoHome : UpdatableForm
    {
        public EmpleadoHome()
        {
            InitializeComponent();
        }

        private void btnCrearEmpleado_Click(object sender, EventArgs e)
        {
            var crearEmpleado = new EmpleadoAltaModificacion(this);
            crearEmpleado.Show();
        }

        private void btnModificarEmpleado_Click(object sender, EventArgs e)
        {
            if (gridEmpleado.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedItem = int.Parse(gridEmpleado.SelectedRows[0].Cells["id"].Value.ToString());
            var selectedEmpleado = UsuarioBll.Obtener(selectedItem);
            var provAm = new EmpleadoAltaModificacion(this, selectedEmpleado);
            provAm.Show();
        }

        private void btnBorrarEmpleado_Click(object sender, EventArgs e)
        {
            if (gridEmpleado.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedItem = int.Parse(gridEmpleado.SelectedRows[0].Cells["id"].Value.ToString());
            var selectedEmpleado = UsuarioBll.Obtener(selectedItem);
            var provBaja = new EmpleadoBaja(this, selectedEmpleado);
            provBaja.Show();
        }

        private void EmpleadoHome_Load(object sender, EventArgs e)
        {
            ActualizarGrid();

            if (gridEmpleado.SelectedRows.Count == 0)
            {
                return;
            }

            ActualizarBtnAsignarText();
        }

        public void ActualizarGrid()
        {
            gridEmpleado.DataSource = UsuarioBll.ObtenerActivos();
            gridEmpleado.Columns["id"].Visible = false;
            gridEmpleado.Columns["fechaCreacion"].Visible = false;
            gridEmpleado.Columns["activo"].Visible = false;
            gridEmpleado.Columns["mail"].Visible = false;
            gridEmpleado.Columns["NombreCompleto"].Visible = false;

            gridEmpleado.Columns["nombreUsuario"].DisplayIndex = 0;
            gridEmpleado.Columns["nombre"].DisplayIndex = 1;
            gridEmpleado.Columns["apellido"].DisplayIndex = 2;
            gridEmpleado.Columns["dni"].DisplayIndex = 3;
            gridEmpleado.Columns["mail"].DisplayIndex = 4;
            gridEmpleado.Columns["telefono"].DisplayIndex = 5;
            gridEmpleado.Columns["permiso"].DisplayIndex = 6;
            gridEmpleado.Columns["puesto"].DisplayIndex = 7;
            gridEmpleado.Columns["sector"].DisplayIndex = 8;

            ActualizarBtnAsignarText();
        }

        private void gridEmpleado_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (gridEmpleado.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedItem = int.Parse(gridEmpleado.SelectedRows[0].Cells["id"].Value.ToString());
            var selectedEmpleado = UsuarioBll.Obtener(selectedItem);
            var provAm = new EmpleadoAltaModificacion(this, selectedEmpleado);
            provAm.Show();
        }

        private void btnAsignar_Click(object sender, EventArgs e)
        {
            if (gridEmpleado.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedItem = 0;
            UsuarioEe selectedEmpleado;

            var puesto = (PuestoEe)gridEmpleado.SelectedRows[0].Cells["puesto"].Value;
            switch (puesto.Id)
            {
                case 1:
                     selectedItem = int.Parse(gridEmpleado.SelectedRows[0].Cells["id"].Value.ToString());
                     selectedEmpleado = UsuarioBll.Obtener(selectedItem);
                    var depoAssign = new DepositoAsignar(selectedEmpleado);
                     depoAssign.Show();
                    break;
                case 2:
                    selectedItem = int.Parse(gridEmpleado.SelectedRows[0].Cells["id"].Value.ToString());
                    selectedEmpleado = UsuarioBll.Obtener(selectedItem);
                    var sucuAssign = new SucursalAsignar(selectedEmpleado);
                    sucuAssign.Show();
                    break;
                default:
                    btnAsignar.Text = "Asignar";
                    btnAsignar.Enabled = false;
                    break;
            }
        }

        private void gridEmpleado_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (gridEmpleado.SelectedRows.Count == 0)
            {
                return;
            }

            ActualizarBtnAsignarText();
        }

        public void ActualizarBtnAsignarText()
        {
            var puesto = (PuestoEe)gridEmpleado.SelectedRows[0].Cells["puesto"].Value;
            switch (puesto.Id)
            {
                case 1:
                    btnAsignar.Text = "Asignar Deposito";
                    btnAsignar.Enabled = true;
                    break;
                case 2:
                    btnAsignar.Text = "Asignar Sucursal";
                    btnAsignar.Enabled = true;
                    break;
                default:
                    btnAsignar.Text = "Asignar";
                    btnAsignar.Enabled = false;
                    break;
            }
        }
    }

}
