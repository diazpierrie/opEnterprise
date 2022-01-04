using System;
using System.Windows.Forms;
using MetroFramework.Forms;

namespace UI
{
    public partial class Mdi : MetroForm
    {
        public Mdi()
        {
            InitializeComponent();

            var home = new Logo();
            panelContainer.Controls.Add(home);
            home.Show();
            HidePanels();
        }

        private void HidePanels()
        {
            panelCaja.Visible = false;
            panelDeposito.Visible = false;
            panelEnvios.Visible = false;
            panelSucursal.Visible = false;
        }

        private void btnSucursalPanel_Click(object sender, EventArgs e)
        {
            HidePanels();

            panelSucursal.Visible = true;
        }

        private void btnDepositoPanel_Click(object sender, EventArgs e)
        {
            HidePanels();

            panelDeposito.Visible = true;
        }

        private void btnCajaPanel_Click(object sender, EventArgs e)
        {
            HidePanels();

            panelCaja.Visible = true;
        }

        private void btnEnviosPanel_Click(object sender, EventArgs e)
        {
            HidePanels();

            panelEnvios.Visible = true;
        }

        private void btnAdmin_Click(object sender, EventArgs e)
        {
            HidePanels();
        }

        private void btnRealizarVenta_Click(object sender, EventArgs e)
        {
            HidePanels();
        }

        private void btnBuscarVenta_Click(object sender, EventArgs e)
        {
            HidePanels();
        }

        private void btnCrearQueja_Click(object sender, EventArgs e)
        {
            HidePanels();
        }

        private void btnCancelarVentaVenta_Click(object sender, EventArgs e)
        {
            HidePanels();
        }

        private void btnVerQuejas_Click(object sender, EventArgs e)
        {
            HidePanels();
        }

        private void btnRegistrarEntrada_Click(object sender, EventArgs e)
        {
            HidePanels();
        }

        private void btnPenalizarProveedor_Click(object sender, EventArgs e)
        {
            HidePanels();
        }

        private void btnRealizarPedidoProveedor_Click(object sender, EventArgs e)
        {
            HidePanels();
        }

        private void btnVerInventario_Click(object sender, EventArgs e)
        {
            HidePanels();
        }

        private void btnRecibirPago_Click(object sender, EventArgs e)
        {
            HidePanels();
        }

        private void btnCancelarVentaCaja_Click(object sender, EventArgs e)
        {
            HidePanels();
        }

        private void btnBuscarVentaCaja_Click(object sender, EventArgs e)
        {
            HidePanels();
        }

        private void btnVerEnvios_Click(object sender, EventArgs e)
        {
            HidePanels();
        }

        private void btnDespacharEnvio_Click(object sender, EventArgs e)
        {
            HidePanels();
        }

        private void btnRealizarPedidoDeposito_Click(object sender, EventArgs e)
        {
            HidePanels();
        }

        private void btnRecepcionarPedidoDeposito_Click(object sender, EventArgs e)
        {
            HidePanels();
        }

        private void pbLogout_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnAyuda_Click(object sender, EventArgs e)
        {
            RemoveUserControl();
            var home = new Ayuda();
            panelContainer.Controls.Add(home);
            home.Show();
        }

        private void RemoveUserControl()
        {
            if (panelContainer.Controls.Count > 0) panelContainer.Controls.RemoveAt(panelContainer.Controls.Count - 1);
        }

        private void picLogo_Click(object sender, EventArgs e)
        {
            RemoveUserControl();
            var home = new Logo();
            panelContainer.Controls.Add(home);
            home.Show();
        }
    }
}