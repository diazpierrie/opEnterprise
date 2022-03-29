using BLL;
using EE;
using MetroFramework;
using System;
using System.Windows.Forms;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class DepositoHome : UpdatableForm
    {
        private readonly Mdi _mdi;

        public DepositoHome(Mdi mdi)
        {
            _mdi = mdi;
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);
        }

        private void BtnCrearDeposito_Click(object sender, EventArgs e)
        {
            var crearDeposito = new DepositoAltaModificacion(this);
            _mdi.OpenWindowForm(crearDeposito);
        }

        private void BtnModificarDeposito_Click(object sender, EventArgs e)
        {
            if (gridDeposito.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedItem = int.Parse(gridDeposito.SelectedRows[0].Cells["id"].Value.ToString());
            var selectedDeposito = DepositoBll.Obtener(selectedItem);
            var provAm = new DepositoAltaModificacion(this, selectedDeposito);
            _mdi.OpenWindowForm(provAm);
        }

        private void BtnBorrarDeposito_Click(object sender, EventArgs e)
        {
            if (gridDeposito.SelectedRows.Count == 0)
            {
                return;
            }

            var depositoEe = (DepositoEe)gridDeposito.SelectedRows[0].DataBoundItem;
            var response = MetroMessageBox.Show(_mdi, Sesion.ObtenerSesion().Idioma.Textos["question_delete"] + " " + Sesion.ObtenerSesion().Idioma.Textos["deposit"].ToLower() + " " + depositoEe.Nombre + "?", Sesion.ObtenerSesion().Idioma.Textos["confirm_delete"], MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
            if (response != DialogResult.Yes) return;

            DepositoBll.Eliminar(depositoEe);
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

        private void GridDeposito_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (gridDeposito.SelectedRows.Count == 0)
            {
                return;
            }

            var selectedItem = int.Parse(gridDeposito.SelectedRows[0].Cells["id"].Value.ToString());
            var selectedDeposito = DepositoBll.Obtener(selectedItem);
            var provAm = new DepositoAltaModificacion(this, selectedDeposito);
            _mdi.OpenWindowForm(provAm);
        }
    }
}