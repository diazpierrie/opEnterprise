
using System.Windows.Controls;
using Button = System.Windows.Forms.Button;

namespace UI
{
    partial class MDI
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MDI));
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
            this.btnAdmin = new System.Windows.Forms.Button();
            this.panelImagen = new MetroFramework.Controls.MetroPanel();
            this.picLogo = new System.Windows.Forms.PictureBox();
            this.panelContainer = new MetroFramework.Controls.MetroPanel();
            this.pbLogout = new System.Windows.Forms.PictureBox();
            this.panelSidebar = new MetroFramework.Controls.MetroPanel();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnAyuda = new MetroFramework.Controls.MetroButton();
            this.lblIdioma = new System.Windows.Forms.Label();
            this.cbIdiomas = new MetroFramework.Controls.MetroComboBox();
            this.panelOpciones.SuspendLayout();
            this.panelEnvios.SuspendLayout();
            this.panelCaja.SuspendLayout();
            this.panelDeposito.SuspendLayout();
            this.panelSucursal.SuspendLayout();
            this.panelImagen.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picLogo)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pbLogout)).BeginInit();
            this.panelSidebar.SuspendLayout();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // panelOpciones
            // 
            this.panelOpciones.AutoScroll = true;
            this.panelOpciones.Controls.Add(this.panelEnvios);
            this.panelOpciones.Controls.Add(this.btnEnviosPanel);
            this.panelOpciones.Controls.Add(this.panelCaja);
            this.panelOpciones.Controls.Add(this.btnCajaPanel);
            this.panelOpciones.Controls.Add(this.panelDeposito);
            this.panelOpciones.Controls.Add(this.btnDepositoPanel);
            this.panelOpciones.Controls.Add(this.panelSucursal);
            this.panelOpciones.Controls.Add(this.btnSucursalPanel);
            this.panelOpciones.Controls.Add(this.btnAdmin);
            this.panelOpciones.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelOpciones.HorizontalScrollbar = true;
            this.panelOpciones.HorizontalScrollbarBarColor = true;
            this.panelOpciones.HorizontalScrollbarHighlightOnWheel = false;
            this.panelOpciones.HorizontalScrollbarSize = 10;
            this.panelOpciones.Location = new System.Drawing.Point(0, 130);
            this.panelOpciones.Name = "panelOpciones";
            this.panelOpciones.Size = new System.Drawing.Size(183, 1020);
            this.panelOpciones.TabIndex = 1;
            this.panelOpciones.VerticalScrollbar = true;
            this.panelOpciones.VerticalScrollbarBarColor = true;
            this.panelOpciones.VerticalScrollbarHighlightOnWheel = false;
            this.panelOpciones.VerticalScrollbarSize = 10;
            // 
            // panelEnvios
            // 
            this.panelEnvios.Controls.Add(this.btnRecepcionarPedidoDeposito);
            this.panelEnvios.Controls.Add(this.btnRealizarPedidoDeposito);
            this.panelEnvios.Controls.Add(this.btnDespacharEnvio);
            this.panelEnvios.Controls.Add(this.btnVerEnvios);
            this.panelEnvios.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelEnvios.HorizontalScrollbarBarColor = true;
            this.panelEnvios.HorizontalScrollbarHighlightOnWheel = false;
            this.panelEnvios.HorizontalScrollbarSize = 10;
            this.panelEnvios.Location = new System.Drawing.Point(0, 674);
            this.panelEnvios.Name = "panelEnvios";
            this.panelEnvios.Size = new System.Drawing.Size(183, 158);
            this.panelEnvios.TabIndex = 9;
            this.panelEnvios.VerticalScrollbarBarColor = true;
            this.panelEnvios.VerticalScrollbarHighlightOnWheel = false;
            this.panelEnvios.VerticalScrollbarSize = 10;
            // 
            // btnRecepcionarPedidoDeposito
            // 
            this.btnRecepcionarPedidoDeposito.BackColor = System.Drawing.Color.LightGray;
            this.btnRecepcionarPedidoDeposito.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnRecepcionarPedidoDeposito.FlatAppearance.BorderSize = 0;
            this.btnRecepcionarPedidoDeposito.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnRecepcionarPedidoDeposito.Location = new System.Drawing.Point(0, 120);
            this.btnRecepcionarPedidoDeposito.Name = "btnRecepcionarPedidoDeposito";
            this.btnRecepcionarPedidoDeposito.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnRecepcionarPedidoDeposito.Size = new System.Drawing.Size(183, 40);
            this.btnRecepcionarPedidoDeposito.TabIndex = 9;
            this.btnRecepcionarPedidoDeposito.Tag = "receive_order_deposit";
            this.btnRecepcionarPedidoDeposito.Text = "Recepcionar Pedido Deposito";
            this.btnRecepcionarPedidoDeposito.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnRecepcionarPedidoDeposito.UseVisualStyleBackColor = false;
            this.btnRecepcionarPedidoDeposito.Click += new System.EventHandler(this.btnRecepcionarPedidoDeposito_Click);
            // 
            // btnRealizarPedidoDeposito
            // 
            this.btnRealizarPedidoDeposito.BackColor = System.Drawing.Color.LightGray;
            this.btnRealizarPedidoDeposito.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnRealizarPedidoDeposito.FlatAppearance.BorderSize = 0;
            this.btnRealizarPedidoDeposito.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnRealizarPedidoDeposito.Location = new System.Drawing.Point(0, 80);
            this.btnRealizarPedidoDeposito.Name = "btnRealizarPedidoDeposito";
            this.btnRealizarPedidoDeposito.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnRealizarPedidoDeposito.Size = new System.Drawing.Size(183, 40);
            this.btnRealizarPedidoDeposito.TabIndex = 8;
            this.btnRealizarPedidoDeposito.Tag = "make_order_deposit";
            this.btnRealizarPedidoDeposito.Text = "Realizar Pedido Deposito";
            this.btnRealizarPedidoDeposito.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnRealizarPedidoDeposito.UseVisualStyleBackColor = false;
            this.btnRealizarPedidoDeposito.Click += new System.EventHandler(this.btnRealizarPedidoDeposito_Click);
            // 
            // btnDespacharEnvio
            // 
            this.btnDespacharEnvio.BackColor = System.Drawing.Color.LightGray;
            this.btnDespacharEnvio.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnDespacharEnvio.FlatAppearance.BorderSize = 0;
            this.btnDespacharEnvio.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnDespacharEnvio.Location = new System.Drawing.Point(0, 40);
            this.btnDespacharEnvio.Name = "btnDespacharEnvio";
            this.btnDespacharEnvio.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnDespacharEnvio.Size = new System.Drawing.Size(183, 40);
            this.btnDespacharEnvio.TabIndex = 7;
            this.btnDespacharEnvio.Tag = "dispatch_delivery";
            this.btnDespacharEnvio.Text = "Despachar Envio";
            this.btnDespacharEnvio.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnDespacharEnvio.UseVisualStyleBackColor = false;
            this.btnDespacharEnvio.Click += new System.EventHandler(this.btnDespacharEnvio_Click);
            // 
            // btnVerEnvios
            // 
            this.btnVerEnvios.BackColor = System.Drawing.Color.LightGray;
            this.btnVerEnvios.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnVerEnvios.FlatAppearance.BorderSize = 0;
            this.btnVerEnvios.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnVerEnvios.Location = new System.Drawing.Point(0, 0);
            this.btnVerEnvios.Name = "btnVerEnvios";
            this.btnVerEnvios.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnVerEnvios.Size = new System.Drawing.Size(183, 40);
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
            this.btnEnviosPanel.FlatAppearance.BorderSize = 0;
            this.btnEnviosPanel.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnEnviosPanel.Location = new System.Drawing.Point(0, 634);
            this.btnEnviosPanel.Name = "btnEnviosPanel";
            this.btnEnviosPanel.Padding = new System.Windows.Forms.Padding(10, 0, 0, 0);
            this.btnEnviosPanel.Size = new System.Drawing.Size(183, 40);
            this.btnEnviosPanel.TabIndex = 8;
            this.btnEnviosPanel.Text = "Envios y Recepciones";
            this.btnEnviosPanel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnEnviosPanel.Click += new System.EventHandler(this.btnEnviosPanel_Click);
            // 
            // panelCaja
            // 
            this.panelCaja.Controls.Add(this.btnBuscarVentaCaja);
            this.panelCaja.Controls.Add(this.btnCancelarVentaCaja);
            this.panelCaja.Controls.Add(this.btnRecibirPago);
            this.panelCaja.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelCaja.HorizontalScrollbarBarColor = true;
            this.panelCaja.HorizontalScrollbarHighlightOnWheel = false;
            this.panelCaja.HorizontalScrollbarSize = 10;
            this.panelCaja.Location = new System.Drawing.Point(0, 519);
            this.panelCaja.Name = "panelCaja";
            this.panelCaja.Size = new System.Drawing.Size(183, 115);
            this.panelCaja.TabIndex = 7;
            this.panelCaja.VerticalScrollbarBarColor = true;
            this.panelCaja.VerticalScrollbarHighlightOnWheel = false;
            this.panelCaja.VerticalScrollbarSize = 10;
            // 
            // btnBuscarVentaCaja
            // 
            this.btnBuscarVentaCaja.BackColor = System.Drawing.Color.LightGray;
            this.btnBuscarVentaCaja.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnBuscarVentaCaja.FlatAppearance.BorderSize = 0;
            this.btnBuscarVentaCaja.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnBuscarVentaCaja.Location = new System.Drawing.Point(0, 80);
            this.btnBuscarVentaCaja.Name = "btnBuscarVentaCaja";
            this.btnBuscarVentaCaja.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnBuscarVentaCaja.Size = new System.Drawing.Size(183, 40);
            this.btnBuscarVentaCaja.TabIndex = 7;
            this.btnBuscarVentaCaja.Tag = "search_sale";
            this.btnBuscarVentaCaja.Text = "Buscar Venta";
            this.btnBuscarVentaCaja.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnBuscarVentaCaja.UseVisualStyleBackColor = false;
            this.btnBuscarVentaCaja.Click += new System.EventHandler(this.btnBuscarVentaCaja_Click);
            // 
            // btnCancelarVentaCaja
            // 
            this.btnCancelarVentaCaja.BackColor = System.Drawing.Color.LightGray;
            this.btnCancelarVentaCaja.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnCancelarVentaCaja.FlatAppearance.BorderSize = 0;
            this.btnCancelarVentaCaja.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnCancelarVentaCaja.Location = new System.Drawing.Point(0, 40);
            this.btnCancelarVentaCaja.Name = "btnCancelarVentaCaja";
            this.btnCancelarVentaCaja.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnCancelarVentaCaja.Size = new System.Drawing.Size(183, 40);
            this.btnCancelarVentaCaja.TabIndex = 6;
            this.btnCancelarVentaCaja.Tag = "cancel_sale";
            this.btnCancelarVentaCaja.Text = "Cancelar Venta";
            this.btnCancelarVentaCaja.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCancelarVentaCaja.UseVisualStyleBackColor = false;
            this.btnCancelarVentaCaja.Click += new System.EventHandler(this.btnCancelarVentaCaja_Click);
            // 
            // btnRecibirPago
            // 
            this.btnRecibirPago.BackColor = System.Drawing.Color.LightGray;
            this.btnRecibirPago.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnRecibirPago.FlatAppearance.BorderSize = 0;
            this.btnRecibirPago.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnRecibirPago.Location = new System.Drawing.Point(0, 0);
            this.btnRecibirPago.Name = "btnRecibirPago";
            this.btnRecibirPago.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnRecibirPago.Size = new System.Drawing.Size(183, 40);
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
            this.btnCajaPanel.FlatAppearance.BorderSize = 0;
            this.btnCajaPanel.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnCajaPanel.Location = new System.Drawing.Point(0, 479);
            this.btnCajaPanel.Name = "btnCajaPanel";
            this.btnCajaPanel.Padding = new System.Windows.Forms.Padding(10, 0, 0, 0);
            this.btnCajaPanel.Size = new System.Drawing.Size(183, 40);
            this.btnCajaPanel.TabIndex = 6;
            this.btnCajaPanel.Text = "Caja";
            this.btnCajaPanel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCajaPanel.Click += new System.EventHandler(this.btnCajaPanel_Click);
            // 
            // panelDeposito
            // 
            this.panelDeposito.Controls.Add(this.btnVerInventario);
            this.panelDeposito.Controls.Add(this.btnPenalizarProveedor);
            this.panelDeposito.Controls.Add(this.btnRealizarPedidoProveedor);
            this.panelDeposito.Controls.Add(this.btnRegistrarEntrada);
            this.panelDeposito.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelDeposito.HorizontalScrollbarBarColor = true;
            this.panelDeposito.HorizontalScrollbarHighlightOnWheel = false;
            this.panelDeposito.HorizontalScrollbarSize = 10;
            this.panelDeposito.Location = new System.Drawing.Point(0, 320);
            this.panelDeposito.Name = "panelDeposito";
            this.panelDeposito.Size = new System.Drawing.Size(183, 159);
            this.panelDeposito.TabIndex = 5;
            this.panelDeposito.VerticalScrollbarBarColor = true;
            this.panelDeposito.VerticalScrollbarHighlightOnWheel = false;
            this.panelDeposito.VerticalScrollbarSize = 10;
            // 
            // btnVerInventario
            // 
            this.btnVerInventario.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.btnVerInventario.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnVerInventario.FlatAppearance.BorderSize = 0;
            this.btnVerInventario.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnVerInventario.Location = new System.Drawing.Point(0, 120);
            this.btnVerInventario.Name = "btnVerInventario";
            this.btnVerInventario.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnVerInventario.Size = new System.Drawing.Size(183, 40);
            this.btnVerInventario.TabIndex = 13;
            this.btnVerInventario.Tag = "check_inventory";
            this.btnVerInventario.Text = "Ver Inventario";
            this.btnVerInventario.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnVerInventario.UseVisualStyleBackColor = false;
            this.btnVerInventario.Click += new System.EventHandler(this.btnVerInventario_Click);
            // 
            // btnPenalizarProveedor
            // 
            this.btnPenalizarProveedor.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.btnPenalizarProveedor.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnPenalizarProveedor.FlatAppearance.BorderSize = 0;
            this.btnPenalizarProveedor.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnPenalizarProveedor.Location = new System.Drawing.Point(0, 80);
            this.btnPenalizarProveedor.Name = "btnPenalizarProveedor";
            this.btnPenalizarProveedor.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnPenalizarProveedor.Size = new System.Drawing.Size(183, 40);
            this.btnPenalizarProveedor.TabIndex = 11;
            this.btnPenalizarProveedor.Tag = "penalize_vendor";
            this.btnPenalizarProveedor.Text = "Penalizar Proveedor";
            this.btnPenalizarProveedor.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnPenalizarProveedor.UseVisualStyleBackColor = false;
            this.btnPenalizarProveedor.Click += new System.EventHandler(this.btnPenalizarProveedor_Click);
            // 
            // btnRealizarPedidoProveedor
            // 
            this.btnRealizarPedidoProveedor.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.btnRealizarPedidoProveedor.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnRealizarPedidoProveedor.FlatAppearance.BorderSize = 0;
            this.btnRealizarPedidoProveedor.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnRealizarPedidoProveedor.Location = new System.Drawing.Point(0, 40);
            this.btnRealizarPedidoProveedor.Name = "btnRealizarPedidoProveedor";
            this.btnRealizarPedidoProveedor.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnRealizarPedidoProveedor.Size = new System.Drawing.Size(183, 40);
            this.btnRealizarPedidoProveedor.TabIndex = 12;
            this.btnRealizarPedidoProveedor.Tag = "make_order_vendor";
            this.btnRealizarPedidoProveedor.Text = "Realizar Pedido Proveedor";
            this.btnRealizarPedidoProveedor.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnRealizarPedidoProveedor.UseVisualStyleBackColor = false;
            this.btnRealizarPedidoProveedor.Click += new System.EventHandler(this.btnRealizarPedidoProveedor_Click);
            // 
            // btnRegistrarEntrada
            // 
            this.btnRegistrarEntrada.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.btnRegistrarEntrada.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnRegistrarEntrada.FlatAppearance.BorderSize = 0;
            this.btnRegistrarEntrada.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnRegistrarEntrada.Location = new System.Drawing.Point(0, 0);
            this.btnRegistrarEntrada.Name = "btnRegistrarEntrada";
            this.btnRegistrarEntrada.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnRegistrarEntrada.Size = new System.Drawing.Size(183, 40);
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
            this.btnDepositoPanel.FlatAppearance.BorderSize = 0;
            this.btnDepositoPanel.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnDepositoPanel.Location = new System.Drawing.Point(0, 280);
            this.btnDepositoPanel.Name = "btnDepositoPanel";
            this.btnDepositoPanel.Padding = new System.Windows.Forms.Padding(10, 0, 0, 0);
            this.btnDepositoPanel.Size = new System.Drawing.Size(183, 40);
            this.btnDepositoPanel.TabIndex = 4;
            this.btnDepositoPanel.Text = "Deposito";
            this.btnDepositoPanel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnDepositoPanel.Click += new System.EventHandler(this.btnDepositoPanel_Click);
            // 
            // panelSucursal
            // 
            this.panelSucursal.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.panelSucursal.Controls.Add(this.btnVerQuejas);
            this.panelSucursal.Controls.Add(this.btnCrearQueja);
            this.panelSucursal.Controls.Add(this.btnCancelarVentaVenta);
            this.panelSucursal.Controls.Add(this.btnBuscarVenta);
            this.panelSucursal.Controls.Add(this.btnRealizarVenta);
            this.panelSucursal.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelSucursal.HorizontalScrollbarBarColor = true;
            this.panelSucursal.HorizontalScrollbarHighlightOnWheel = false;
            this.panelSucursal.HorizontalScrollbarSize = 10;
            this.panelSucursal.Location = new System.Drawing.Point(0, 80);
            this.panelSucursal.Name = "panelSucursal";
            this.panelSucursal.Size = new System.Drawing.Size(183, 200);
            this.panelSucursal.TabIndex = 3;
            this.panelSucursal.VerticalScrollbarBarColor = true;
            this.panelSucursal.VerticalScrollbarHighlightOnWheel = false;
            this.panelSucursal.VerticalScrollbarSize = 10;
            // 
            // btnVerQuejas
            // 
            this.btnVerQuejas.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnVerQuejas.FlatAppearance.BorderSize = 0;
            this.btnVerQuejas.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnVerQuejas.Location = new System.Drawing.Point(0, 160);
            this.btnVerQuejas.Name = "btnVerQuejas";
            this.btnVerQuejas.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnVerQuejas.Size = new System.Drawing.Size(183, 40);
            this.btnVerQuejas.TabIndex = 11;
            this.btnVerQuejas.Tag = "check_complaints";
            this.btnVerQuejas.Text = "Ver Quejas";
            this.btnVerQuejas.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnVerQuejas.Click += new System.EventHandler(this.btnVerQuejas_Click);
            // 
            // btnCrearQueja
            // 
            this.btnCrearQueja.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnCrearQueja.FlatAppearance.BorderSize = 0;
            this.btnCrearQueja.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnCrearQueja.Location = new System.Drawing.Point(0, 120);
            this.btnCrearQueja.Name = "btnCrearQueja";
            this.btnCrearQueja.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnCrearQueja.Size = new System.Drawing.Size(183, 40);
            this.btnCrearQueja.TabIndex = 9;
            this.btnCrearQueja.Tag = "create_complaint";
            this.btnCrearQueja.Text = "Crear Queja";
            this.btnCrearQueja.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCrearQueja.Click += new System.EventHandler(this.btnCrearQueja_Click);
            // 
            // btnCancelarVentaVenta
            // 
            this.btnCancelarVentaVenta.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnCancelarVentaVenta.FlatAppearance.BorderSize = 0;
            this.btnCancelarVentaVenta.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnCancelarVentaVenta.Location = new System.Drawing.Point(0, 80);
            this.btnCancelarVentaVenta.Name = "btnCancelarVentaVenta";
            this.btnCancelarVentaVenta.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnCancelarVentaVenta.Size = new System.Drawing.Size(183, 40);
            this.btnCancelarVentaVenta.TabIndex = 10;
            this.btnCancelarVentaVenta.Tag = "cancel_sale";
            this.btnCancelarVentaVenta.Text = "Cancelar Venta";
            this.btnCancelarVentaVenta.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCancelarVentaVenta.Click += new System.EventHandler(this.btnCancelarVentaVenta_Click);
            // 
            // btnBuscarVenta
            // 
            this.btnBuscarVenta.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnBuscarVenta.FlatAppearance.BorderSize = 0;
            this.btnBuscarVenta.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnBuscarVenta.Location = new System.Drawing.Point(0, 40);
            this.btnBuscarVenta.Name = "btnBuscarVenta";
            this.btnBuscarVenta.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnBuscarVenta.Size = new System.Drawing.Size(183, 40);
            this.btnBuscarVenta.TabIndex = 8;
            this.btnBuscarVenta.Tag = "search_sale";
            this.btnBuscarVenta.Text = "Buscar Venta";
            this.btnBuscarVenta.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnBuscarVenta.Click += new System.EventHandler(this.btnBuscarVenta_Click);
            // 
            // btnRealizarVenta
            // 
            this.btnRealizarVenta.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnRealizarVenta.FlatAppearance.BorderSize = 0;
            this.btnRealizarVenta.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnRealizarVenta.Location = new System.Drawing.Point(0, 0);
            this.btnRealizarVenta.Name = "btnRealizarVenta";
            this.btnRealizarVenta.Padding = new System.Windows.Forms.Padding(35, 0, 0, 0);
            this.btnRealizarVenta.Size = new System.Drawing.Size(183, 40);
            this.btnRealizarVenta.TabIndex = 7;
            this.btnRealizarVenta.Tag = "make_sale";
            this.btnRealizarVenta.Text = "Realizar Venta";
            this.btnRealizarVenta.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnRealizarVenta.Click += new System.EventHandler(this.btnRealizarVenta_Click);
            // 
            // btnSucursalPanel
            // 
            this.btnSucursalPanel.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnSucursalPanel.FlatAppearance.BorderSize = 0;
            this.btnSucursalPanel.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSucursalPanel.Location = new System.Drawing.Point(0, 40);
            this.btnSucursalPanel.Name = "btnSucursalPanel";
            this.btnSucursalPanel.Padding = new System.Windows.Forms.Padding(10, 0, 0, 0);
            this.btnSucursalPanel.Size = new System.Drawing.Size(183, 40);
            this.btnSucursalPanel.TabIndex = 2;
            this.btnSucursalPanel.Text = "Sucursal";
            this.btnSucursalPanel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSucursalPanel.Click += new System.EventHandler(this.btnSucursalPanel_Click);
            // 
            // btnAdmin
            // 
            this.btnAdmin.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnAdmin.FlatAppearance.BorderSize = 0;
            this.btnAdmin.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnAdmin.Location = new System.Drawing.Point(0, 0);
            this.btnAdmin.Name = "btnAdmin";
            this.btnAdmin.Padding = new System.Windows.Forms.Padding(10, 0, 0, 0);
            this.btnAdmin.Size = new System.Drawing.Size(183, 40);
            this.btnAdmin.TabIndex = 11;
            this.btnAdmin.Text = "Administrador";
            this.btnAdmin.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnAdmin.Click += new System.EventHandler(this.btnAdmin_Click);
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
            this.panelImagen.Size = new System.Drawing.Size(183, 130);
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
            this.picLogo.Size = new System.Drawing.Size(200, 130);
            this.picLogo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.picLogo.TabIndex = 2;
            this.picLogo.TabStop = false;
            this.picLogo.Click += new System.EventHandler(this.picLogo_Click);
            // 
            // panelContainer
            // 
            this.panelContainer.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelContainer.HorizontalScrollbarBarColor = true;
            this.panelContainer.HorizontalScrollbarHighlightOnWheel = false;
            this.panelContainer.HorizontalScrollbarSize = 10;
            this.panelContainer.Location = new System.Drawing.Point(220, 60);
            this.panelContainer.Name = "panelContainer";
            this.panelContainer.Size = new System.Drawing.Size(1142, 689);
            this.panelContainer.TabIndex = 2;
            this.panelContainer.VerticalScrollbarBarColor = true;
            this.panelContainer.VerticalScrollbarHighlightOnWheel = false;
            this.panelContainer.VerticalScrollbarSize = 10;
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
            // panelSidebar
            // 
            this.panelSidebar.AutoScroll = true;
            this.panelSidebar.Controls.Add(this.panelOpciones);
            this.panelSidebar.Controls.Add(this.panelImagen);
            this.panelSidebar.Dock = System.Windows.Forms.DockStyle.Left;
            this.panelSidebar.HorizontalScrollbar = true;
            this.panelSidebar.HorizontalScrollbarBarColor = true;
            this.panelSidebar.HorizontalScrollbarHighlightOnWheel = false;
            this.panelSidebar.HorizontalScrollbarSize = 10;
            this.panelSidebar.Location = new System.Drawing.Point(20, 60);
            this.panelSidebar.Name = "panelSidebar";
            this.panelSidebar.Size = new System.Drawing.Size(200, 737);
            this.panelSidebar.TabIndex = 2;
            this.panelSidebar.VerticalScrollbar = true;
            this.panelSidebar.VerticalScrollbarBarColor = true;
            this.panelSidebar.VerticalScrollbarHighlightOnWheel = false;
            this.panelSidebar.VerticalScrollbarSize = 10;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.btnAyuda);
            this.panel1.Controls.Add(this.lblIdioma);
            this.panel1.Controls.Add(this.cbIdiomas);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel1.Location = new System.Drawing.Point(220, 749);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1142, 48);
            this.panel1.TabIndex = 12;
            // 
            // btnAyuda
            // 
            this.btnAyuda.Location = new System.Drawing.Point(1003, 14);
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
            // 
            // MDI
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1382, 817);
            this.Controls.Add(this.pbLogout);
            this.Controls.Add(this.panelContainer);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.panelSidebar);
            this.Name = "MDI";
            this.Text = "MDI";
            this.panelOpciones.ResumeLayout(false);
            this.panelEnvios.ResumeLayout(false);
            this.panelCaja.ResumeLayout(false);
            this.panelDeposito.ResumeLayout(false);
            this.panelSucursal.ResumeLayout(false);
            this.panelImagen.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.picLogo)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pbLogout)).EndInit();
            this.panelSidebar.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
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
        private System.Windows.Forms.Button btnAdmin;
        private System.Windows.Forms.PictureBox picLogo;
        private System.Windows.Forms.PictureBox pbLogout;
        private MetroFramework.Controls.MetroPanel panelSidebar;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label lblIdioma;
        private MetroFramework.Controls.MetroComboBox cbIdiomas;
        private MetroFramework.Controls.MetroButton btnAyuda;
    }
}