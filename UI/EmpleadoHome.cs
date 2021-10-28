using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BLL;

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

        }

        private void EmpleadoHome_Load(object sender, EventArgs e)
        {
            ActualizarGrid();
        }

        public void ActualizarGrid()
        {
            gridEmpleado.DataSource = UsuarioBll.ObtenerActivos();
            gridEmpleado.Columns["id"].Visible = false;
            gridEmpleado.Columns["fechaCreacion"].Visible = false;
            gridEmpleado.Columns["activo"].Visible = false;
            gridEmpleado.Columns["Email"].Visible = false;
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
    }

}
