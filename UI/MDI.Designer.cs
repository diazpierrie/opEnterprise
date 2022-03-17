
using System.Windows.Controls;
using Button = System.Windows.Forms.Button;

namespace UI
{
    partial class Mdi
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Mdi));
            this.pbLogout = new System.Windows.Forms.PictureBox();
            this.panelContainer = new MetroFramework.Controls.MetroPanel();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnAyuda = new MetroFramework.Controls.MetroButton();
            this.lblIdioma = new System.Windows.Forms.Label();
            this.cbIdiomas = new MetroFramework.Controls.MetroComboBox();
            this.panelSidebar = new MetroFramework.Controls.MetroPanel();
            this.panelOpciones = new MetroFramework.Controls.MetroPanel();
            this.panelEnvios = new MetroFramework.Controls.MetroPanel();
            this.btnRecepcionarPedidoDeposito = new System.Windows.Forms.Button();
            this.btnRealizarPedidoDeposito = new System.Windows.Forms.Button();
            this.btnDespacharEnvio = new System.Windows.Forms.Button();
            this.btnVerEnvios = new System.Windows.Forms.Button();
            this.btnEnviosPanel = new System.Windows.Forms.Button();
            this.panelCaja = new MetroFramework.Controls.MetroPanel();
            this.btnBuscarVentaCaja = new System.Windows.Forms.Button();
            this.btnCancelarVentaCaja = new System.Windows.Forms.Button();
            this.btnRecibirPago = new System.Windows.Forms.Button();
            this.btnCajaPanel = new System.Windows.Forms.Button();
            this.panelDeposito = new MetroFramework.Controls.MetroPanel();
            this.btnVerInventario = new System.Windows.Forms.Button();
            this.btnPenalizarProveedor = new System.Windows.Forms.Button();
            this.btnRealizarPedidoProveedor = new System.Windows.Forms.Button();
            this.btnRegistrarEntrada = new System.Windows.Forms.Button();
            this.btnDepositoPanel = new System.Windows.Forms.Button();
            this.panelSucursal = new MetroFramework.Controls.MetroPanel();
            this.btnVerQuejas = new System.Windows.Forms.Button();
            this.btnCrearQueja = new System.Windows.Forms.Button();
            this.btnCancelarVentaVenta = new System.Windows.Forms.Button();
            this.btnBuscarVenta = new System.Windows.Forms.Button();
            this.btnRealizarVenta = new System.Windows.Forms.Button();
            this.btnSucursalPanel = new System.Windows.Forms.Button();
            this.panelAdminGestion = new MetroFramework.Controls.MetroPanel();
            this.btnProducto = new System.Windows.Forms.Button();
            this.btnFamilia = new System.Windows.Forms.Button();
            this.btnSucursal = new System.Windows.Forms.Button();
            this.btnDeposito = new System.Windows.Forms.Button();
            this.btnProveedor = new System.Windows.Forms.Button();
            this.btnEmpleado = new System.Windows.Forms.Button();
            this.btnAdminGestion = new System.Windows.Forms.Button();
            this.panelAdminConfig = new MetroFramework.Controls.MetroPanel();
            this.btnExportReport = new System.Windows.Forms.Button();
            this.btnConfigurarEdificio = new System.Windows.Forms.Button();
            this.btnIdioma = new System.Windows.Forms.Button();
            this.btnRestaurarDv = new System.Windows.Forms.Button();
            this.btnBitacora = new System.Windows.Forms.Button();
            this.btnBackup = new System.Windows.Forms.Button();
            this.btnAdminConfig = new System.Windows.Forms.Button();
            this.panelImagen = new MetroFramework.Controls.MetroPanel();
            this.picLogo = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pbLogout)).BeginInit();
            this.panel1.SuspendLayout();
            this.panelSidebar.SuspendLayout();
            this.panelOpciones.SuspendLayout();
            this.panelEnvios.SuspendLayout();
            this.panelCaja.SuspendLayout();
            this.panelDeposito.SuspendLayout();
            this.panelSucursal.SuspendLayout();
            this.panelAdminGestion.SuspendLayout();
            this.panelAdminConfig.SuspendLayout();
            this.panelImagen.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picLogo)).BeginInit();
            this.SuspendLayout();
            // 
            // pbLogout
            // 
            this.pbLogout.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.pbLogout.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("pbLogout.BackgroundImage")));
            this.pbLogout.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.pbLogout.Cursor = System.Windows.Forms.Cursors.Hand;
            this.pbLogout.InitialImage = null;
            this.pbLogout.Location = new System.Drawing.Point(1337, 29);
            this.pbLogout.Name = "pbLogout";
            this.pbLogout.Size = new System.Drawing.Size(25, 25);
            this.pbLogout.TabIndex = 11;
            this.pbLogout.TabStop = false;
            this.pbLogout.Click += new System.EventHandler(this.pbLogout_Click);
            // 
            // panelContainer
            // 
            this.panelContainer.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panelContainer.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelContainer.HorizontalScrollbarBarColor = true;
            this.panelContainer.HorizontalScrollbarHighlightOnWheel = false;
            this.panelContainer.HorizontalScrollbarSize = 10;
            this.panelContainer.Location = new System.Drawing.Point(230, 60);
            this.panelContainer.Name = "panelContainer";
            this.panelContainer.Size = new System.Drawing.Size(1132, 687);
            this.panelContainer.TabIndex = 2;
            this.panelContainer.VerticalScrollbarBarColor = true;
            this.panelContainer.VerticalScrollbarHighlightOnWheel = false;
            this.panelContainer.VerticalScrollbarSize = 10;
            // 
            // panel1
            // 
            this.panel1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panel1.Controls.Add(this.btnAyuda);
            this.panel1.Controls.Add(this.lblIdioma);
            this.panel1.Controls.Add(this.cbIdiomas);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel1.Location = new System.Drawing.Point(230, 747);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1132, 50);
            this.panel1.TabIndex = 12;
            // 
            // btnAyuda
            // 
            this.btnAyuda.Location = new System.Drawing.Point(989, 13);
            this.btnAyuda.Name = "btnAyuda";
            this.btnAyuda.Size = new System.Drawing.Size(136, 23);
            this.btnAyuda.TabIndex = 10;
            this.btnAyuda.Tag = "help";
            this.btnAyuda.Text = "Ayuda";
            this.btnAyuda.UseSelectable = true;
            this.btnAyuda.Click += new System.EventHandler(this.btnAyuda_Click);
            // 
            // lblIdioma
            // 
            this.lblIdioma.Location = new System.Drawing.Point(3, 11);
            this.lblIdioma.Name = "lblIdioma";
            this.lblIdioma.Size = new System.Drawing.Size(105, 29);
            this.lblIdioma.TabIndex = 7;
            this.lblIdioma.Tag = "language";
            this.lblIdioma.Text = "Idioma";
            this.lblIdioma.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // cbIdiomas
            // 
            this.cbIdiomas.FormattingEnabled = true;
            this.cbIdiomas.ItemHeight = 23;
            this.cbIdiomas.Location = new System.Drawing.Point(114, 11);
            this.cbIdiomas.Name = "cbIdiomas";
            this.cbIdiomas.Size = new System.Drawing.Size(223, 29);
            this.cbIdiomas.TabIndex = 6;
            this.cbIdiomas.UseSelectable = true;
            this.cbIdiomas.SelectedIndexChanged += new System.EventHandler(this.cbIdiomas_SelectedIndexChanged);
            // 
            // panelSidebar
            // 
            this.panelSidebar.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panelSidebar.Controls.Add(this.panelOpciones);
            this.panelSidebar.Controls.Add(this.panelImagen);
            this.panelSidebar.Dock = System.Windows.Forms.DockStyle.Left;
            this.panelSidebar.HorizontalScrollbarBarColor = true;
            this.panelSidebar.HorizontalScrollbarHighlightOnWheel = false;
            this.panelSidebar.HorizontalScrollbarSize = 10;
            this.panelSidebar.Location = new System.Drawing.Point(20, 60);
            this.panelSidebar.Name = "panelSidebar";
            this.panelSidebar.Size = new System.Drawing.Size(210, 737);
            this.panelSidebar.TabIndex = 2;
            this.panelSidebar.VerticalScrollbarBarColor = true;
            this.panelSidebar.VerticalScrollbarHighlightOnWheel = false;
            this.panelSidebar.VerticalScrollbarSize = 10;
            // 
            // panelOpciones
            // 
            this.panelOpciones.AutoScroll = true;
            this.panelOpciones.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panelOpciones.Controls.Add(this.panelEnvios);
            this.panelOpciones.Controls.Add(this.btnEnviosPanel);
            this.panelOpciones.Controls.Add(this.panelCaja);
            this.panelOpciones.Controls.Add(this.btnCajaPanel);
            this.panelOpciones.Controls.Add(this.panelDeposito);
            this.panelOpciones.Controls.Add(this.btnDepositoPanel);
            this.panelOpciones.Controls.Add(this.panelSucursal);
            this.panelOpciones.Controls.Add(this.btnSucursalPanel);
            this.panelOpciones.Controls.Add(this.panelAdminGestion);
            this.panelOpciones.Controls.Add(this.btnAdminGestion);
            this.panelOpciones.Controls.Add(this.panelAdminConfig);
            this.panelOpciones.Controls.Add(this.btnAdminConfig);
            this.panelOpciones.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelOpciones.HorizontalScrollbar = true;
            this.panelOpciones.HorizontalScrollbarBarColor = true;
            this.panelOpciones.HorizontalScrollbarHighlightOnWheel = false;
            this.panelOpciones.HorizontalScrollbarSize = 10;
            this.panelOpciones.Location = new System.Drawing.Point(0, 130);
            this.panelOpciones.Name = "panelOpciones";
            this.panelOpciones.Size = new System.Drawing.Size(206, 605);
            this.panelOpciones.TabIndex = 1;
            this.panelOpciones.VerticalScrollbar = true;
            this.panelOpciones.VerticalScrollbarBarColor = true;
            this.panelOpciones.VerticalScrollbarHighlightOnWheel = false;
            this.panelOpciones.VerticalScrollbarSize = 10;
            // 
            // panelEnvios
            // 
            this.panelEnvios.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panelEnvios.Controls.Add(this.btnRecepcionarPedidoDeposito);
            this.panelEnvios.Controls.Add(this.btnRealizarPedidoDeposito);
            this.panelEnvios.Controls.Add(this.btnDespacharEnvio);
            this.panelEnvios.Controls.Add(this.btnVerEnvios);
            this.panelEnvios.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelEnvios.HorizontalScrollbarBarColor = true;
            this.panelEnvios.HorizontalScrollbarHighlightOnWheel = false;
            this.panelEnvios.HorizontalScrollbarSize = 10;
            this.panelEnvios.Location = new System.Drawing.Point(0, 1197);
            this.panelEnvios.Name = "panelEnvios";
            this.panelEnvios.Size = new System.Drawing.Size(187, 153);
            this.panelEnvios.TabIndex = 9;
            this.panelEnvios.VerticalScrollbarBarColor = true;
            this.panelEnvios.VerticalScrollbarHighlightOnWheel = false;
            this.panelEnvios.VerticalScrollbarSize = 10;
            // 
            // btnRecepcionarPedidoDeposito
            // 
            this.btnRecepcionarPedidoDeposito.BackColor = System.Drawing.Color.Gainsboro;
            this.btnRecepcionarPedidoDeposito.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnRecepcionarPedidoDeposito.FlatAppearance.BorderSize = 0;
            this.btnRecepcionarPedidoDeposito.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnRecepcionarPedidoDeposito.Location = new System.Drawing.Point(0, 116);
            this.btnRecepcionarPedidoDeposito.Name = "btnRecepcionarPedidoDeposito";
            this.btnRecepcionarPedidoDeposito.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnRecepcionarPedidoDeposito.Size = new System.Drawing.Size(185, 36);
            this.btnRecepcionarPedidoDeposito.TabIndex = 9;
            this.btnRecepcionarPedidoDeposito.Tag = "receive_order_deposit";
            this.btnRecepcionarPedidoDeposito.Text = "Recepcionar Pedido Deposito";
            this.btnRecepcionarPedidoDeposito.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnRecepcionarPedidoDeposito.UseVisualStyleBackColor = false;
            this.btnRecepcionarPedidoDeposito.Click += new System.EventHandler(this.btnRecepcionarPedidoDeposito_Click);
            // 
            // btnRealizarPedidoDeposito
            // 
            this.btnRealizarPedidoDeposito.BackColor = System.Drawing.Color.Gainsboro;
            this.btnRealizarPedidoDeposito.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnRealizarPedidoDeposito.FlatAppearance.BorderSize = 0;
            this.btnRealizarPedidoDeposito.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnRealizarPedidoDeposito.Location = new System.Drawing.Point(0, 80);
            this.btnRealizarPedidoDeposito.Name = "btnRealizarPedidoDeposito";
            this.btnRealizarPedidoDeposito.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnRealizarPedidoDeposito.Size = new System.Drawing.Size(185, 36);
            this.btnRealizarPedidoDeposito.TabIndex = 8;
            this.btnRealizarPedidoDeposito.Tag = "make_order_deposit";
            this.btnRealizarPedidoDeposito.Text = "Realizar Pedido Deposito";
            this.btnRealizarPedidoDeposito.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnRealizarPedidoDeposito.UseVisualStyleBackColor = false;
            this.btnRealizarPedidoDeposito.Click += new System.EventHandler(this.btnRealizarPedidoDeposito_Click);
            // 
            // btnDespacharEnvio
            // 
            this.btnDespacharEnvio.BackColor = System.Drawing.Color.Gainsboro;
            this.btnDespacharEnvio.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnDespacharEnvio.FlatAppearance.BorderSize = 0;
            this.btnDespacharEnvio.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnDespacharEnvio.Location = new System.Drawing.Point(0, 40);
            this.btnDespacharEnvio.Name = "btnDespacharEnvio";
            this.btnDespacharEnvio.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnDespacharEnvio.Size = new System.Drawing.Size(185, 40);
            this.btnDespacharEnvio.TabIndex = 7;
            this.btnDespacharEnvio.Tag = "dispatch_delivery";
            this.btnDespacharEnvio.Text = "Despachar Envio";
            this.btnDespacharEnvio.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnDespacharEnvio.UseVisualStyleBackColor = false;
            this.btnDespacharEnvio.Click += new System.EventHandler(this.btnDespacharEnvio_Click);
            // 
            // btnVerEnvios
            // 
            this.btnVerEnvios.BackColor = System.Drawing.Color.Gainsboro;
            this.btnVerEnvios.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnVerEnvios.FlatAppearance.BorderSize = 0;
            this.btnVerEnvios.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnVerEnvios.Location = new System.Drawing.Point(0, 0);
            this.btnVerEnvios.Name = "btnVerEnvios";
            this.btnVerEnvios.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnVerEnvios.Size = new System.Drawing.Size(185, 40);
            this.btnVerEnvios.TabIndex = 6;
            this.btnVerEnvios.Tag = "check_deliveries";
            this.btnVerEnvios.Text = "Ver Envios";
            this.btnVerEnvios.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnVerEnvios.UseVisualStyleBackColor = false;
            this.btnVerEnvios.Click += new System.EventHandler(this.btnVerEnvios_Click);
            // 
            // btnEnviosPanel
            // 
            this.btnEnviosPanel.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnEnviosPanel.FlatAppearance.BorderColor = System.Drawing.Color.Silver;
            this.btnEnviosPanel.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnEnviosPanel.Location = new System.Drawing.Point(0, 1157);
            this.btnEnviosPanel.Name = "btnEnviosPanel";
            this.btnEnviosPanel.Padding = new System.Windows.Forms.Padding(10, 0, 0, 0);
            this.btnEnviosPanel.Size = new System.Drawing.Size(187, 40);
            this.btnEnviosPanel.TabIndex = 8;
            this.btnEnviosPanel.Tag = "delivery_receptions";
            this.btnEnviosPanel.Text = "Envios y Recepciones";
            this.btnEnviosPanel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnEnviosPanel.Click += new System.EventHandler(this.btnEnviosPanel_Click);
            // 
            // panelCaja
            // 
            this.panelCaja.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panelCaja.Controls.Add(this.btnBuscarVentaCaja);
            this.panelCaja.Controls.Add(this.btnCancelarVentaCaja);
            this.panelCaja.Controls.Add(this.btnRecibirPago);
            this.panelCaja.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelCaja.HorizontalScrollbarBarColor = true;
            this.panelCaja.HorizontalScrollbarHighlightOnWheel = false;
            this.panelCaja.HorizontalScrollbarSize = 10;
            this.panelCaja.Location = new System.Drawing.Point(0, 1040);
            this.panelCaja.Name = "panelCaja";
            this.panelCaja.Size = new System.Drawing.Size(187, 117);
            this.panelCaja.TabIndex = 7;
            this.panelCaja.VerticalScrollbarBarColor = true;
            this.panelCaja.VerticalScrollbarHighlightOnWheel = false;
            this.panelCaja.VerticalScrollbarSize = 10;
            // 
            // btnBuscarVentaCaja
            // 
            this.btnBuscarVentaCaja.BackColor = System.Drawing.Color.Gainsboro;
            this.btnBuscarVentaCaja.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnBuscarVentaCaja.FlatAppearance.BorderSize = 0;
            this.btnBuscarVentaCaja.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnBuscarVentaCaja.Location = new System.Drawing.Point(0, 80);
            this.btnBuscarVentaCaja.Name = "btnBuscarVentaCaja";
            this.btnBuscarVentaCaja.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnBuscarVentaCaja.Size = new System.Drawing.Size(185, 40);
            this.btnBuscarVentaCaja.TabIndex = 7;
            this.btnBuscarVentaCaja.Tag = "search_sale";
            this.btnBuscarVentaCaja.Text = "Buscar Venta";
            this.btnBuscarVentaCaja.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnBuscarVentaCaja.UseVisualStyleBackColor = false;
            this.btnBuscarVentaCaja.Click += new System.EventHandler(this.btnBuscarVentaCaja_Click);
            // 
            // btnCancelarVentaCaja
            // 
            this.btnCancelarVentaCaja.BackColor = System.Drawing.Color.Gainsboro;
            this.btnCancelarVentaCaja.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnCancelarVentaCaja.FlatAppearance.BorderSize = 0;
            this.btnCancelarVentaCaja.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnCancelarVentaCaja.Location = new System.Drawing.Point(0, 40);
            this.btnCancelarVentaCaja.Name = "btnCancelarVentaCaja";
            this.btnCancelarVentaCaja.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnCancelarVentaCaja.Size = new System.Drawing.Size(185, 40);
            this.btnCancelarVentaCaja.TabIndex = 6;
            this.btnCancelarVentaCaja.Tag = "cancel_sale";
            this.btnCancelarVentaCaja.Text = "Cancelar Venta";
            this.btnCancelarVentaCaja.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCancelarVentaCaja.UseVisualStyleBackColor = false;
            this.btnCancelarVentaCaja.Click += new System.EventHandler(this.btnCancelarVentaCaja_Click);
            // 
            // btnRecibirPago
            // 
            this.btnRecibirPago.BackColor = System.Drawing.Color.Gainsboro;
            this.btnRecibirPago.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnRecibirPago.FlatAppearance.BorderSize = 0;
            this.btnRecibirPago.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnRecibirPago.Location = new System.Drawing.Point(0, 0);
            this.btnRecibirPago.Name = "btnRecibirPago";
            this.btnRecibirPago.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnRecibirPago.Size = new System.Drawing.Size(185, 40);
            this.btnRecibirPago.TabIndex = 5;
            this.btnRecibirPago.Tag = "receive_payment";
            this.btnRecibirPago.Text = "Recibir Pago";
            this.btnRecibirPago.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnRecibirPago.UseVisualStyleBackColor = false;
            this.btnRecibirPago.Click += new System.EventHandler(this.btnRecibirPago_Click);
            // 
            // btnCajaPanel
            // 
            this.btnCajaPanel.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnCajaPanel.FlatAppearance.BorderColor = System.Drawing.Color.Silver;
            this.btnCajaPanel.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnCajaPanel.Location = new System.Drawing.Point(0, 1000);
            this.btnCajaPanel.Name = "btnCajaPanel";
            this.btnCajaPanel.Padding = new System.Windows.Forms.Padding(10, 0, 0, 0);
            this.btnCajaPanel.Size = new System.Drawing.Size(187, 40);
            this.btnCajaPanel.TabIndex = 6;
            this.btnCajaPanel.Tag = "cash_register";
            this.btnCajaPanel.Text = "Caja";
            this.btnCajaPanel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCajaPanel.Click += new System.EventHandler(this.btnCajaPanel_Click);
            // 
            // panelDeposito
            // 
            this.panelDeposito.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panelDeposito.Controls.Add(this.btnVerInventario);
            this.panelDeposito.Controls.Add(this.btnPenalizarProveedor);
            this.panelDeposito.Controls.Add(this.btnRegistrarEntrada);
            this.panelDeposito.Controls.Add(this.btnRealizarPedidoProveedor);
            this.panelDeposito.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelDeposito.HorizontalScrollbarBarColor = true;
            this.panelDeposito.HorizontalScrollbarHighlightOnWheel = false;
            this.panelDeposito.HorizontalScrollbarSize = 10;
            this.panelDeposito.Location = new System.Drawing.Point(0, 841);
            this.panelDeposito.Name = "panelDeposito";
            this.panelDeposito.Size = new System.Drawing.Size(187, 159);
            this.panelDeposito.TabIndex = 5;
            this.panelDeposito.VerticalScrollbarBarColor = true;
            this.panelDeposito.VerticalScrollbarHighlightOnWheel = false;
            this.panelDeposito.VerticalScrollbarSize = 10;
            // 
            // btnVerInventario
            // 
            this.btnVerInventario.BackColor = System.Drawing.Color.Gainsboro;
            this.btnVerInventario.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnVerInventario.FlatAppearance.BorderSize = 0;
            this.btnVerInventario.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnVerInventario.Location = new System.Drawing.Point(0, 120);
            this.btnVerInventario.Name = "btnVerInventario";
            this.btnVerInventario.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnVerInventario.Size = new System.Drawing.Size(185, 40);
            this.btnVerInventario.TabIndex = 13;
            this.btnVerInventario.Tag = "check_inventory";
            this.btnVerInventario.Text = "Ver Inventario";
            this.btnVerInventario.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnVerInventario.UseVisualStyleBackColor = false;
            this.btnVerInventario.Click += new System.EventHandler(this.btnVerInventario_Click);
            // 
            // btnPenalizarProveedor
            // 
            this.btnPenalizarProveedor.BackColor = System.Drawing.Color.Gainsboro;
            this.btnPenalizarProveedor.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnPenalizarProveedor.FlatAppearance.BorderSize = 0;
            this.btnPenalizarProveedor.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnPenalizarProveedor.Location = new System.Drawing.Point(0, 80);
            this.btnPenalizarProveedor.Name = "btnPenalizarProveedor";
            this.btnPenalizarProveedor.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnPenalizarProveedor.Size = new System.Drawing.Size(185, 40);
            this.btnPenalizarProveedor.TabIndex = 11;
            this.btnPenalizarProveedor.Tag = "penalize_vendor";
            this.btnPenalizarProveedor.Text = "Penalizar Proveedor";
            this.btnPenalizarProveedor.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnPenalizarProveedor.UseVisualStyleBackColor = false;
            this.btnPenalizarProveedor.Click += new System.EventHandler(this.btnPenalizarProveedor_Click);
            // 
            // btnRealizarPedidoProveedor
            // 
            this.btnRealizarPedidoProveedor.BackColor = System.Drawing.Color.Gainsboro;
            this.btnRealizarPedidoProveedor.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnRealizarPedidoProveedor.FlatAppearance.BorderSize = 0;
            this.btnRealizarPedidoProveedor.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnRealizarPedidoProveedor.Location = new System.Drawing.Point(0, 0);
            this.btnRealizarPedidoProveedor.Name = "btnRealizarPedidoProveedor";
            this.btnRealizarPedidoProveedor.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnRealizarPedidoProveedor.Size = new System.Drawing.Size(185, 40);
            this.btnRealizarPedidoProveedor.TabIndex = 12;
            this.btnRealizarPedidoProveedor.Tag = "make_order_vendor";
            this.btnRealizarPedidoProveedor.Text = "Realizar Pedido Proveedor";
            this.btnRealizarPedidoProveedor.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnRealizarPedidoProveedor.UseVisualStyleBackColor = false;
            this.btnRealizarPedidoProveedor.Click += new System.EventHandler(this.btnRealizarPedidoProveedor_Click);
            // 
            // btnRegistrarEntrada
            // 
            this.btnRegistrarEntrada.BackColor = System.Drawing.Color.Gainsboro;
            this.btnRegistrarEntrada.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnRegistrarEntrada.FlatAppearance.BorderSize = 0;
            this.btnRegistrarEntrada.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnRegistrarEntrada.Location = new System.Drawing.Point(0, 40);
            this.btnRegistrarEntrada.Name = "btnRegistrarEntrada";
            this.btnRegistrarEntrada.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnRegistrarEntrada.Size = new System.Drawing.Size(185, 40);
            this.btnRegistrarEntrada.TabIndex = 10;
            this.btnRegistrarEntrada.Tag = "register_products_entry";
            this.btnRegistrarEntrada.Text = "Registrar Entrada de Productos";
            this.btnRegistrarEntrada.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnRegistrarEntrada.UseVisualStyleBackColor = false;
            this.btnRegistrarEntrada.Click += new System.EventHandler(this.btnRegistrarEntrada_Click);
            // 
            // btnDepositoPanel
            // 
            this.btnDepositoPanel.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnDepositoPanel.FlatAppearance.BorderColor = System.Drawing.Color.Silver;
            this.btnDepositoPanel.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnDepositoPanel.Location = new System.Drawing.Point(0, 801);
            this.btnDepositoPanel.Name = "btnDepositoPanel";
            this.btnDepositoPanel.Padding = new System.Windows.Forms.Padding(10, 0, 0, 0);
            this.btnDepositoPanel.Size = new System.Drawing.Size(187, 40);
            this.btnDepositoPanel.TabIndex = 4;
            this.btnDepositoPanel.Tag = "deposit";
            this.btnDepositoPanel.Text = "Deposito";
            this.btnDepositoPanel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnDepositoPanel.Click += new System.EventHandler(this.btnDepositoPanel_Click);
            // 
            // panelSucursal
            // 
            this.panelSucursal.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.panelSucursal.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panelSucursal.Controls.Add(this.btnVerQuejas);
            this.panelSucursal.Controls.Add(this.btnCrearQueja);
            this.panelSucursal.Controls.Add(this.btnCancelarVentaVenta);
            this.panelSucursal.Controls.Add(this.btnBuscarVenta);
            this.panelSucursal.Controls.Add(this.btnRealizarVenta);
            this.panelSucursal.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelSucursal.HorizontalScrollbarBarColor = true;
            this.panelSucursal.HorizontalScrollbarHighlightOnWheel = false;
            this.panelSucursal.HorizontalScrollbarSize = 10;
            this.panelSucursal.Location = new System.Drawing.Point(0, 601);
            this.panelSucursal.Name = "panelSucursal";
            this.panelSucursal.Size = new System.Drawing.Size(187, 200);
            this.panelSucursal.TabIndex = 3;
            this.panelSucursal.VerticalScrollbarBarColor = true;
            this.panelSucursal.VerticalScrollbarHighlightOnWheel = false;
            this.panelSucursal.VerticalScrollbarSize = 10;
            // 
            // btnVerQuejas
            // 
            this.btnVerQuejas.BackColor = System.Drawing.Color.Gainsboro;
            this.btnVerQuejas.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnVerQuejas.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.btnVerQuejas.FlatAppearance.BorderSize = 0;
            this.btnVerQuejas.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnVerQuejas.Location = new System.Drawing.Point(0, 160);
            this.btnVerQuejas.Name = "btnVerQuejas";
            this.btnVerQuejas.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnVerQuejas.Size = new System.Drawing.Size(185, 40);
            this.btnVerQuejas.TabIndex = 11;
            this.btnVerQuejas.Tag = "check_complaints";
            this.btnVerQuejas.Text = "Ver Quejas";
            this.btnVerQuejas.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnVerQuejas.UseVisualStyleBackColor = false;
            this.btnVerQuejas.Click += new System.EventHandler(this.btnVerQuejas_Click);
            // 
            // btnCrearQueja
            // 
            this.btnCrearQueja.BackColor = System.Drawing.Color.Gainsboro;
            this.btnCrearQueja.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnCrearQueja.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.btnCrearQueja.FlatAppearance.BorderSize = 0;
            this.btnCrearQueja.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnCrearQueja.Location = new System.Drawing.Point(0, 120);
            this.btnCrearQueja.Name = "btnCrearQueja";
            this.btnCrearQueja.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnCrearQueja.Size = new System.Drawing.Size(185, 40);
            this.btnCrearQueja.TabIndex = 9;
            this.btnCrearQueja.Tag = "create_complaint";
            this.btnCrearQueja.Text = "Crear Queja";
            this.btnCrearQueja.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCrearQueja.UseVisualStyleBackColor = false;
            this.btnCrearQueja.Click += new System.EventHandler(this.btnCrearQueja_Click);
            // 
            // btnCancelarVentaVenta
            // 
            this.btnCancelarVentaVenta.BackColor = System.Drawing.Color.Gainsboro;
            this.btnCancelarVentaVenta.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnCancelarVentaVenta.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.btnCancelarVentaVenta.FlatAppearance.BorderSize = 0;
            this.btnCancelarVentaVenta.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnCancelarVentaVenta.Location = new System.Drawing.Point(0, 80);
            this.btnCancelarVentaVenta.Name = "btnCancelarVentaVenta";
            this.btnCancelarVentaVenta.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnCancelarVentaVenta.Size = new System.Drawing.Size(185, 40);
            this.btnCancelarVentaVenta.TabIndex = 10;
            this.btnCancelarVentaVenta.Tag = "cancel_sale";
            this.btnCancelarVentaVenta.Text = "Cancelar Venta";
            this.btnCancelarVentaVenta.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCancelarVentaVenta.UseVisualStyleBackColor = false;
            this.btnCancelarVentaVenta.Click += new System.EventHandler(this.btnCancelarVentaVenta_Click);
            // 
            // btnBuscarVenta
            // 
            this.btnBuscarVenta.BackColor = System.Drawing.Color.Gainsboro;
            this.btnBuscarVenta.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnBuscarVenta.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.btnBuscarVenta.FlatAppearance.BorderSize = 0;
            this.btnBuscarVenta.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnBuscarVenta.Location = new System.Drawing.Point(0, 40);
            this.btnBuscarVenta.Name = "btnBuscarVenta";
            this.btnBuscarVenta.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnBuscarVenta.Size = new System.Drawing.Size(185, 40);
            this.btnBuscarVenta.TabIndex = 8;
            this.btnBuscarVenta.Tag = "search_sale";
            this.btnBuscarVenta.Text = "Buscar Venta";
            this.btnBuscarVenta.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnBuscarVenta.UseVisualStyleBackColor = false;
            this.btnBuscarVenta.Click += new System.EventHandler(this.btnBuscarVenta_Click);
            // 
            // btnRealizarVenta
            // 
            this.btnRealizarVenta.BackColor = System.Drawing.Color.Gainsboro;
            this.btnRealizarVenta.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnRealizarVenta.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.btnRealizarVenta.FlatAppearance.BorderSize = 0;
            this.btnRealizarVenta.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnRealizarVenta.Location = new System.Drawing.Point(0, 0);
            this.btnRealizarVenta.Name = "btnRealizarVenta";
            this.btnRealizarVenta.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnRealizarVenta.Size = new System.Drawing.Size(185, 40);
            this.btnRealizarVenta.TabIndex = 7;
            this.btnRealizarVenta.Tag = "make_sale";
            this.btnRealizarVenta.Text = "Realizar Venta";
            this.btnRealizarVenta.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnRealizarVenta.UseVisualStyleBackColor = false;
            this.btnRealizarVenta.Click += new System.EventHandler(this.btnRealizarVenta_Click);
            // 
            // btnSucursalPanel
            // 
            this.btnSucursalPanel.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnSucursalPanel.FlatAppearance.BorderColor = System.Drawing.Color.Silver;
            this.btnSucursalPanel.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSucursalPanel.Location = new System.Drawing.Point(0, 561);
            this.btnSucursalPanel.Name = "btnSucursalPanel";
            this.btnSucursalPanel.Padding = new System.Windows.Forms.Padding(10, 0, 0, 0);
            this.btnSucursalPanel.Size = new System.Drawing.Size(187, 40);
            this.btnSucursalPanel.TabIndex = 2;
            this.btnSucursalPanel.Tag = "branch";
            this.btnSucursalPanel.Text = "Sucursal";
            this.btnSucursalPanel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSucursalPanel.Click += new System.EventHandler(this.btnSucursalPanel_Click);
            // 
            // panelAdminGestion
            // 
            this.panelAdminGestion.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.panelAdminGestion.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panelAdminGestion.Controls.Add(this.btnProducto);
            this.panelAdminGestion.Controls.Add(this.btnFamilia);
            this.panelAdminGestion.Controls.Add(this.btnSucursal);
            this.panelAdminGestion.Controls.Add(this.btnDeposito);
            this.panelAdminGestion.Controls.Add(this.btnProveedor);
            this.panelAdminGestion.Controls.Add(this.btnEmpleado);
            this.panelAdminGestion.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelAdminGestion.HorizontalScrollbarBarColor = true;
            this.panelAdminGestion.HorizontalScrollbarHighlightOnWheel = false;
            this.panelAdminGestion.HorizontalScrollbarSize = 10;
            this.panelAdminGestion.Location = new System.Drawing.Point(0, 320);
            this.panelAdminGestion.Name = "panelAdminGestion";
            this.panelAdminGestion.Size = new System.Drawing.Size(187, 241);
            this.panelAdminGestion.TabIndex = 12;
            this.panelAdminGestion.VerticalScrollbarBarColor = true;
            this.panelAdminGestion.VerticalScrollbarHighlightOnWheel = false;
            this.panelAdminGestion.VerticalScrollbarSize = 10;
            // 
            // btnProducto
            // 
            this.btnProducto.BackColor = System.Drawing.Color.Gainsboro;
            this.btnProducto.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnProducto.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.btnProducto.FlatAppearance.BorderSize = 0;
            this.btnProducto.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnProducto.Location = new System.Drawing.Point(0, 200);
            this.btnProducto.Name = "btnProducto";
            this.btnProducto.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnProducto.Size = new System.Drawing.Size(185, 40);
            this.btnProducto.TabIndex = 13;
            this.btnProducto.Tag = "product";
            this.btnProducto.Text = "Producto";
            this.btnProducto.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnProducto.UseVisualStyleBackColor = false;
            this.btnProducto.Click += new System.EventHandler(this.btnProducto_Click);
            // 
            // btnFamilia
            // 
            this.btnFamilia.BackColor = System.Drawing.Color.Gainsboro;
            this.btnFamilia.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnFamilia.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.btnFamilia.FlatAppearance.BorderSize = 0;
            this.btnFamilia.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnFamilia.Location = new System.Drawing.Point(0, 160);
            this.btnFamilia.Name = "btnFamilia";
            this.btnFamilia.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnFamilia.Size = new System.Drawing.Size(185, 40);
            this.btnFamilia.TabIndex = 12;
            this.btnFamilia.Tag = "family";
            this.btnFamilia.Text = "Familia";
            this.btnFamilia.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnFamilia.UseVisualStyleBackColor = false;
            this.btnFamilia.Click += new System.EventHandler(this.btnFamilia_Click);
            // 
            // btnSucursal
            // 
            this.btnSucursal.BackColor = System.Drawing.Color.Gainsboro;
            this.btnSucursal.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnSucursal.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.btnSucursal.FlatAppearance.BorderSize = 0;
            this.btnSucursal.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSucursal.Location = new System.Drawing.Point(0, 120);
            this.btnSucursal.Name = "btnSucursal";
            this.btnSucursal.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnSucursal.Size = new System.Drawing.Size(185, 40);
            this.btnSucursal.TabIndex = 9;
            this.btnSucursal.Tag = "branch";
            this.btnSucursal.Text = "Sucursal";
            this.btnSucursal.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSucursal.UseVisualStyleBackColor = false;
            this.btnSucursal.Click += new System.EventHandler(this.btnSucursal_Click);
            // 
            // btnDeposito
            // 
            this.btnDeposito.BackColor = System.Drawing.Color.Gainsboro;
            this.btnDeposito.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnDeposito.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.btnDeposito.FlatAppearance.BorderSize = 0;
            this.btnDeposito.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnDeposito.Location = new System.Drawing.Point(0, 80);
            this.btnDeposito.Name = "btnDeposito";
            this.btnDeposito.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnDeposito.Size = new System.Drawing.Size(185, 40);
            this.btnDeposito.TabIndex = 10;
            this.btnDeposito.Tag = "deposit";
            this.btnDeposito.Text = "Deposito";
            this.btnDeposito.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnDeposito.UseVisualStyleBackColor = false;
            this.btnDeposito.Click += new System.EventHandler(this.btnDeposito_Click);
            // 
            // btnProveedor
            // 
            this.btnProveedor.BackColor = System.Drawing.Color.Gainsboro;
            this.btnProveedor.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnProveedor.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.btnProveedor.FlatAppearance.BorderSize = 0;
            this.btnProveedor.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnProveedor.Location = new System.Drawing.Point(0, 40);
            this.btnProveedor.Name = "btnProveedor";
            this.btnProveedor.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnProveedor.Size = new System.Drawing.Size(185, 40);
            this.btnProveedor.TabIndex = 8;
            this.btnProveedor.Tag = "vendor";
            this.btnProveedor.Text = "Proveedor";
            this.btnProveedor.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnProveedor.UseVisualStyleBackColor = false;
            this.btnProveedor.Click += new System.EventHandler(this.btnProveedor_Click);
            // 
            // btnEmpleado
            // 
            this.btnEmpleado.BackColor = System.Drawing.Color.Gainsboro;
            this.btnEmpleado.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnEmpleado.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.btnEmpleado.FlatAppearance.BorderSize = 0;
            this.btnEmpleado.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnEmpleado.Location = new System.Drawing.Point(0, 0);
            this.btnEmpleado.Name = "btnEmpleado";
            this.btnEmpleado.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnEmpleado.Size = new System.Drawing.Size(185, 40);
            this.btnEmpleado.TabIndex = 7;
            this.btnEmpleado.Tag = "employee";
            this.btnEmpleado.Text = "Empleado";
            this.btnEmpleado.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnEmpleado.UseVisualStyleBackColor = false;
            this.btnEmpleado.Click += new System.EventHandler(this.btnEmpleado_Click);
            // 
            // btnAdminGestion
            // 
            this.btnAdminGestion.BackColor = System.Drawing.Color.White;
            this.btnAdminGestion.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnAdminGestion.FlatAppearance.BorderColor = System.Drawing.Color.Silver;
            this.btnAdminGestion.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnAdminGestion.Location = new System.Drawing.Point(0, 280);
            this.btnAdminGestion.Name = "btnAdminGestion";
            this.btnAdminGestion.Padding = new System.Windows.Forms.Padding(10, 0, 0, 0);
            this.btnAdminGestion.Size = new System.Drawing.Size(187, 40);
            this.btnAdminGestion.TabIndex = 11;
            this.btnAdminGestion.Tag = "admin_manage";
            this.btnAdminGestion.Text = "Administrador - Gestion";
            this.btnAdminGestion.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnAdminGestion.UseVisualStyleBackColor = false;
            this.btnAdminGestion.Click += new System.EventHandler(this.btnAdminGestion_Click);
            // 
            // panelAdminConfig
            // 
            this.panelAdminConfig.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.panelAdminConfig.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panelAdminConfig.Controls.Add(this.btnExportReport);
            this.panelAdminConfig.Controls.Add(this.btnConfigurarEdificio);
            this.panelAdminConfig.Controls.Add(this.btnIdioma);
            this.panelAdminConfig.Controls.Add(this.btnRestaurarDv);
            this.panelAdminConfig.Controls.Add(this.btnBitacora);
            this.panelAdminConfig.Controls.Add(this.btnBackup);
            this.panelAdminConfig.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelAdminConfig.HorizontalScrollbarBarColor = true;
            this.panelAdminConfig.HorizontalScrollbarHighlightOnWheel = false;
            this.panelAdminConfig.HorizontalScrollbarSize = 10;
            this.panelAdminConfig.Location = new System.Drawing.Point(0, 40);
            this.panelAdminConfig.Name = "panelAdminConfig";
            this.panelAdminConfig.Size = new System.Drawing.Size(187, 240);
            this.panelAdminConfig.TabIndex = 13;
            this.panelAdminConfig.VerticalScrollbarBarColor = true;
            this.panelAdminConfig.VerticalScrollbarHighlightOnWheel = false;
            this.panelAdminConfig.VerticalScrollbarSize = 10;
            // 
            // btnExportReport
            // 
            this.btnExportReport.BackColor = System.Drawing.Color.Gainsboro;
            this.btnExportReport.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnExportReport.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.btnExportReport.FlatAppearance.BorderSize = 0;
            this.btnExportReport.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnExportReport.Location = new System.Drawing.Point(0, 200);
            this.btnExportReport.Name = "btnExportReport";
            this.btnExportReport.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnExportReport.Size = new System.Drawing.Size(185, 40);
            this.btnExportReport.TabIndex = 12;
            this.btnExportReport.Tag = "export_report";
            this.btnExportReport.Text = "Exportar Reporte";
            this.btnExportReport.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnExportReport.UseVisualStyleBackColor = false;
            this.btnExportReport.Click += new System.EventHandler(this.btnExportReport_Click);
            // 
            // btnConfigurarEdificio
            // 
            this.btnConfigurarEdificio.BackColor = System.Drawing.Color.Gainsboro;
            this.btnConfigurarEdificio.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnConfigurarEdificio.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.btnConfigurarEdificio.FlatAppearance.BorderSize = 0;
            this.btnConfigurarEdificio.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnConfigurarEdificio.Location = new System.Drawing.Point(0, 160);
            this.btnConfigurarEdificio.Name = "btnConfigurarEdificio";
            this.btnConfigurarEdificio.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnConfigurarEdificio.Size = new System.Drawing.Size(185, 40);
            this.btnConfigurarEdificio.TabIndex = 9;
            this.btnConfigurarEdificio.Tag = "building";
            this.btnConfigurarEdificio.Text = "Edificio";
            this.btnConfigurarEdificio.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnConfigurarEdificio.UseVisualStyleBackColor = false;
            this.btnConfigurarEdificio.Click += new System.EventHandler(this.btnConfigurarEdificio_Click);
            // 
            // btnIdioma
            // 
            this.btnIdioma.BackColor = System.Drawing.Color.Gainsboro;
            this.btnIdioma.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnIdioma.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.btnIdioma.FlatAppearance.BorderSize = 0;
            this.btnIdioma.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnIdioma.Location = new System.Drawing.Point(0, 120);
            this.btnIdioma.Name = "btnIdioma";
            this.btnIdioma.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnIdioma.Size = new System.Drawing.Size(185, 40);
            this.btnIdioma.TabIndex = 10;
            this.btnIdioma.Tag = "language";
            this.btnIdioma.Text = "Idiomas";
            this.btnIdioma.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnIdioma.UseVisualStyleBackColor = false;
            this.btnIdioma.Click += new System.EventHandler(this.btnIdioma_Click);
            // 
            // btnRestaurarDv
            // 
            this.btnRestaurarDv.BackColor = System.Drawing.Color.Gainsboro;
            this.btnRestaurarDv.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnRestaurarDv.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.btnRestaurarDv.FlatAppearance.BorderSize = 0;
            this.btnRestaurarDv.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnRestaurarDv.Location = new System.Drawing.Point(0, 80);
            this.btnRestaurarDv.Name = "btnRestaurarDv";
            this.btnRestaurarDv.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnRestaurarDv.Size = new System.Drawing.Size(185, 40);
            this.btnRestaurarDv.TabIndex = 8;
            this.btnRestaurarDv.Tag = "rest_dv";
            this.btnRestaurarDv.Text = "Restaurar DV";
            this.btnRestaurarDv.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnRestaurarDv.UseVisualStyleBackColor = false;
            this.btnRestaurarDv.Click += new System.EventHandler(this.btnRestaurarDv_Click);
            // 
            // btnBitacora
            // 
            this.btnBitacora.BackColor = System.Drawing.Color.Gainsboro;
            this.btnBitacora.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnBitacora.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.btnBitacora.FlatAppearance.BorderSize = 0;
            this.btnBitacora.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnBitacora.Location = new System.Drawing.Point(0, 40);
            this.btnBitacora.Name = "btnBitacora";
            this.btnBitacora.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnBitacora.Size = new System.Drawing.Size(185, 40);
            this.btnBitacora.TabIndex = 7;
            this.btnBitacora.Tag = "bitacore";
            this.btnBitacora.Text = "Bitacora";
            this.btnBitacora.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnBitacora.UseVisualStyleBackColor = false;
            this.btnBitacora.Click += new System.EventHandler(this.btnBitacora_Click);
            // 
            // btnBackup
            // 
            this.btnBackup.BackColor = System.Drawing.Color.Gainsboro;
            this.btnBackup.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnBackup.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.btnBackup.FlatAppearance.BorderSize = 0;
            this.btnBackup.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnBackup.Location = new System.Drawing.Point(0, 0);
            this.btnBackup.Name = "btnBackup";
            this.btnBackup.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnBackup.Size = new System.Drawing.Size(185, 40);
            this.btnBackup.TabIndex = 11;
            this.btnBackup.Tag = "";
            this.btnBackup.Text = "Backup";
            this.btnBackup.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnBackup.UseVisualStyleBackColor = false;
            this.btnBackup.Click += new System.EventHandler(this.btnBackup_Click);
            // 
            // btnAdminConfig
            // 
            this.btnAdminConfig.BackColor = System.Drawing.Color.White;
            this.btnAdminConfig.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnAdminConfig.FlatAppearance.BorderColor = System.Drawing.Color.Silver;
            this.btnAdminConfig.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnAdminConfig.Location = new System.Drawing.Point(0, 0);
            this.btnAdminConfig.Name = "btnAdminConfig";
            this.btnAdminConfig.Padding = new System.Windows.Forms.Padding(10, 0, 0, 0);
            this.btnAdminConfig.Size = new System.Drawing.Size(187, 40);
            this.btnAdminConfig.TabIndex = 12;
            this.btnAdminConfig.Tag = "admin_config";
            this.btnAdminConfig.Text = "Administrador - Configuracion";
            this.btnAdminConfig.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnAdminConfig.UseVisualStyleBackColor = false;
            this.btnAdminConfig.Click += new System.EventHandler(this.btnAdminConfig_Click);
            // 
            // panelImagen
            // 
            this.panelImagen.Controls.Add(this.picLogo);
            this.panelImagen.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelImagen.HorizontalScrollbarBarColor = true;
            this.panelImagen.HorizontalScrollbarHighlightOnWheel = false;
            this.panelImagen.HorizontalScrollbarSize = 10;
            this.panelImagen.Location = new System.Drawing.Point(0, 0);
            this.panelImagen.Name = "panelImagen";
            this.panelImagen.Size = new System.Drawing.Size(206, 130);
            this.panelImagen.TabIndex = 10;
            this.panelImagen.VerticalScrollbarBarColor = true;
            this.panelImagen.VerticalScrollbarHighlightOnWheel = false;
            this.panelImagen.VerticalScrollbarSize = 10;
            // 
            // picLogo
            // 
            this.picLogo.Image = ((System.Drawing.Image)(resources.GetObject("picLogo.Image")));
            this.picLogo.Location = new System.Drawing.Point(0, 0);
            this.picLogo.Name = "picLogo";
            this.picLogo.Size = new System.Drawing.Size(208, 130);
            this.picLogo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.picLogo.TabIndex = 2;
            this.picLogo.TabStop = false;
            this.picLogo.Click += new System.EventHandler(this.picLogo_Click);
            // 
            // Mdi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1382, 817);
            this.ControlBox = false;
            this.Controls.Add(this.pbLogout);
            this.Controls.Add(this.panelContainer);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.panelSidebar);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "Mdi";
            this.Resizable = false;
            this.Load += new System.EventHandler(this.Mdi_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pbLogout)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panelSidebar.ResumeLayout(false);
            this.panelOpciones.ResumeLayout(false);
            this.panelEnvios.ResumeLayout(false);
            this.panelCaja.ResumeLayout(false);
            this.panelDeposito.ResumeLayout(false);
            this.panelSucursal.ResumeLayout(false);
            this.panelAdminGestion.ResumeLayout(false);
            this.panelAdminConfig.ResumeLayout(false);
            this.panelImagen.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.picLogo)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion
        private MetroFramework.Controls.MetroPanel panelOpciones;
        private MetroFramework.Controls.MetroPanel panelSucursal;
        private Button btnSucursalPanel;
        private MetroFramework.Controls.MetroPanel panelContainer;
        private System.Windows.Forms.Button btnDepositoPanel;
        private System.Windows.Forms.Button btnVerQuejas;
        private System.Windows.Forms.Button btnCancelarVentaVenta;
        private System.Windows.Forms.Button btnCrearQueja;
        private System.Windows.Forms.Button btnBuscarVenta;
        private System.Windows.Forms.Button btnRealizarVenta;
        private MetroFramework.Controls.MetroPanel panelDeposito;
        private System.Windows.Forms.Button btnCajaPanel;
        private System.Windows.Forms.Button btnVerInventario;
        private System.Windows.Forms.Button btnRealizarPedidoProveedor;
        private System.Windows.Forms.Button btnPenalizarProveedor;
        private System.Windows.Forms.Button btnRegistrarEntrada;
        private MetroFramework.Controls.MetroPanel panelCaja;
        private System.Windows.Forms.Button btnBuscarVentaCaja;
        private System.Windows.Forms.Button btnCancelarVentaCaja;
        private System.Windows.Forms.Button btnRecibirPago;
        private MetroFramework.Controls.MetroPanel panelEnvios;
        private System.Windows.Forms.Button btnEnviosPanel;
        private System.Windows.Forms.Button btnRecepcionarPedidoDeposito;
        private System.Windows.Forms.Button btnRealizarPedidoDeposito;
        private System.Windows.Forms.Button btnDespacharEnvio;
        private System.Windows.Forms.Button btnVerEnvios;
        private MetroFramework.Controls.MetroPanel panelImagen;
        private System.Windows.Forms.Button btnAdminGestion;
        private System.Windows.Forms.PictureBox picLogo;
        private System.Windows.Forms.PictureBox pbLogout;
        private MetroFramework.Controls.MetroPanel panelSidebar;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label lblIdioma;
        private MetroFramework.Controls.MetroComboBox cbIdiomas;
        private MetroFramework.Controls.MetroButton btnAyuda;
        private Button btnAdminConfig;
        private MetroFramework.Controls.MetroPanel panelAdminConfig;
        private Button btnBackup;
        private Button btnConfigurarEdificio;
        private Button btnIdioma;
        private Button btnRestaurarDv;
        private Button btnBitacora;
        private MetroFramework.Controls.MetroPanel panelAdminGestion;
        private Button btnSucursal;
        private Button btnDeposito;
        private Button btnProveedor;
        private Button btnEmpleado;
        private Button btnExportReport;
        private Button btnProducto;
        private Button btnFamilia;
    }
}