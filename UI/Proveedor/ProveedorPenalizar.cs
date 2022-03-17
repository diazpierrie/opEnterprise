using BLL;
using EE;
using MetroFramework;
using System;
using System.Linq;
using System.Windows.Forms;
using Security;

namespace UI
{
    public partial class ProveedorPenalizar : UpdatableForm
    {
        private readonly ProveedorEe _proveedor;
        private readonly ProveedorHome _proveedorHome;

        public ProveedorPenalizar(ProveedorHome proveedorHome, ProveedorEe proveedor)
        {
            _proveedor = proveedor;
            _proveedorHome = proveedorHome;
            InitializeComponent();

            AllControls = Program.GetAllControls(this);
            AllControls.Add(lblQueja);
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

            cbMotivos.DisplayMember = "Value";
            cbMotivos.ValueMember = "Key";

            var motivos = ProveedorBll.ObtenerMotivosPenalizacion().ToDictionary(ee => ee.Id, ee => ee.Descripcion);
            cbMotivos.DataSource = new BindingSource(motivos, null);
        }

        private void ActualizarEstadoVentas()
        {
            _proveedorHome.ActualizarGrid();
        }

        private void btnAsignarQueja_Click(object sender, EventArgs e)
        {
            var response = MetroMessageBox.Show(_proveedorHome.Mdi, Sesion.ObtenerSesion().Idioma.Textos["question_penalize"] + " " +  _proveedor.Nombre + "?" + "\n" + Sesion.ObtenerSesion().Idioma.Textos["motive"] + ": " + cbMotivos.Text,
                Sesion.ObtenerSesion().Idioma.Textos["confirm_penalization"], MessageBoxButtons.YesNo, MessageBoxIcon.Information);
            if (response != DialogResult.Yes) return;

            if (ProveedorBll.Penalizar(_proveedor, (int) cbMotivos.SelectedValue) == 0) return;

            MetroMessageBox.Show(_proveedorHome.Mdi, Sesion.ObtenerSesion().Idioma.Textos["success_penalization"], Sesion.ObtenerSesion().Idioma.Textos["success"], MessageBoxButtons.OK,
                MessageBoxIcon.Question);

            ActualizarEstadoVentas();
            Close();
        }
    }
}