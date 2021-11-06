using System;
using EE;
using Security;
using UI.Properties;

namespace UI
{
    public partial class Home : MetroFramework.Forms.MetroForm
    {
        public Home()
        {
            InitializeComponent();
            ActualizarTabs();
        }

        private void btnRealizarVenta_Click(object sender, EventArgs e)
        {
            var ventaHome = new VentaHome();
            ventaHome.Show();
        }

        private void btnConfigurarEdificio_Click(object sender, EventArgs e)
        {
            var configurarEdificio = new ConfigurarEdificio(this);
            configurarEdificio.Show();
        }

        private void btnBuscarVenta_Click(object sender, EventArgs e)
        {
            var buscarVenta = new VentaBuscar();
            buscarVenta.Show();
        }

        private void btnCrearQueja_Click(object sender, EventArgs e)
        {
            var crearQueja = new VentaQuejaCrear();
            crearQueja.Show();
        }

        private void btnRegistrarEntrada_Click(object sender, EventArgs e)
        {
            var entradaRegistrar = new DepositoEntradaRegistrar();
            entradaRegistrar.Show();
        }

        private void btnCrearReposicion_Click(object sender, EventArgs e)
        {
            var crearReposicion = new DepositoCrearReposicion();
            crearReposicion.Show();
        }

        private void btnPenalizarProveedor_Click(object sender, EventArgs e)
        {

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
        }

        private void btnBitacora_Click(object sender, EventArgs e)
        {
            var bt = new VerBitacora();
            bt.Show();
        }

        private void btnUsuario_Click(object sender, EventArgs e)
        {
            var homeEmpleado = new EmpleadoHome();
            homeEmpleado.Show();
        }

        private void btnRestaurarDv_Click(object sender, EventArgs e)
        {
            Dv.ActualizarDv();
        }

        private void btnBackUp_Click(object sender, EventArgs e)
        {
            RealizarBackup bkp = new RealizarBackup();
            bkp.Show();
        }

        private void btnProveedor_Click_1(object sender, EventArgs e)
        {
            var proveedorHome = new ProveedorHome();
            proveedorHome.Show();
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
    }
}
