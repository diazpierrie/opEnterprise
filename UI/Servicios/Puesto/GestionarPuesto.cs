using System;
using System.Collections.Generic;
using BLL;
using EE;
using Security;

namespace UI.Puesto
{
	public partial class GestionarPuesto : UpdatableForm
	{
		List<PuestoEe> _tiposSector;

		public GestionarPuesto()
		{
			InitializeComponent();
			Sesion.ObtenerSesion().Idioma.Forms.Add(this);
		}

		private void GestionarTipoSector_Load(object sender, EventArgs e)
		{
			this.AllControls = Program.GetAllControls(this);
            AllControls.Add(lblNombre);
            AllControls.Add(addNamelbl);
            AllControls.Add(gbAdd);

			IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

			UpdateTiposList();
		}

		private void UpdateTiposList()
		{
			cmbTipos.DisplayMember = "Text";
			cmbTipos.ValueMember = "Value";

			new List<object>();
			_tiposSector = PuestoBll.Obtener();
			
			cmbTipos.DataSource = _tiposSector;
		}

		private void btnAdd_Click(object sender, EventArgs e)
		{
			if (addNametxt.Text.Trim().Equals(""))
			{
				return;
			}
            PuestoBll.Crear(new PuestoEe
			{
				Nombre = addNametxt.Text
            });
			UpdateTiposList();
		}

		private void btnEdit_Click(object sender, EventArgs e)
		{
			if (cmbTipos.SelectedIndex == -1)
			{
				return;
			}
            PuestoBll.Actualizar(new PuestoEe
			{
				Id = int.Parse((cmbTipos.SelectedIndex).ToString()),
				Nombre = txtNombre.Text
            });
			UpdateTiposList();
		}

		private void btnDelete_Click(object sender, EventArgs e)
		{
			if (cmbTipos.SelectedIndex == -1)
			{
				return;
			}
			PuestoBll.Borrar(int.Parse((cmbTipos.SelectedIndex).ToString()));
			UpdateTiposList();
		}

        private void cmbTipos_SelectedIndexChanged(object sender, EventArgs e)
		{
			var selectedId = int.Parse((cmbTipos.SelectedIndex).ToString());
			var selectedSector = _tiposSector.Find(c => c.Id == selectedId);

			txtNombre.Text = selectedSector.Nombre;
        }
	}
}
