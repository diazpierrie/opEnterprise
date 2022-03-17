using EE;
using MetroFramework;
using MetroFramework.Forms;
using Security;
using System;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Windows.Forms;
using UI.Familia;
using UI.Properties;
using UI.Sucursal;

namespace UI
{
    public partial class Mdi : UpdatableForm
    {
        private Form _activeForm;
        private bool _langLoaded;

        public Mdi()
        {
            InitializeComponent();

            var home = new Logo();
            panelContainer.Controls.Add(home);
            home.Show();
            HideSubMenu();
            CargarRoles();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            AllControls = Program.GetAllControls(this);
            AllControls.Add(lblEdificio);

            CargarEdificioLabel();
        }

        public void CargarEdificioLabel()
        {

            var depositoEe = Sesion.ObtenerSesion().Deposito;
            var sucursalEe = Sesion.ObtenerSesion().Sucursal;

            lblEdificio.Text = (string) Settings.Default["TipoEdificio"] == "Sucursal" ? sucursalEe.ToString() : depositoEe.ToString();
            
        }

        public void CargarIdiomas()
        {
            var idiomas = IdiomaManager.Obtener().ToDictionary(id => id.Id, id => id.Nombre);
            cbIdiomas.DisplayMember = "Value";
            cbIdiomas.ValueMember = "Key";
            cbIdiomas.DataSource = new BindingSource(idiomas, null);
            cbIdiomas.SelectedValue = Sesion.ObtenerSesion().Idioma.Id;
        }

        public void CargarRoles()
        {
            var edificio = Settings.Default.TipoEdificio;

            var usuarioLoggeado = Sesion.ObtenerSesion().Usuario;

            if (RolManager.ObtenerFamilia() == null)
            {
                MetroMessageBox.Show(this, Sesion.ObtenerSesion().Idioma.Textos["error_contact_admin"], Sesion.ObtenerSesion().Idioma.Textos["notification"]);
                Close();
                return;
            }

            if (!RolManager.VerificarPatente(usuarioLoggeado, "Admin"))
            {
                btnAdminConfig.Visible = false;
                btnAdminGestion.Visible = false;
            }
            else
            {
                btnAdminConfig.Visible = true;
                btnAdminGestion.Visible = true;
            }

            btnSucursalPanel.Visible =
                RolManager.VerificarPatente(usuarioLoggeado, "Sucursal") && edificio == "Sucursal";

            btnCajaPanel.Visible = RolManager.VerificarPatente(usuarioLoggeado, "Caja") && edificio == "Sucursal";

            btnDepositoPanel.Visible =
                RolManager.VerificarPatente(usuarioLoggeado, "Deposito") && edificio == "Deposito";

            btnEnviosPanel.Visible = RolManager.VerificarPatente(usuarioLoggeado, "EnviosRecepciones");

            HideSubMenu();
        }

        public void OpenWindowForm(UpdatableForm childForm)
        {
            childForm.TopLevel = false;
            childForm.Movable = false;
            childForm.Resizable = false;
            childForm.FormBorderStyle = FormBorderStyle.None;
            childForm.Dock = DockStyle.Fill;
            childForm.MaximizeBox = true;
            childForm.MinimizeBox = false;
            childForm.MaximizeBox = false;
            childForm.Style = MetroColorStyle.White;
            childForm.ShadowType = MetroFormShadowType.None;
            panelContainer.Controls.Add(childForm);
            panelContainer.Tag = childForm;
            childForm.BringToFront();
            childForm.Show();
        }

        private void btnAdminConfig_Click(object sender, EventArgs e)
        {
            ShowSubMenu(panelAdminConfig);
        }

        private void btnAdminGestion_Click(object sender, EventArgs e)
        {
            ShowSubMenu(panelAdminGestion);
        }

        private void btnAyuda_Click(object sender, EventArgs e)
        {
            var home = new Ayuda();
            OpenChildForm(home);
        }

        private void btnBackup_Click(object sender, EventArgs e)
        {
            HideSubMenu();
            var home = new RealizarBackup();
            OpenChildForm(home);
        }

        private void btnBitacora_Click(object sender, EventArgs e)
        {
            HideSubMenu();
            var home = new BitacoraVer();
            OpenChildForm(home);
        }

        private void btnBuscarVenta_Click(object sender, EventArgs e)
        {
            HideSubMenu();
            var home = new VentaBuscar(this);
            OpenChildForm(home);
        }

        private void btnBuscarVentaCaja_Click(object sender, EventArgs e)
        {
            HideSubMenu();
            var home = new VentaBuscar(this);
            OpenChildForm(home);
        }

        private void btnCajaPanel_Click(object sender, EventArgs e)
        {
            ShowSubMenu(panelCaja);
        }

        private void btnCancelarVentaCaja_Click(object sender, EventArgs e)
        {
            HideSubMenu();
            var home = new VentaCancelar(this);
            OpenChildForm(home);
        }

        private void btnCancelarVentaVenta_Click(object sender, EventArgs e)
        {
            HideSubMenu();
            var home = new VentaCancelar(this);
            OpenChildForm(home);
        }

        private void btnConfigurarEdificio_Click(object sender, EventArgs e)
        {
            HideSubMenu();
            var home = new EdificioConfigurar(this);
            OpenChildForm(home);
        }

        private void btnCrearQueja_Click(object sender, EventArgs e)
        {
            HideSubMenu();
            var home = new QuejaCrear(this);
            OpenChildForm(home);
        }

        private void btnDeposito_Click(object sender, EventArgs e)
        {
            var depositoHome = new DepositoHome(this);
            OpenChildForm(depositoHome);
        }

        private void btnDepositoPanel_Click(object sender, EventArgs e)
        {
            ShowSubMenu(panelDeposito);
        }

        private void btnDespacharEnvio_Click(object sender, EventArgs e)
        {
            HideSubMenu();
            var home = new EnvioGestion(this);
            OpenChildForm(home);
        }

        private void btnEmpleado_Click(object sender, EventArgs e)
        {
            var empleadoHome = new EmpleadoHome(this);
            OpenChildForm(empleadoHome);
        }

        private void btnEnviosPanel_Click(object sender, EventArgs e)
        {
            ShowSubMenu(panelEnvios);
        }

        private void btnExportReport_Click(object sender, EventArgs e)
        {
            var exportData = new SaveFileDialog
            {
                Filter = "PDF(*.pdf)|*.pdf",
                Title = "Save PDF file",
                InitialDirectory = Directory.GetCurrentDirectory() + "\\..\\..\\..\\",
            };

            if (exportData.ShowDialog() == DialogResult.OK)
            {
                Process.Start(UsuarioManager.ExportPdf(exportData.FileName));
            }
        }

        private void btnFamilia_Click(object sender, EventArgs e)
        {
            var gestionarFamilia = new GestionarFamilia(this);
            OpenChildForm(gestionarFamilia);
        }

        private void btnIdioma_Click(object sender, EventArgs e)
        {
            RemoveUserControl();
            var gestionarIdioma = new IdiomaGestionar(this);
            OpenChildForm(gestionarIdioma);
        }

        private void btnPenalizarProveedor_Click(object sender, EventArgs e)
        {
            HideSubMenu();
            var proveedorHome = new ProveedorHome(this, Sesion.ObtenerSesion().Idioma.Textos["penalize_vendor"]);
            OpenChildForm(proveedorHome);
        }

        private void btnProducto_Click(object sender, EventArgs e)
        {
            var productoHome = new ProductoHome(this);
            OpenChildForm(productoHome);
        }

        private void btnProveedor_Click(object sender, EventArgs e)
        {
            var proveedorHome = new ProveedorHome(this);
            OpenChildForm(proveedorHome);
        }

        private void btnRealizarPedidoDeposito_Click(object sender, EventArgs e)
        {
            HideSubMenu();
            var sucursalPedidoHome = new SucursalPedidoHome(this);
            OpenChildForm(sucursalPedidoHome);
        }

        private void btnRealizarPedidoProveedor_Click(object sender, EventArgs e)
        {
            HideSubMenu();
            var realizarPedido = new DepositoPedidoHome(this);
            OpenChildForm(realizarPedido);
        }

        private void btnRealizarVenta_Click(object sender, EventArgs e)
        {
            HideSubMenu();
            var ventaHome = new VentaHome(this);
            OpenChildForm(ventaHome);
        }

        private void btnRecepcionarPedidoDeposito_Click(object sender, EventArgs e)
        {
            HideSubMenu();
            var sucursalEntradaRegistrar = new SucursalEntradaRegistrar(this);
            OpenChildForm(sucursalEntradaRegistrar);
        }

        private void btnRecibirPago_Click(object sender, EventArgs e)
        {
            HideSubMenu();
            var recibirPago = new PagoRecibir(this);
            OpenChildForm(recibirPago);
        }

        private void btnRegistrarEntrada_Click(object sender, EventArgs e)
        {
            HideSubMenu();
            var entradaRegistrar = new DepositoEntradaRegistrar(this);
            OpenChildForm(entradaRegistrar);
        }

        private void btnRestaurarDv_Click(object sender, EventArgs e)
        {
            Dv.ActualizarDv();
            MetroMessageBox.Show(this, Sesion.ObtenerSesion().Idioma.Textos["dv_restored"], Sesion.ObtenerSesion().Idioma.Textos["notification"], MessageBoxButtons.OK, MessageBoxIcon.Question);
        }

        private void btnSucursal_Click(object sender, EventArgs e)
        {
            var sucursalHome = new SucursalHome(this);
            OpenChildForm(sucursalHome);
        }

        private void btnSucursalPanel_Click(object sender, EventArgs e)
        {
            ShowSubMenu(panelSucursal);
        }

        private void btnVerEnvios_Click(object sender, EventArgs e)
        {
            HideSubMenu();
            var buscarEnvio = new EnvioBuscar(this);
            OpenChildForm(buscarEnvio);
        }

        private void btnVerInventario_Click(object sender, EventArgs e)
        {
            HideSubMenu();
            var verInventario = new DepositoVerInventario();
            OpenChildForm(verInventario);
        }

        private void btnVerQuejas_Click(object sender, EventArgs e)
        {
            HideSubMenu();
            var verInventario = new DepositoVerInventario();
            OpenChildForm(verInventario);
        }

        private void cbIdiomas_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!_langLoaded) return;
            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, int.Parse(cbIdiomas.SelectedValue.ToString()));
            CargarEdificioLabel();
        }

        private void HideSubMenu()
        {
            panelCaja.Visible = false;
            panelDeposito.Visible = false;
            panelEnvios.Visible = false;
            panelSucursal.Visible = false;
            panelAdminConfig.Visible = false;
            panelAdminGestion.Visible = false;
        }

        private void Mdi_Load(object sender, EventArgs e)
        {
            PrepararIdiomas();
        }
        private void OpenChildForm(UpdatableForm childForm)
        {
            _activeForm?.Close();
            _activeForm = childForm;
            childForm.TopLevel = false;
            childForm.Movable = false;
            childForm.Resizable = false;
            childForm.FormBorderStyle = FormBorderStyle.None;
            childForm.Dock = DockStyle.Fill;
            childForm.ControlBox = false;
            childForm.Style = MetroColorStyle.White;
            childForm.ShadowType = MetroFormShadowType.None;
            panelContainer.Controls.Add(childForm);
            panelContainer.Tag = childForm;
            childForm.BringToFront();
            childForm.Show();
        }

        private void pbLogout_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void picLogo_Click(object sender, EventArgs e)
        {
            RemoveUserControl();
            var home = new Logo();
            panelContainer.Controls.Add(home);
            home.Show();
        }

        private void PrepararIdiomas()
        {
            AllControls = Program.GetAllControls(this);
            AllControls.Add(lblIdioma);

            CargarIdiomas();

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

            _langLoaded = true;
        }
        private void RemoveUserControl()
        {
            if (panelContainer.Controls.Count > 0) panelContainer.Controls.RemoveAt(panelContainer.Controls.Count - 1);
        }

        private void ShowSubMenu(Panel subMenu)
        {
            if (subMenu.Visible == false)
            {
                HideSubMenu();
                subMenu.Visible = true;
            }
            else
                subMenu.Visible = false;
        }
    }
}