using EE;
using Security;
using System;
using System.Collections.Generic;
using System.Windows.Forms;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class ProveedorVerPenalizaciones : UpdatableForm
    {
        public ProveedorVerPenalizaciones(List<PenalizacionProveedorEe> penalizacionProveedorEes)
        {
            InitializeComponent();

            AllControls = Program.GetAllControls(this);
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

            gridDetalle.DataSource = penalizacionProveedorEes;

            gridDetalle.Columns["id"].Visible = false;

            gridDetalle.Columns["fecha"].DisplayIndex = 0;
            gridDetalle.Columns["Descripcion"].DisplayIndex = 1;

            gridDetalle.Columns["fecha"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["date"];
            gridDetalle.Columns["Descripcion"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["description"];

            gridDetalle.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.AllCells;
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}