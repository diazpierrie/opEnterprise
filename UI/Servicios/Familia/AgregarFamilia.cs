using System;
using System.Linq;
using System.Windows.Forms;
using EE;
using Security;

namespace UI.Familia
{
	public partial class AgregarFamilia : UpdatableForm
	{
		public FamiliaEe Family;
		public GestionarFamilia CallBack;

		public AgregarFamilia()
		{
			InitializeComponent();
			Sesion.ObtenerSesion().Idioma.Forms.Add(this);
		}

		private void AgregarFamilia_Load(object sender, EventArgs e)
		{
			this.AllControls = Program.GetAllControls(this);

            AllControls.Add(lblNombre);
            AllControls.Add(lblPatentes);

			IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

			if (this.Family != null)
			{
				txtNombre.Text = Family.Nombre;
			}

			var allPatentes = PermisosManager.ObtenerPatentes();
			foreach (var patente in allPatentes)
			{
				var checkBox = false;
				if (Family != null)
				{
					var index = PermisosManager.ObtenerPatentes(Family).FindIndex(pat => pat.Id == patente.Id);
					if (index >= 0)
					{
						checkBox = true;
					}
				}
				gridPatentes.Rows.Add(patente.Id.ToString(), checkBox, patente.Nombre);
			}
		}

		private void btnSave_Click(object sender, EventArgs e)
		{
			if (txtNombre.Text.Equals(""))
			{
				MetroFramework.MetroMessageBox.Show(this, Sesion.ObtenerSesion().Idioma.Textos["incorrect_data"], Sesion.ObtenerSesion().Idioma.Textos["notification"]);
			}

			if (PermisosManager.VerSiFamiliaExiste(Family?.Id ?? 0, txtNombre.Text) && Family == null)
			{
				MetroFramework.MetroMessageBox.Show(this, Sesion.ObtenerSesion().Idioma.Textos["name_already_used"], Sesion.ObtenerSesion().Idioma.Textos["notification"]);
				return;
			}

			var truePatentes = (from DataGridViewRow row in gridPatentes.Rows let check = bool.Parse(this.gridPatentes[1, row.Index].Value.ToString()) where check select int.Parse(this.gridPatentes[0, row.Index].Value.ToString()) into id select PermisosManager.ObtenerPatente(id)).ToList();

            if (Family == null)
			{
				PermisosManager.Crear(new FamiliaEe()
				{
					Nombre = txtNombre.Text,
					Patentes = truePatentes
				});
				MetroFramework.MetroMessageBox.Show(this, Sesion.ObtenerSesion().Idioma.Textos["created"], Sesion.ObtenerSesion().Idioma.Textos["notification"]);
				CallBack.UpdateFamilyList();
				this.Close();
			}
			else
			{
				Family.Nombre = txtNombre.Text;
				PermisosManager.Actualizar(Family, truePatentes);
				MetroFramework.MetroMessageBox.Show(this, Sesion.ObtenerSesion().Idioma.Textos["updated"], Sesion.ObtenerSesion().Idioma.Textos["notification"]);
			}
		}
    }
}
