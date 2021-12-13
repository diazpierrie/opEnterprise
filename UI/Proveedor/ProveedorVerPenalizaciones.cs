using System;
using System.Windows.Forms;
using BLL;
using EE;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class ProveedorVerPenalizaciones : UpdatableForm
    {

        public ProveedorVerPenalizaciones(ProveedorEe selectedProveedor)
        {
            InitializeComponent();
            gridDetalle.DataSource = ProveedorBll.ObtenerPenalizaciones(selectedProveedor);

            if (gridDetalle.ColumnCount == 0 || gridDetalle.RowCount == 0)
            {
                return;
            }

            gridDetalle.Columns["id"].Visible = false;

            gridDetalle.Columns["fecha"].DisplayIndex = 0;
            gridDetalle.Columns["Descripcion"].DisplayIndex = 1;

            gridDetalle.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.AllCells;

            Show();
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
