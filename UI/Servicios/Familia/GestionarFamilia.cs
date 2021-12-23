using System;
using System.Linq;
using System.Windows.Forms;
using EE;
using Security;

namespace UI.Familia
{
    public partial class GestionarFamilia : UpdatableForm
    {
        public GestionarFamilia()
        {
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);
        }

        private void GestionarFamilia_Load(object sender, EventArgs e)
        {
            this.AllControls = Program.GetAllControls(this);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

            UpdateFamilyList();
        }

        private void btnDeleteFamily_Click(object sender, EventArgs e)
        {
            var selectedFamily = int.Parse(cmbFamilias.SelectedValue.ToString());
            if (selectedFamily == PermisosManager.ObtenerFamilia(Sesion.ObtenerSesion().Usuario).Id)
            {
                MetroFramework.MetroMessageBox.Show(this, Sesion.ObtenerSesion().Idioma.Textos["cant_delete_my_family"], Sesion.ObtenerSesion().Idioma.Textos["notification"]);
                return;
            }

            PermisosManager.Borrar(new FamiliaEe()
            {
                Id = selectedFamily
            });
            UpdateFamilyList();
        }

        private void btnEditFamily_Click(object sender, EventArgs e)
        {
            if (cmbFamilias.SelectedValue == null)
            {
                return;
            }

            var ag = new AgregarFamilia()
            {
                Family = PermisosManager.ObtenerFamilia(int.Parse(cmbFamilias.SelectedValue.ToString()))
            };
            ag.Show();
        }

        private void btnAddFamily_Click(object sender, EventArgs e)
        {
            var ag = new AgregarFamilia()
            {
                CallBack = this
            };
            ag.Show();
        }

        public void UpdateFamilyList()
        {
            var familias = PermisosManager.ObtenerFamilia().ToDictionary(fam => fam.Id, fam => fam.Nombre);
            cmbFamilias.DataSource = new BindingSource(familias, null);
            cmbFamilias.DisplayMember = "Value";
            cmbFamilias.ValueMember = "Key";
        }
    }
}