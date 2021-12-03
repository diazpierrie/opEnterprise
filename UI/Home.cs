using EE;
using MetroFramework.Forms;
using Security;
using System;
using UI.Properties;

namespace UI
{
    public partial class Home : MetroForm
    {
        public Home()
        {
            InitializeComponent();
            ActualizarTabs();
        }

        public void ActualizarTabs()
        {
            var tipoEdificio = Settings.Default.TipoEdificio;
            tcHome.TabPages.Clear();
            if (Sesion.ObtenerSesion().Usuario.Puesto.Id == 7)
            {
                tcHome.TabPages.Add(tabAdmin);
            }

            tcHome.TabPages.Add(tipoEdificio == "Deposito" ? tabDeposito : tabVenta);
            tcHome.TabPages.Add(tabCaja);
            tcHome.TabPages.Add(tabEnvio);
        }

        private void btnBackUp_Click(object sender, EventArgs e)
        {
            var bkp = new RealizarBackup();
            bkp.Show();
        }

        private void btnBitacora_Click(object sender, EventArgs e)
        {
            var bt = new VerBitacora();
            bt.Show();
        }

        private void btnBuscarVenta_Click(object sender, EventArgs e)
        {
            var buscarVenta = new VentaBuscar();
            buscarVenta.Show();
        }

        private void btnCancelarVentaCaja_Click(object sender, EventArgs e)
        {
            var cancelarVenta = new CancelarVenta();
            cancelarVenta.Show();
        }

        private void btnCancelarVentaVenta_Click(object sender, EventArgs e)
        {
            var cancelarVenta = new CancelarVenta();
            cancelarVenta.Show();
        }

        private void btnConfigurarEdificio_Click(object sender, EventArgs e)
        {
            var configurarEdificio = new ConfigurarEdificio(this);
            configurarEdificio.Show();
        }

        private void btnCrearQueja_Click(object sender, EventArgs e)
        {
            var crearQueja = new VentaQuejaCrear();
            crearQueja.Show();
        }

        private void btnCrearReposicion_Click(object sender, EventArgs e)
        {
            var crearReposicion = new DepositoCrearReposicion();
            crearReposicion.Show();
        }

        private void btnEmpleado_Click_1(object sender, EventArgs e)
        {
            var empleadoHome = new EmpleadoHome();
            empleadoHome.Show();
        }

        private void btnIdioma_Click(object sender, EventArgs e)
        {
            var gestionarIdioma = new GestionarIdioma();
            gestionarIdioma.Show();
        }

        private void btnPenalizarProveedor_Click(object sender, EventArgs e)
        {
        }

        private void btnProveedor_Click_1(object sender, EventArgs e)
        {
            var proveedorHome = new ProveedorHome();
            proveedorHome.Show();
        }

        private void btnRealizarVenta_Click(object sender, EventArgs e)
        {
            var ventaHome = new VentaHome();
            ventaHome.Show();
        }

        private void btnRecibirPago_Click(object sender, EventArgs e)
        {
            var recibirPago = new RecibirPago();
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

        private void btnUsuario_Click(object sender, EventArgs e)
        {
            var homeEmpleado = new EmpleadoHome();
            homeEmpleado.Show();
        }

        private void btnVerEnvios_Click(object sender, EventArgs e)
        {
            var buscarEnvio = new BuscarEnvio();
            buscarEnvio.Show();
        }

        private void btnConfirmarEnvio_Click(object sender, EventArgs e)
        {
            var confirmarEnvio = new ConfirmarEnvio();
            confirmarEnvio.Show();
        }
    }
}