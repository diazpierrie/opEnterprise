using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using EE;
using Security;

namespace UI
{
    public partial class GestionarIdioma : UpdatableForm
    {
        public GestionarIdioma()
        {
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);
        }

        private void GestionarIdioma_Load(object sender, EventArgs e)
        {
            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

            cmbLanguages.DisplayMember = "Text";
            cmbLanguages.ValueMember = "Value";

            CargarComboBox();
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            var agregarIdioma = new AgregarIdioma(this);
            agregarIdioma.Show();
        }

        public void CargarComboBox()
        {
            cmbLanguages.DataSource = IdiomaManager.Obtener();
        }
    }
}
