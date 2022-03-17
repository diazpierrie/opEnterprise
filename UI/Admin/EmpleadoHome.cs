using BLL;
using EE;
using MetroFramework;
using Security;
using System;
using System.Windows.Forms;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class EmpleadoHome : UpdatableForm
    {
        private readonly Mdi _mdi;

        public EmpleadoHome(Mdi mdi)
        {
            _mdi = mdi;
            InitializeComponent();
            AllControls = Program.GetAllControls(this);
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);
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
            gridEmpleado.Columns["rol"].DisplayIndex = 6;
            gridEmpleado.Columns["bloqueado"].DisplayIndex = 7;

            gridEmpleado.Columns["nombreUsuario"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["username"];
            gridEmpleado.Columns["nombre"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["name"];
            gridEmpleado.Columns["apellido"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["lastname"];
            gridEmpleado.Columns["dni"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["dni"];
            gridEmpleado.Columns["mail"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["mail"];
            gridEmpleado.Columns["telefono"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["telephone"];
            gridEmpleado.Columns["rol"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["role"];
            gridEmpleado.Columns["bloqueado"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["blocked"];

            ActualizarBtnAsignarText();
        }

        private void ActualizarBtnAsignarText()
        {
            var familia = (FamiliaEe)gridEmpleado.SelectedRows[0].Cells["rol"].Value;
            switch (familia.Id)
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

        private void btnAsignar_Click(object sender, EventArgs e)
        {
            if (gridEmpleado.SelectedRows.Count == 0)
            {
                return;
            }

            int selectedItem;
            UsuarioEe selectedEmpleado;

            var familia = (FamiliaEe)gridEmpleado.SelectedRows[0].Cells["rol"].Value;
            switch (familia.Id)
            {
                case 1:
                    selectedItem = int.Parse(gridEmpleado.SelectedRows[0].Cells["id"].Value.ToString());
                    selectedEmpleado = UsuarioBll.Obtener(selectedItem);
                    var depoAssign = new DepositoAsignar(selectedEmpleado);
                    _mdi.OpenWindowForm(depoAssign);
                    break;

                case 2:
                    selectedItem = int.Parse(gridEmpleado.SelectedRows[0].Cells["id"].Value.ToString());
                    selectedEmpleado = UsuarioBll.Obtener(selectedItem);
                    var sucuAssign = new SucursalAsignar(selectedEmpleado);
                    _mdi.OpenWindowForm(sucuAssign);
                    break;

                default:
                    btnAsignar.Text = $@"{Sesion.ObtenerSesion().Idioma.Textos["assign"]}";
                    btnAsignar.Enabled = false;
                    break;
            }
        }

        private void btnBorrarEmpleado_Click(object sender, EventArgs e)
        {
            if (gridEmpleado.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedEmpleado = (UsuarioEe)gridEmpleado.SelectedRows[0].DataBoundItem;
            var response = MetroMessageBox.Show(_mdi, Sesion.ObtenerSesion().Idioma.Textos["question_delete"] + " " + Sesion.ObtenerSesion().Idioma.Textos["employee"].ToLower() + " " + selectedEmpleado.NombreCompleto + "?", Sesion.ObtenerSesion().Idioma.Textos["confirm_delete"], MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
            if (response != DialogResult.Yes) return;

            UsuarioBll.Eliminar(selectedEmpleado);
            ActualizarGrid();
        }

        private void btnCrearEmpleado_Click(object sender, EventArgs e)
        {
            var crearEmpleado = new EmpleadoAltaModificacion(this);
            _mdi.OpenWindowForm(crearEmpleado);
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
            _mdi.OpenWindowForm(provAm);
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
        private void gridEmpleado_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (gridEmpleado.SelectedRows.Count == 0)
            {
                return;
            }

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
            _mdi.OpenWindowForm(provAm);
        }
    }
}