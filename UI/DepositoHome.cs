using System;
using System.Windows.Forms;
using BLL;
// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class DepositoHome : UpdatableForm
    {
        public DepositoHome()
        {
            InitializeComponent();
        }

        private void btnCrearDeposito_Click(object sender, EventArgs e)
        {
            var crearDeposito = new DepositoAltaModificacion(this);
            crearDeposito.Show();
        }

        private void btnModificarDeposito_Click(object sender, EventArgs e)
        {
            if (gridDeposito.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedItem = int.Parse(gridDeposito.SelectedRows[0].Cells["id"].Value.ToString());
            var selectedDeposito = DepositoBll.Obtener(selectedItem);
            var provAm = new DepositoAltaModificacion(this, selectedDeposito);
            provAm.Show();
        }

        private void btnBorrarDeposito_Click(object sender, EventArgs e)
        {
            if (gridDeposito.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedItem = int.Parse(gridDeposito.SelectedRows[0].Cells["id"].Value.ToString());
            var selectedDeposito = DepositoBll.Obtener(selectedItem);
            var provBaja = new DepositoBaja(this, selectedDeposito);
            provBaja.Show();
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
            var selectedDeposito = DepositoBll.Obtener(selectedItem);
            var provAm = new DepositoAltaModificacion(this, selectedDeposito);
            provAm.Show();
        }

    }

}
