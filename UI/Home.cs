using EE;
using Security;
using System;
using System.Linq;
using System.Windows.Forms;
using UI.Properties;

namespace UI
{
    public partial class Home : UpdatableForm
    {
        private bool _langLoaded = false;
        public Home()
        {
            InitializeComponent();
            ActualizarTabs();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);
        }

        public void ActualizarTabs()
        {
            var unused = Settings.Default.TipoEdificio;
            tcHome.TabPages.Clear();
            if (Sesion.ObtenerSesion().Usuario.Puesto.Id == 7)
            {
                tcHome.TabPages.Add(tabAdmin);
            }

            tcHome.TabPages.Add(tabVenta);
            tcHome.TabPages.Add(tabCaja);
            tcHome.TabPages.Add(tabEnvio);
            tcHome.TabPages.Add(tabDeposito);
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

        private void btnEmpleado_Click_1(object sender, EventArgs e)
        {
            var empleadoHome = new EmpleadoHome();
            empleadoHome.Show();
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

        private void btnProveedor_Click_1(object sender, EventArgs e)
        {
            var proveedorHome = new ProveedorHome();
            proveedorHome.Show();
        }

        private void btnRealizarPedido_Click(object sender, EventArgs e)
        {
            var realizarPedido = new DepositoPedidoHome();
            realizarPedido.Show();
        }

        private void btnRealizarVenta_Click(object sender, EventArgs e)
        {
            var ventaHome = new VentaHome();
            ventaHome.Show();
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

        private void btnRealizarPedidoDeposito_Click(object sender, EventArgs e)
        {
            var sucursalPedidoHome = new SucursalPedidoHome();
            sucursalPedidoHome.Show();
        }

        private void btnRecepcionarPedidoDeposito_Click(object sender, EventArgs e)
        {
            var sucursalEntradaRegistrar = new SucursalEntradaRegistrar();
            sucursalEntradaRegistrar.Show();
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
            _langLoaded = true;
        }

        private void cbIdiomas_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (_langLoaded)
            {
                IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, int.Parse(cbIdiomas.SelectedValue.ToString()));
            }

        }

    }
}