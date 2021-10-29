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
using EE;

namespace UI
{
    public partial class VentaHome : UpdatableForm
    {
        public List<ProductoEe> Productos;
        public double Total;
        public VentaHome()
        {
            InitializeComponent();
        }

        private void btnCrearVenta_Click(object sender, EventArgs e)
        {
            var agregarProducto = new ProductoAgregar(this);
            agregarProducto.Show();
        }

        private void btnModificarVenta_Click(object sender, EventArgs e)
        {
            //if (gridVenta.SelectedRows.Count == 0)
            //{
            //    return;
            //}

            //var selectedItem = int.Parse(gridVenta.SelectedRows[0].Cells["id"].Value.ToString());
            //var selectedVenta = UsuarioBll.Obtener(selectedItem);
            //var provAm = new VentaAltaModificacion(this, selectedVenta);
            //provAm.Show();
        }

        private void btnBorrarVenta_Click(object sender, EventArgs e)
        {
            if (gridVenta.SelectedRows.Count == 0)
            {
                return;
            }

            //var selectedItem = int.Parse(gridVenta.SelectedRows[0].Cells["id"].Value.ToString());
            //var selectedVenta = UsuarioBll.Obtener(selectedItem);
            //var provBaja = new VentaBaja(this, selectedVenta);
            //provBaja.Show();
        }

        private void VentaHome_Load(object sender, EventArgs e)
        {
            ActualizarGrid();

            if (gridVenta.SelectedRows.Count == 0)
            {
                return;
            }
        }

        public void ActualizarGrid()
        {
            gridVenta.DataSource = Productos;
            gridVenta.Columns["id"].Visible = false;
            gridVenta.Columns["fechaCreacion"].Visible = false;
            gridVenta.Columns["dvh"].Visible = false;
            gridVenta.Columns["activo"].Visible = false;
            gridVenta.Columns["Costo"].Visible = false;

            gridVenta.Columns["nombre"].DisplayIndex = 0;
            gridVenta.Columns["codigo"].DisplayIndex = 1;
            gridVenta.Columns["precio"].DisplayIndex = 2;
        }

        private void gridVenta_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (gridVenta.SelectedRows.Count == 0)
            {
                return;
            }

            //var selectedItem = int.Parse(gridVenta.SelectedRows[0].Cells["id"].Value.ToString());
            //var selectedVenta = UsuarioBll.Obtener(selectedItem);
            //var provAm = new VentaAltaModificacion(this, selectedVenta);
            //provAm.Show();
        }

        private void btnAsignar_Click(object sender, EventArgs e)
        {
            if (gridVenta.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedItem = 0;
            UsuarioEe selectedVenta;

            var puesto = (PuestoEe)gridVenta.SelectedRows[0].Cells["puesto"].Value;
            switch (puesto.Id)
            {
                case 1:
                     selectedItem = int.Parse(gridVenta.SelectedRows[0].Cells["id"].Value.ToString());
                     selectedVenta = UsuarioBll.Obtener(selectedItem);
                    var depoAssign = new DepositoAsignar(selectedVenta);
                     depoAssign.Show();
                    break;
                case 2:
                    selectedItem = int.Parse(gridVenta.SelectedRows[0].Cells["id"].Value.ToString());
                    selectedVenta = UsuarioBll.Obtener(selectedItem);
                    var sucuAssign = new SucursalAsignar(selectedVenta);
                    sucuAssign.Show();
                    break;
                default:
                    btnAsignar.Text = "Asignar";
                    btnAsignar.Enabled = false;
                    break;
            }
        }

    }

}
