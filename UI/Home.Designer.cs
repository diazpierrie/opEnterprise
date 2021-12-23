
using System.ComponentModel;
using System.Windows.Forms;
using MetroFramework.Controls;

namespace UI
{
    partial class Home
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private IContainer components = null;

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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Home));
            this.pbLogout = new System.Windows.Forms.PictureBox();
            this.btnAyuda = new MetroFramework.Controls.MetroButton();
            this.lblIdioma = new System.Windows.Forms.Label();
            this.cbIdiomas = new MetroFramework.Controls.MetroComboBox();
            this.tcHome = new MetroFramework.Controls.MetroTabControl();
            this.tabAdmin = new MetroFramework.Controls.MetroTabPage();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnFamilia = new MetroFramework.Controls.MetroButton();
            this.btnPuesto = new MetroFramework.Controls.MetroButton();
            this.btnSucursal = new MetroFramework.Controls.MetroButton();
            this.btnDeposito = new MetroFramework.Controls.MetroButton();
            this.btnEmpleado = new MetroFramework.Controls.MetroButton();
            this.btnProveedor = new MetroFramework.Controls.MetroButton();
            this.gbConfiguracion = new System.Windows.Forms.GroupBox();
            this.btnExportReport = new MetroFramework.Controls.MetroButton();
            this.btnIdioma = new MetroFramework.Controls.MetroButton();
            this.btnBackUp = new MetroFramework.Controls.MetroButton();
            this.btnRestaurarDv = new MetroFramework.Controls.MetroButton();
            this.btnBitacora = new MetroFramework.Controls.MetroButton();
            this.btnConfigurarEdificio = new MetroFramework.Controls.MetroButton();
            this.tabSucursal = new MetroFramework.Controls.MetroTabPage();
            this.btnVerQuejas = new MetroFramework.Controls.MetroButton();
            this.btnCancelarVentaVenta = new MetroFramework.Controls.MetroButton();
            this.btnCrearQueja = new MetroFramework.Controls.MetroButton();
            this.btnBuscarVenta = new MetroFramework.Controls.MetroButton();
            this.btnRealizarVenta = new MetroFramework.Controls.MetroButton();
            this.tabDeposito = new MetroFramework.Controls.MetroTabPage();
            this.btnVerInventario = new MetroFramework.Controls.MetroButton();
            this.btnRealizarPedidoProveedor = new MetroFramework.Controls.MetroButton();
            this.btnPenalizarProveedor = new MetroFramework.Controls.MetroButton();
            this.btnRegistrarEntrada = new MetroFramework.Controls.MetroButton();
            this.tabCaja = new MetroFramework.Controls.MetroTabPage();
            this.btnBuscarVentaCaja = new MetroFramework.Controls.MetroButton();
            this.btnCancelarVentaCaja = new MetroFramework.Controls.MetroButton();
            this.btnRecibirPago = new MetroFramework.Controls.MetroButton();
            this.tabEnviosRecepciones = new MetroFramework.Controls.MetroTabPage();
            this.btnRecepcionarPedidoDeposito = new MetroFramework.Controls.MetroButton();
            this.btnRealizarPedidoDeposito = new MetroFramework.Controls.MetroButton();
            this.btnDespacharEnvio = new MetroFramework.Controls.MetroButton();
            this.btnVerEnvios = new MetroFramework.Controls.MetroButton();
            this.btnProducto = new MetroFramework.Controls.MetroButton();
            ((System.ComponentModel.ISupportInitialize)(this.pbLogout)).BeginInit();
            this.tcHome.SuspendLayout();
            this.tabAdmin.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.gbConfiguracion.SuspendLayout();
            this.tabSucursal.SuspendLayout();
            this.tabDeposito.SuspendLayout();
            this.tabCaja.SuspendLayout();
            this.tabEnviosRecepciones.SuspendLayout();
            this.SuspendLayout();
            // 
            // pbLogout
            // 
            this.pbLogout.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("pbLogout.BackgroundImage")));
            this.pbLogout.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.pbLogout.Cursor = System.Windows.Forms.Cursors.Hand;
            this.pbLogout.InitialImage = null;
            this.pbLogout.Location = new System.Drawing.Point(752, 23);
            this.pbLogout.Name = "pbLogout";
            this.pbLogout.Size = new System.Drawing.Size(25, 25);
            this.pbLogout.TabIndex = 10;
            this.pbLogout.TabStop = false;
            this.pbLogout.Click += new System.EventHandler(this.pbLogout_Click);
            // 
            // btnAyuda
            // 
            this.btnAyuda.Location = new System.Drawing.Point(641, 406);
            this.btnAyuda.Name = "btnAyuda";
            this.btnAyuda.Size = new System.Drawing.Size(136, 23);
            this.btnAyuda.TabIndex = 9;
            this.btnAyuda.Tag = "help";
            this.btnAyuda.Text = "Ayuda";
            this.btnAyuda.UseSelectable = true;
            this.btnAyuda.Click += new System.EventHandler(this.btnAyuda_Click);
            // 
            // lblIdioma
            // 
            this.lblIdioma.Location = new System.Drawing.Point(-1, 406);
            this.lblIdioma.Name = "lblIdioma";
            this.lblIdioma.Size = new System.Drawing.Size(105, 29);
            this.lblIdioma.TabIndex = 5;
            this.lblIdioma.Tag = "language";
            this.lblIdioma.Text = "Idioma";
            this.lblIdioma.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // cbIdiomas
            // 
            this.cbIdiomas.FormattingEnabled = true;
            this.cbIdiomas.ItemHeight = 23;
            this.cbIdiomas.Location = new System.Drawing.Point(110, 406);
            this.cbIdiomas.Name = "cbIdiomas";
            this.cbIdiomas.Size = new System.Drawing.Size(223, 29);
            this.cbIdiomas.TabIndex = 4;
            this.cbIdiomas.UseSelectable = true;
            this.cbIdiomas.SelectedIndexChanged += new System.EventHandler(this.cbIdiomas_SelectedIndexChanged);
            // 
            // tcHome
            // 
            this.tcHome.Appearance = System.Windows.Forms.TabAppearance.FlatButtons;
            this.tcHome.Controls.Add(this.tabAdmin);
            this.tcHome.Controls.Add(this.tabSucursal);
            this.tcHome.Controls.Add(this.tabDeposito);
            this.tcHome.Controls.Add(this.tabCaja);
            this.tcHome.Controls.Add(this.tabEnviosRecepciones);
            this.tcHome.Location = new System.Drawing.Point(12, 54);
            this.tcHome.Name = "tcHome";
            this.tcHome.SelectedIndex = 0;
            this.tcHome.Size = new System.Drawing.Size(776, 346);
            this.tcHome.TabIndex = 3;
            this.tcHome.UseSelectable = true;
            // 
            // tabAdmin
            // 
            this.tabAdmin.Controls.Add(this.groupBox1);
            this.tabAdmin.Controls.Add(this.gbConfiguracion);
            this.tabAdmin.HorizontalScrollbarBarColor = true;
            this.tabAdmin.HorizontalScrollbarHighlightOnWheel = false;
            this.tabAdmin.HorizontalScrollbarSize = 10;
            this.tabAdmin.Location = new System.Drawing.Point(4, 41);
            this.tabAdmin.Name = "tabAdmin";
            this.tabAdmin.Size = new System.Drawing.Size(768, 301);
            this.tabAdmin.TabIndex = 0;
            this.tabAdmin.Tag = "admin";
            this.tabAdmin.Text = "Admin";
            this.tabAdmin.VerticalScrollbarBarColor = true;
            this.tabAdmin.VerticalScrollbarHighlightOnWheel = false;
            this.tabAdmin.VerticalScrollbarSize = 10;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnProducto);
            this.groupBox1.Controls.Add(this.btnFamilia);
            this.groupBox1.Controls.Add(this.btnPuesto);
            this.groupBox1.Controls.Add(this.btnSucursal);
            this.groupBox1.Controls.Add(this.btnDeposito);
            this.groupBox1.Controls.Add(this.btnEmpleado);
            this.groupBox1.Controls.Add(this.btnProveedor);
            this.groupBox1.Location = new System.Drawing.Point(398, 15);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(374, 213);
            this.groupBox1.TabIndex = 5;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Gestion";
            // 
            // btnFamilia
            // 
            this.btnFamilia.Location = new System.Drawing.Point(148, 48);
            this.btnFamilia.Name = "btnFamilia";
            this.btnFamilia.Size = new System.Drawing.Size(136, 23);
            this.btnFamilia.TabIndex = 8;
            this.btnFamilia.Tag = "family";
            this.btnFamilia.Text = "Familia";
            this.btnFamilia.UseSelectable = true;
            this.btnFamilia.Click += new System.EventHandler(this.btnFamilia_Click);
            // 
            // btnPuesto
            // 
            this.btnPuesto.Location = new System.Drawing.Point(148, 19);
            this.btnPuesto.Name = "btnPuesto";
            this.btnPuesto.Size = new System.Drawing.Size(136, 23);
            this.btnPuesto.TabIndex = 7;
            this.btnPuesto.Tag = "job";
            this.btnPuesto.Text = "Puesto";
            this.btnPuesto.UseSelectable = true;
            this.btnPuesto.Click += new System.EventHandler(this.btnPuesto_Click);
            // 
            // btnSucursal
            // 
            this.btnSucursal.Location = new System.Drawing.Point(6, 106);
            this.btnSucursal.Name = "btnSucursal";
            this.btnSucursal.Size = new System.Drawing.Size(136, 23);
            this.btnSucursal.TabIndex = 6;
            this.btnSucursal.Tag = "branch";
            this.btnSucursal.Text = "Sucursal";
            this.btnSucursal.UseSelectable = true;
            this.btnSucursal.Click += new System.EventHandler(this.btnSucursal_Click);
            // 
            // btnDeposito
            // 
            this.btnDeposito.Location = new System.Drawing.Point(6, 77);
            this.btnDeposito.Name = "btnDeposito";
            this.btnDeposito.Size = new System.Drawing.Size(136, 23);
            this.btnDeposito.TabIndex = 5;
            this.btnDeposito.Tag = "deposit";
            this.btnDeposito.Text = "Deposito";
            this.btnDeposito.UseSelectable = true;
            this.btnDeposito.Click += new System.EventHandler(this.btnDeposito_Click);
            // 
            // btnEmpleado
            // 
            this.btnEmpleado.Location = new System.Drawing.Point(6, 19);
            this.btnEmpleado.Name = "btnEmpleado";
            this.btnEmpleado.Size = new System.Drawing.Size(136, 23);
            this.btnEmpleado.TabIndex = 4;
            this.btnEmpleado.Tag = "employee";
            this.btnEmpleado.Text = "Empleado";
            this.btnEmpleado.UseSelectable = true;
            this.btnEmpleado.Click += new System.EventHandler(this.btnEmpleado_Click_1);
            // 
            // btnProveedor
            // 
            this.btnProveedor.Location = new System.Drawing.Point(6, 48);
            this.btnProveedor.Name = "btnProveedor";
            this.btnProveedor.Size = new System.Drawing.Size(136, 23);
            this.btnProveedor.TabIndex = 3;
            this.btnProveedor.Tag = "vendor";
            this.btnProveedor.Text = "Proveedor";
            this.btnProveedor.UseSelectable = true;
            this.btnProveedor.Click += new System.EventHandler(this.btnProveedor_Click_1);
            // 
            // gbConfiguracion
            // 
            this.gbConfiguracion.Controls.Add(this.btnExportReport);
            this.gbConfiguracion.Controls.Add(this.btnIdioma);
            this.gbConfiguracion.Controls.Add(this.btnBackUp);
            this.gbConfiguracion.Controls.Add(this.btnRestaurarDv);
            this.gbConfiguracion.Controls.Add(this.btnBitacora);
            this.gbConfiguracion.Controls.Add(this.btnConfigurarEdificio);
            this.gbConfiguracion.Location = new System.Drawing.Point(-4, 15);
            this.gbConfiguracion.Name = "gbConfiguracion";
            this.gbConfiguracion.Size = new System.Drawing.Size(396, 213);
            this.gbConfiguracion.TabIndex = 4;
            this.gbConfiguracion.TabStop = false;
            this.gbConfiguracion.Text = "Configuracion";
            // 
            // btnExportReport
            // 
            this.btnExportReport.Location = new System.Drawing.Point(11, 164);
            this.btnExportReport.Name = "btnExportReport";
            this.btnExportReport.Size = new System.Drawing.Size(136, 23);
            this.btnExportReport.TabIndex = 9;
            this.btnExportReport.Tag = "export_report";
            this.btnExportReport.Text = "Exportar Reporte";
            this.btnExportReport.UseSelectable = true;
            this.btnExportReport.Click += new System.EventHandler(this.btnExportReport_Click);
            // 
            // btnIdioma
            // 
            this.btnIdioma.Location = new System.Drawing.Point(11, 106);
            this.btnIdioma.Name = "btnIdioma";
            this.btnIdioma.Size = new System.Drawing.Size(136, 23);
            this.btnIdioma.TabIndex = 8;
            this.btnIdioma.Tag = "language";
            this.btnIdioma.Text = "Idiomas";
            this.btnIdioma.UseSelectable = true;
            this.btnIdioma.Click += new System.EventHandler(this.btnIdioma_Click);
            // 
            // btnBackUp
            // 
            this.btnBackUp.Location = new System.Drawing.Point(11, 19);
            this.btnBackUp.Name = "btnBackUp";
            this.btnBackUp.Size = new System.Drawing.Size(136, 23);
            this.btnBackUp.TabIndex = 7;
            this.btnBackUp.Text = "Backup";
            this.btnBackUp.UseSelectable = true;
            this.btnBackUp.Click += new System.EventHandler(this.btnBackUp_Click);
            // 
            // btnRestaurarDv
            // 
            this.btnRestaurarDv.Location = new System.Drawing.Point(11, 77);
            this.btnRestaurarDv.Name = "btnRestaurarDv";
            this.btnRestaurarDv.Size = new System.Drawing.Size(136, 23);
            this.btnRestaurarDv.TabIndex = 6;
            this.btnRestaurarDv.Tag = "rest_dv";
            this.btnRestaurarDv.Text = "Restaurar DV";
            this.btnRestaurarDv.UseSelectable = true;
            this.btnRestaurarDv.Click += new System.EventHandler(this.btnRestaurarDv_Click);
            // 
            // btnBitacora
            // 
            this.btnBitacora.Location = new System.Drawing.Point(11, 48);
            this.btnBitacora.Name = "btnBitacora";
            this.btnBitacora.Size = new System.Drawing.Size(136, 23);
            this.btnBitacora.TabIndex = 4;
            this.btnBitacora.Tag = "bitacore";
            this.btnBitacora.Text = "Bitacora";
            this.btnBitacora.UseSelectable = true;
            this.btnBitacora.Click += new System.EventHandler(this.btnBitacora_Click);
            // 
            // btnConfigurarEdificio
            // 
            this.btnConfigurarEdificio.Location = new System.Drawing.Point(11, 135);
            this.btnConfigurarEdificio.Name = "btnConfigurarEdificio";
            this.btnConfigurarEdificio.Size = new System.Drawing.Size(136, 23);
            this.btnConfigurarEdificio.TabIndex = 3;
            this.btnConfigurarEdificio.Tag = "building";
            this.btnConfigurarEdificio.Text = "Edificio";
            this.btnConfigurarEdificio.UseSelectable = true;
            this.btnConfigurarEdificio.Click += new System.EventHandler(this.btnConfigurarEdificio_Click);
            // 
            // tabSucursal
            // 
            this.tabSucursal.Controls.Add(this.btnVerQuejas);
            this.tabSucursal.Controls.Add(this.btnCancelarVentaVenta);
            this.tabSucursal.Controls.Add(this.btnCrearQueja);
            this.tabSucursal.Controls.Add(this.btnBuscarVenta);
            this.tabSucursal.Controls.Add(this.btnRealizarVenta);
            this.tabSucursal.HorizontalScrollbarBarColor = true;
            this.tabSucursal.HorizontalScrollbarHighlightOnWheel = false;
            this.tabSucursal.HorizontalScrollbarSize = 10;
            this.tabSucursal.Location = new System.Drawing.Point(4, 41);
            this.tabSucursal.Name = "tabSucursal";
            this.tabSucursal.Size = new System.Drawing.Size(768, 301);
            this.tabSucursal.TabIndex = 1;
            this.tabSucursal.Tag = "branch";
            this.tabSucursal.Text = "Sucursal";
            this.tabSucursal.VerticalScrollbarBarColor = true;
            this.tabSucursal.VerticalScrollbarHighlightOnWheel = false;
            this.tabSucursal.VerticalScrollbarSize = 10;
            // 
            // btnVerQuejas
            // 
            this.btnVerQuejas.Location = new System.Drawing.Point(3, 119);
            this.btnVerQuejas.Name = "btnVerQuejas";
            this.btnVerQuejas.Size = new System.Drawing.Size(188, 24);
            this.btnVerQuejas.TabIndex = 6;
            this.btnVerQuejas.Tag = "check_complaints";
            this.btnVerQuejas.Text = "Ver Quejas";
            this.btnVerQuejas.UseSelectable = true;
            // 
            // btnCancelarVentaVenta
            // 
            this.btnCancelarVentaVenta.Location = new System.Drawing.Point(3, 149);
            this.btnCancelarVentaVenta.Name = "btnCancelarVentaVenta";
            this.btnCancelarVentaVenta.Size = new System.Drawing.Size(188, 24);
            this.btnCancelarVentaVenta.TabIndex = 5;
            this.btnCancelarVentaVenta.Tag = "cancel_sale";
            this.btnCancelarVentaVenta.Text = "Cancelar Venta";
            this.btnCancelarVentaVenta.UseSelectable = true;
            this.btnCancelarVentaVenta.Click += new System.EventHandler(this.btnCancelarVentaVenta_Click);
            // 
            // btnCrearQueja
            // 
            this.btnCrearQueja.Location = new System.Drawing.Point(3, 89);
            this.btnCrearQueja.Name = "btnCrearQueja";
            this.btnCrearQueja.Size = new System.Drawing.Size(188, 24);
            this.btnCrearQueja.TabIndex = 4;
            this.btnCrearQueja.Tag = "create_complaint";
            this.btnCrearQueja.Text = "Crear Queja";
            this.btnCrearQueja.UseSelectable = true;
            this.btnCrearQueja.Click += new System.EventHandler(this.btnCrearQueja_Click);
            // 
            // btnBuscarVenta
            // 
            this.btnBuscarVenta.Location = new System.Drawing.Point(3, 59);
            this.btnBuscarVenta.Name = "btnBuscarVenta";
            this.btnBuscarVenta.Size = new System.Drawing.Size(188, 24);
            this.btnBuscarVenta.TabIndex = 3;
            this.btnBuscarVenta.Tag = "search_sale";
            this.btnBuscarVenta.Text = "Buscar Venta";
            this.btnBuscarVenta.UseSelectable = true;
            this.btnBuscarVenta.Click += new System.EventHandler(this.btnBuscarVenta_Click);
            // 
            // btnRealizarVenta
            // 
            this.btnRealizarVenta.Location = new System.Drawing.Point(3, 29);
            this.btnRealizarVenta.Name = "btnRealizarVenta";
            this.btnRealizarVenta.Size = new System.Drawing.Size(188, 24);
            this.btnRealizarVenta.TabIndex = 2;
            this.btnRealizarVenta.Tag = "make_sale";
            this.btnRealizarVenta.Text = "Realizar Venta";
            this.btnRealizarVenta.UseSelectable = true;
            this.btnRealizarVenta.Click += new System.EventHandler(this.btnRealizarVenta_Click);
            // 
            // tabDeposito
            // 
            this.tabDeposito.Controls.Add(this.btnVerInventario);
            this.tabDeposito.Controls.Add(this.btnRealizarPedidoProveedor);
            this.tabDeposito.Controls.Add(this.btnPenalizarProveedor);
            this.tabDeposito.Controls.Add(this.btnRegistrarEntrada);
            this.tabDeposito.HorizontalScrollbarBarColor = true;
            this.tabDeposito.HorizontalScrollbarHighlightOnWheel = false;
            this.tabDeposito.HorizontalScrollbarSize = 10;
            this.tabDeposito.Location = new System.Drawing.Point(4, 41);
            this.tabDeposito.Name = "tabDeposito";
            this.tabDeposito.Size = new System.Drawing.Size(768, 301);
            this.tabDeposito.TabIndex = 2;
            this.tabDeposito.Tag = "deposit";
            this.tabDeposito.Text = "Deposito";
            this.tabDeposito.VerticalScrollbarBarColor = true;
            this.tabDeposito.VerticalScrollbarHighlightOnWheel = false;
            this.tabDeposito.VerticalScrollbarSize = 10;
            // 
            // btnVerInventario
            // 
            this.btnVerInventario.Location = new System.Drawing.Point(7, 119);
            this.btnVerInventario.Name = "btnVerInventario";
            this.btnVerInventario.Size = new System.Drawing.Size(188, 24);
            this.btnVerInventario.TabIndex = 9;
            this.btnVerInventario.Tag = "check_inventory";
            this.btnVerInventario.Text = "Ver Inventario";
            this.btnVerInventario.UseSelectable = true;
            this.btnVerInventario.Click += new System.EventHandler(this.btnVerInventario_Click);
            // 
            // btnRealizarPedidoProveedor
            // 
            this.btnRealizarPedidoProveedor.Location = new System.Drawing.Point(7, 29);
            this.btnRealizarPedidoProveedor.Name = "btnRealizarPedidoProveedor";
            this.btnRealizarPedidoProveedor.Size = new System.Drawing.Size(188, 24);
            this.btnRealizarPedidoProveedor.TabIndex = 8;
            this.btnRealizarPedidoProveedor.Tag = "make_order_vendor";
            this.btnRealizarPedidoProveedor.Text = "Realizar Pedido Proveedor";
            this.btnRealizarPedidoProveedor.UseSelectable = true;
            this.btnRealizarPedidoProveedor.Click += new System.EventHandler(this.btnRealizarPedido_Click);
            // 
            // btnPenalizarProveedor
            // 
            this.btnPenalizarProveedor.Location = new System.Drawing.Point(7, 89);
            this.btnPenalizarProveedor.Name = "btnPenalizarProveedor";
            this.btnPenalizarProveedor.Size = new System.Drawing.Size(188, 24);
            this.btnPenalizarProveedor.TabIndex = 7;
            this.btnPenalizarProveedor.Tag = "penalize_vendor";
            this.btnPenalizarProveedor.Text = "Penalizar Proveedor";
            this.btnPenalizarProveedor.UseSelectable = true;
            this.btnPenalizarProveedor.Click += new System.EventHandler(this.btnPenalizarProveedor_Click);
            // 
            // btnRegistrarEntrada
            // 
            this.btnRegistrarEntrada.Location = new System.Drawing.Point(7, 59);
            this.btnRegistrarEntrada.Name = "btnRegistrarEntrada";
            this.btnRegistrarEntrada.Size = new System.Drawing.Size(188, 24);
            this.btnRegistrarEntrada.TabIndex = 5;
            this.btnRegistrarEntrada.Tag = "register_products_entry";
            this.btnRegistrarEntrada.Text = "Registrar Entrada de Productos";
            this.btnRegistrarEntrada.UseSelectable = true;
            this.btnRegistrarEntrada.Click += new System.EventHandler(this.btnRegistrarEntrada_Click);
            // 
            // tabCaja
            // 
            this.tabCaja.Controls.Add(this.btnBuscarVentaCaja);
            this.tabCaja.Controls.Add(this.btnCancelarVentaCaja);
            this.tabCaja.Controls.Add(this.btnRecibirPago);
            this.tabCaja.HorizontalScrollbarBarColor = true;
            this.tabCaja.HorizontalScrollbarHighlightOnWheel = false;
            this.tabCaja.HorizontalScrollbarSize = 10;
            this.tabCaja.Location = new System.Drawing.Point(4, 41);
            this.tabCaja.Name = "tabCaja";
            this.tabCaja.Size = new System.Drawing.Size(768, 301);
            this.tabCaja.TabIndex = 3;
            this.tabCaja.Tag = "cashier";
            this.tabCaja.Text = "Caja";
            this.tabCaja.VerticalScrollbarBarColor = true;
            this.tabCaja.VerticalScrollbarHighlightOnWheel = false;
            this.tabCaja.VerticalScrollbarSize = 10;
            // 
            // btnBuscarVentaCaja
            // 
            this.btnBuscarVentaCaja.Location = new System.Drawing.Point(7, 59);
            this.btnBuscarVentaCaja.Name = "btnBuscarVentaCaja";
            this.btnBuscarVentaCaja.Size = new System.Drawing.Size(136, 23);
            this.btnBuscarVentaCaja.TabIndex = 4;
            this.btnBuscarVentaCaja.Tag = "search_sale";
            this.btnBuscarVentaCaja.Text = "Buscar Venta";
            this.btnBuscarVentaCaja.UseSelectable = true;
            this.btnBuscarVentaCaja.Click += new System.EventHandler(this.btnBuscarVentaCaja_Click);
            // 
            // btnCancelarVentaCaja
            // 
            this.btnCancelarVentaCaja.Location = new System.Drawing.Point(7, 88);
            this.btnCancelarVentaCaja.Name = "btnCancelarVentaCaja";
            this.btnCancelarVentaCaja.Size = new System.Drawing.Size(136, 24);
            this.btnCancelarVentaCaja.TabIndex = 3;
            this.btnCancelarVentaCaja.Tag = "cancel_sale";
            this.btnCancelarVentaCaja.Text = "Cancelar Venta";
            this.btnCancelarVentaCaja.UseSelectable = true;
            this.btnCancelarVentaCaja.Click += new System.EventHandler(this.btnCancelarVentaCaja_Click);
            // 
            // btnRecibirPago
            // 
            this.btnRecibirPago.Location = new System.Drawing.Point(7, 29);
            this.btnRecibirPago.Name = "btnRecibirPago";
            this.btnRecibirPago.Size = new System.Drawing.Size(136, 24);
            this.btnRecibirPago.TabIndex = 2;
            this.btnRecibirPago.Tag = "receive_payment";
            this.btnRecibirPago.Text = "Recibir Pago";
            this.btnRecibirPago.UseSelectable = true;
            this.btnRecibirPago.Click += new System.EventHandler(this.btnRecibirPago_Click);
            // 
            // tabEnviosRecepciones
            // 
            this.tabEnviosRecepciones.Controls.Add(this.btnRecepcionarPedidoDeposito);
            this.tabEnviosRecepciones.Controls.Add(this.btnRealizarPedidoDeposito);
            this.tabEnviosRecepciones.Controls.Add(this.btnDespacharEnvio);
            this.tabEnviosRecepciones.Controls.Add(this.btnVerEnvios);
            this.tabEnviosRecepciones.HorizontalScrollbarBarColor = true;
            this.tabEnviosRecepciones.HorizontalScrollbarHighlightOnWheel = false;
            this.tabEnviosRecepciones.HorizontalScrollbarSize = 10;
            this.tabEnviosRecepciones.Location = new System.Drawing.Point(4, 41);
            this.tabEnviosRecepciones.Name = "tabEnviosRecepciones";
            this.tabEnviosRecepciones.Size = new System.Drawing.Size(768, 301);
            this.tabEnviosRecepciones.TabIndex = 4;
            this.tabEnviosRecepciones.Tag = "delivery_receptions";
            this.tabEnviosRecepciones.Text = "Envios y Recepciones";
            this.tabEnviosRecepciones.VerticalScrollbarBarColor = true;
            this.tabEnviosRecepciones.VerticalScrollbarHighlightOnWheel = false;
            this.tabEnviosRecepciones.VerticalScrollbarSize = 10;
            // 
            // btnRecepcionarPedidoDeposito
            // 
            this.btnRecepcionarPedidoDeposito.Location = new System.Drawing.Point(7, 89);
            this.btnRecepcionarPedidoDeposito.Name = "btnRecepcionarPedidoDeposito";
            this.btnRecepcionarPedidoDeposito.Size = new System.Drawing.Size(177, 24);
            this.btnRecepcionarPedidoDeposito.TabIndex = 5;
            this.btnRecepcionarPedidoDeposito.Tag = "receive_order_deposit";
            this.btnRecepcionarPedidoDeposito.Text = "Recepcionar Pedido Deposito";
            this.btnRecepcionarPedidoDeposito.UseSelectable = true;
            this.btnRecepcionarPedidoDeposito.Click += new System.EventHandler(this.btnRecepcionarPedidoDeposito_Click);
            // 
            // btnRealizarPedidoDeposito
            // 
            this.btnRealizarPedidoDeposito.Location = new System.Drawing.Point(7, 119);
            this.btnRealizarPedidoDeposito.Name = "btnRealizarPedidoDeposito";
            this.btnRealizarPedidoDeposito.Size = new System.Drawing.Size(177, 24);
            this.btnRealizarPedidoDeposito.TabIndex = 4;
            this.btnRealizarPedidoDeposito.Tag = "make_order_deposit";
            this.btnRealizarPedidoDeposito.Text = "Realizar Pedido Deposito";
            this.btnRealizarPedidoDeposito.UseSelectable = true;
            this.btnRealizarPedidoDeposito.Click += new System.EventHandler(this.btnRealizarPedidoDeposito_Click);
            // 
            // btnDespacharEnvio
            // 
            this.btnDespacharEnvio.Location = new System.Drawing.Point(7, 59);
            this.btnDespacharEnvio.Name = "btnDespacharEnvio";
            this.btnDespacharEnvio.Size = new System.Drawing.Size(177, 24);
            this.btnDespacharEnvio.TabIndex = 3;
            this.btnDespacharEnvio.Tag = "dispatch_delivery";
            this.btnDespacharEnvio.Text = "Despachar Envio";
            this.btnDespacharEnvio.UseSelectable = true;
            this.btnDespacharEnvio.Click += new System.EventHandler(this.btnConfirmarEnvio_Click);
            // 
            // btnVerEnvios
            // 
            this.btnVerEnvios.Location = new System.Drawing.Point(7, 29);
            this.btnVerEnvios.Name = "btnVerEnvios";
            this.btnVerEnvios.Size = new System.Drawing.Size(177, 24);
            this.btnVerEnvios.TabIndex = 2;
            this.btnVerEnvios.Tag = "check_deliveries";
            this.btnVerEnvios.Text = "Ver Envios";
            this.btnVerEnvios.UseSelectable = true;
            this.btnVerEnvios.Click += new System.EventHandler(this.btnVerEnvios_Click);
            // 
            // btnProducto
            // 
            this.btnProducto.Location = new System.Drawing.Point(148, 77);
            this.btnProducto.Name = "btnProducto";
            this.btnProducto.Size = new System.Drawing.Size(136, 23);
            this.btnProducto.TabIndex = 9;
            this.btnProducto.Tag = "product";
            this.btnProducto.Text = "Producto";
            this.btnProducto.UseSelectable = true;
            this.btnProducto.Click += new System.EventHandler(this.btnProducto_Click);
            // 
            // Home
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSize = true;
            this.BorderStyle = MetroFramework.Forms.MetroFormBorderStyle.FixedSingle;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.ControlBox = false;
            this.Controls.Add(this.pbLogout);
            this.Controls.Add(this.btnAyuda);
            this.Controls.Add(this.lblIdioma);
            this.Controls.Add(this.cbIdiomas);
            this.Controls.Add(this.tcHome);
            this.MaximizeBox = false;
            this.Name = "Home";
            this.Resizable = false;
            this.Style = MetroFramework.MetroColorStyle.Default;
            this.Text = "Home";
            this.Load += new System.EventHandler(this.Home_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pbLogout)).EndInit();
            this.tcHome.ResumeLayout(false);
            this.tabAdmin.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            this.gbConfiguracion.ResumeLayout(false);
            this.tabSucursal.ResumeLayout(false);
            this.tabDeposito.ResumeLayout(false);
            this.tabCaja.ResumeLayout(false);
            this.tabEnviosRecepciones.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        private MetroFramework.Controls.MetroTabPage tabEnviosRecepciones;
        private MetroFramework.Controls.MetroButton btnVerEnvios;
        private MetroFramework.Controls.MetroButton btnDespacharEnvio;

        #endregion
        private MetroFramework.Controls.MetroTabControl tcHome;
        private MetroTabPage tabAdmin;
        private MetroFramework.Controls.MetroTabPage tabSucursal;
        private MetroTabPage tabDeposito;
        private MetroButton btnRealizarVenta;
        private MetroButton btnConfigurarEdificio;
        private MetroButton btnBuscarVenta;
        private MetroButton btnCrearQueja;
        private MetroButton btnPenalizarProveedor;
        private MetroFramework.Controls.MetroButton btnRegistrarEntrada;
        private GroupBox groupBox1;
        private MetroButton btnEmpleado;
        private MetroButton btnProveedor;
        private GroupBox gbConfiguracion;
        private MetroButton btnRestaurarDv;
        private MetroButton btnBitacora;
        private MetroButton btnBackUp;
        private MetroButton btnIdioma;
        private MetroFramework.Controls.MetroTabPage tabCaja;
        private MetroButton btnRecibirPago;
        private MetroButton btnCancelarVentaCaja;
        private MetroButton btnCancelarVentaVenta;
        private MetroButton btnBuscarVentaCaja;
        private MetroButton btnRealizarPedidoProveedor;
        private MetroButton btnVerInventario;
        private MetroButton btnRecepcionarPedidoDeposito;
        private MetroButton btnRealizarPedidoDeposito;
        private MetroComboBox cbIdiomas;
        private Label lblIdioma;
        private MetroButton btnSucursal;
        private MetroButton btnDeposito;
        private MetroButton btnFamilia;
        private MetroButton btnPuesto;
        private MetroButton btnExportReport;
        private MetroButton btnAyuda;
        private PictureBox pbLogout;
        private MetroButton btnVerQuejas;
        private MetroButton btnProducto;
    }
}