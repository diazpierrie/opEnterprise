using System;
using System.Windows.Forms;
using BLL;

// ReSharper disable PossibleNullReferenceException

namespace UI.Sucursal
{
    public partial class SucursalHome : UpdatableForm
    {
        public SucursalHome()
        {
            InitializeComponent();
        }

        private void btnCrearDeposito_Click(object sender, EventArgs e)
        {
            var sucursalAltaModificacion = new SucursalAltaModificacion(this);
            sucursalAltaModificacion.Show();
        }

        private void btnModificarDeposito_Click(object sender, EventArgs e)
        {
            if (gridDeposito.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedItem = int.Parse(gridDeposito.SelectedRows[0].Cells["id"].Value.ToString());
            var sucursal = SucursalBll.Obtener(selectedItem);
            var provAm = new SucursalAltaModificacion(this, sucursal);
            provAm.Show();
        }

        private void btnBorrarDeposito_Click(object sender, EventArgs e)
        {
            if (gridDeposito.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedItem = int.Parse(gridDeposito.SelectedRows[0].Cells["id"].Value.ToString());
            var sucursal = SucursalBll.Obtener(selectedItem);
            SucursalBll.Eliminar(sucursal);
            ActualizarGrid();
        }

        private void DepositoHome_Load(object sender, EventArgs e)
        {
            ActualizarGrid();
        }

        public void ActualizarGrid()
        {
            gridDeposito.DataSource = DepositoBll.ObtenerActivos();
            gridDeposito.Columns["id"].Visible = false;

            gridDeposito.Columns["nombre"].DisplayIndex = 0;
            gridDeposito.Columns["direccion"].DisplayIndex = 1;
            gridDeposito.Columns["mail"].DisplayIndex = 2;
            gridDeposito.Columns["codigoPostal"].DisplayIndex = 3;
            gridDeposito.Columns["telefono"].DisplayIndex = 4;
        }

        private void gridDeposito_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (gridDeposito.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedItem = int.Parse(gridDeposito.SelectedRows[0].Cells["id"].Value.ToString());
            var sucursal = SucursalBll.Obtener(selectedItem);
            var provAm = new SucursalAltaModificacion(this, sucursal);
            provAm.Show();
        }

    }

}
