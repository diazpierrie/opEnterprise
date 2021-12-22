using System;
using System.Windows.Forms;
using BLL;
using EE;
using MetroFramework;
using Security;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class EmpleadoHome : UpdatableForm
    {
        public EmpleadoHome()
        {
            InitializeComponent();
            AllControls = Program.GetAllControls(this);
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);
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

            var selectedEmpleado = (UsuarioEe) gridEmpleado.SelectedRows[0].DataBoundItem;
            var response = MetroMessageBox.Show(this, Sesion.ObtenerSesion().Idioma.Textos["question_delete"] + " " + Sesion.ObtenerSesion().Idioma.Textos["employee"].ToLower() + " " + selectedEmpleado.NombreCompleto + "?", Sesion.ObtenerSesion().Idioma.Textos["confirm_delete"], MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
            if (response != DialogResult.Yes) return;

            UsuarioBll.Eliminar(selectedEmpleado);
            ActualizarGrid();

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
            gridEmpleado.Columns["bloqueado"].DisplayIndex = 8;

            gridEmpleado.Columns["nombreUsuario"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["username"];
            gridEmpleado.Columns["nombre"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["name"];
            gridEmpleado.Columns["apellido"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["lastname"];
            gridEmpleado.Columns["dni"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["dni"];
            gridEmpleado.Columns["mail"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["mail"];
            gridEmpleado.Columns["telefono"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["telephone"];
            gridEmpleado.Columns["permiso"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["role"];
            gridEmpleado.Columns["puesto"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["job"];
            gridEmpleado.Columns["bloqueado"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["blocked"];

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

            int selectedItem;
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
                    btnAsignar.Text = $@"{Sesion.ObtenerSesion().Idioma.Textos["assign"]}";
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

        private void ActualizarBtnAsignarText()
        {
            var puesto = (PuestoEe)gridEmpleado.SelectedRows[0].Cells["puesto"].Value;
            switch (puesto.Id)
            {
                case 1:
                    btnAsignar.Text =
                        $@"{Sesion.ObtenerSesion().Idioma.Textos["assign"]} {Sesion.ObtenerSesion().Idioma.Textos["deposit"]}";
                    btnAsignar.Enabled = true;
                    break;
                case 2:
                    btnAsignar.Text = $@"{Sesion.ObtenerSesion().Idioma.Textos["assign"]} {Sesion.ObtenerSesion().Idioma.Textos["branch"]}";
                    btnAsignar.Enabled = true;
                    break;
                default:
                    btnAsignar.Text = $@"{Sesion.ObtenerSesion().Idioma.Textos["assign"]}"; 
                    btnAsignar.Enabled = false;
                    break;
            }
        }
    }

}
