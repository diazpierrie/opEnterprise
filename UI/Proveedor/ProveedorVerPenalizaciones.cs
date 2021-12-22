using System;
using System.Windows.Forms;
using BLL;
using EE;
using Security;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class ProveedorVerPenalizaciones : UpdatableForm
    {

        public ProveedorVerPenalizaciones(ProveedorEe selectedProveedor)
        {
            InitializeComponent();


            AllControls = Program.GetAllControls(this);
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

            gridDetalle.DataSource = ProveedorBll.ObtenerPenalizaciones(selectedProveedor);

            if (gridDetalle.ColumnCount == 0 || gridDetalle.RowCount == 0)
            {
                return;
            }

            gridDetalle.Columns["id"].Visible = false;

            gridDetalle.Columns["fecha"].DisplayIndex = 0;
            gridDetalle.Columns["Descripcion"].DisplayIndex = 1;

            gridDetalle.Columns["fecha"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["date"];
            gridDetalle.Columns["Descripcion"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["description"];

            gridDetalle.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.AllCells;

            Show();
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
