using EE;
using Security;
using System;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Windows.Forms;
using UI.Familia;
using UI.Properties;
using UI.Puesto;
using UI.Sucursal;

namespace UI
{
    public partial class Home : UpdatableForm
    {
        private bool _langLoaded;

        public Home()
        {
            InitializeComponent();
            CargarPermisos();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);
        }

        public void CargarPermisos()
        {
            var unused = Settings.Default.TipoEdificio;

            var usuarioLoggeado = Sesion.ObtenerSesion().Usuario;

            if (PermisosManager.ObtenerFamilia() == null)
            {
                MetroFramework.MetroMessageBox.Show(this, Sesion.ObtenerSesion().Idioma.Textos["error_contact_admin"], Sesion.ObtenerSesion().Idioma.Textos["notification"]);
                this.Close();
                return;
            }

            if (!PermisosManager.VerificarPatente(usuarioLoggeado, "Admin"))
            {
                tcHome.DisableTab(tabAdmin);
            }

            if (!PermisosManager.VerificarPatente(usuarioLoggeado, "Sucursal"))
            {
                tcHome.DisableTab(tabSucursal);
            }

            if (!PermisosManager.VerificarPatente(usuarioLoggeado, "Deposito"))
            {
                tcHome.DisableTab(tabDeposito);
            }

            if (!PermisosManager.VerificarPatente(usuarioLoggeado, "Caja"))
            {
                tcHome.DisableTab(tabCaja);
            }

            if (!PermisosManager.VerificarPatente(usuarioLoggeado, "EnviosRecepciones"))
            {
                tcHome.DisableTab(tabEnviosRecepciones);
            }

        }

        private void btnAyuda_Click(object sender, EventArgs e)
        {
            Ayuda a = new Ayuda();
            a.Show();
        }

        private void btnBackUp_Click(object sender, EventArgs e)
        {
            var bkp = new RealizarBackup();
            bkp.Show();
        }

        private void btnBitacora_Click(object sender, EventArgs e)
        {
            var bt = new BitacoraVer();
            bt.Show();
        }

        private void btnBuscarVenta_Click(object sender, EventArgs e)
        {
            var buscarVenta = new VentaBuscar();
            buscarVenta.Show();
        }

        private void btnBuscarVentaCaja_Click(object sender, EventArgs e)
        {
            var buscarVenta = new VentaBuscar();
            buscarVenta.Show();
        }

        private void btnCancelarVentaCaja_Click(object sender, EventArgs e)
        {
            var cancelarVenta = new VentaCancelar();
            cancelarVenta.Show();
        }

        private void btnCancelarVentaVenta_Click(object sender, EventArgs e)
        {
            var cancelarVenta = new VentaCancelar();
            cancelarVenta.Show();
        }

        private void btnConfigurarEdificio_Click(object sender, EventArgs e)
        {
            var configurarEdificio = new EdificioConfigurar(this);
            configurarEdificio.Show();
        }

        private void btnConfirmarEnvio_Click(object sender, EventArgs e)
        {
            var confirmarEnvio = new EnvioGestion();
            confirmarEnvio.Show();
        }

        private void btnCrearQueja_Click(object sender, EventArgs e)
        {
            var crearQueja = new QuejaCrear();
            crearQueja.Show();
        }

        private void btnDeposito_Click(object sender, EventArgs e)
        {
            var depositoHome = new DepositoHome();
            depositoHome.Show();
        }

        private void btnEmpleado_Click_1(object sender, EventArgs e)
        {
            var empleadoHome = new EmpleadoHome();
            empleadoHome.Show();
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
            var gestionarFamilia = new GestionarFamilia();
            gestionarFamilia.Show();
        }

        private void btnIdioma_Click(object sender, EventArgs e)
        {
            var gestionarIdioma = new IdiomaGestionar();
            gestionarIdioma.Show();
        }

        private void btnPenalizarProveedor_Click(object sender, EventArgs e)
        {
            var proveedorHome = new ProveedorHome(Sesion.ObtenerSesion().Idioma.Textos["penalize_vendor"]);
            proveedorHome.Show();
        }

        private void btnProducto_Click(object sender, EventArgs e)
        {
            var proveedorHome = new ProductoHome();
            proveedorHome.Show();
        }

        private void btnProveedor_Click_1(object sender, EventArgs e)
        {
            var proveedorHome = new ProveedorHome();
            proveedorHome.Show();
        }

        private void btnPuesto_Click(object sender, EventArgs e)
        {
            var gestionarPuesto = new GestionarPuesto();
            gestionarPuesto.Show();
        }

        private void btnRealizarPedido_Click(object sender, EventArgs e)
        {
            var realizarPedido = new DepositoPedidoHome();
            realizarPedido.Show();
        }

        private void btnRealizarPedidoDeposito_Click(object sender, EventArgs e)
        {
            var sucursalPedidoHome = new SucursalPedidoHome();
            sucursalPedidoHome.Show();
        }

        private void btnRealizarVenta_Click(object sender, EventArgs e)
        {
            var ventaHome = new VentaHome();
            ventaHome.Show();
        }

        private void btnRecepcionarPedidoDeposito_Click(object sender, EventArgs e)
        {
            var sucursalEntradaRegistrar = new SucursalEntradaRegistrar();
            sucursalEntradaRegistrar.Show();
        }

        private void btnRecibirPago_Click(object sender, EventArgs e)
        {
            var recibirPago = new PagoRecibir();
            recibirPago.Show();
        }

        private void btnRegistrarEntrada_Click(object sender, EventArgs e)
        {
            var entradaRegistrar = new DepositoEntradaRegistrar();
            entradaRegistrar.Show();
        }

        private void btnRestaurarDv_Click(object sender, EventArgs e)
        {
            Dv.ActualizarDv();
        }

        private void btnSucursal_Click(object sender, EventArgs e)
        {
            var sucursalHome = new SucursalHome();
            sucursalHome.Show();
        }

        private void btnVerEnvios_Click(object sender, EventArgs e)
        {
            var buscarEnvio = new EnvioBuscar();
            buscarEnvio.Show();
        }

        private void btnVerInventario_Click(object sender, EventArgs e)
        {
            var verInventario = new DepositoVerInventario();
            verInventario.Show();
        }

        private void cbIdiomas_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (_langLoaded)
            {
                IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, int.Parse(cbIdiomas.SelectedValue.ToString()));
            }
        }

        private void Home_Load(object sender, EventArgs e)
        {
            this.AllControls = Program.GetAllControls(this);

            AllControls.Add(lblIdioma);

            foreach (TabPage tp in tcHome.TabPages)
            {
                this.AllControls.Add(tp);
            }

            cbIdiomas.DisplayMember = "Value";
            cbIdiomas.ValueMember = "Key";

            var idiomas = IdiomaManager.ObtenerCompletos().ToDictionary(id => id.Id, id => id.Nombre);

            cbIdiomas.DataSource = new BindingSource(idiomas, null);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

            cbIdiomas.SelectedValue = Sesion.ObtenerSesion().Idioma.Id;
            _langLoaded = true;
        }
        private void pbLogout_Click(object sender, EventArgs e)
        {
            if (SesionManager.CerrarSesion())
            {
                this.Close();
            }
        }
    }
}