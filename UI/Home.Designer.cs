
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
            this.tcHome = new MetroFramework.Controls.MetroTabControl();
            this.tabAdmin = new MetroFramework.Controls.MetroTabPage();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnEmpleado = new MetroFramework.Controls.MetroButton();
            this.btnProveedor = new MetroFramework.Controls.MetroButton();
            this.btnUsuario = new MetroFramework.Controls.MetroButton();
            this.gbConfiguracion = new System.Windows.Forms.GroupBox();
            this.btnIdioma = new MetroFramework.Controls.MetroButton();
            this.btnBackUp = new MetroFramework.Controls.MetroButton();
            this.btnRestaurarDv = new MetroFramework.Controls.MetroButton();
            this.btnBitacora = new MetroFramework.Controls.MetroButton();
            this.btnConfigurarEdificio = new MetroFramework.Controls.MetroButton();
            this.tabVenta = new MetroFramework.Controls.MetroTabPage();
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
            this.tabEnvio = new MetroFramework.Controls.MetroTabPage();
            this.btnRecepcionarPedidoDeposito = new MetroFramework.Controls.MetroButton();
            this.btnRealizarPedidoDeposito = new MetroFramework.Controls.MetroButton();
            this.btnDespacharEnvio = new MetroFramework.Controls.MetroButton();
            this.btnVerEnvios = new MetroFramework.Controls.MetroButton();
            this.tcHome.SuspendLayout();
            this.tabAdmin.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.gbConfiguracion.SuspendLayout();
            this.tabVenta.SuspendLayout();
            this.tabDeposito.SuspendLayout();
            this.tabCaja.SuspendLayout();
            this.tabEnvio.SuspendLayout();
            this.SuspendLayout();
            // 
            // tcHome
            // 
            this.tcHome.Appearance = System.Windows.Forms.TabAppearance.FlatButtons;
            this.tcHome.Controls.Add(this.tabAdmin);
            this.tcHome.Controls.Add(this.tabVenta);
            this.tcHome.Controls.Add(this.tabDeposito);
            this.tcHome.Controls.Add(this.tabCaja);
            this.tcHome.Controls.Add(this.tabEnvio);
            this.tcHome.Location = new System.Drawing.Point(12, 54);
            this.tcHome.Name = "tcHome";
            this.tcHome.SelectedIndex = 4;
            this.tcHome.Size = new System.Drawing.Size(776, 384);
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
            this.tabAdmin.Size = new System.Drawing.Size(768, 339);
            this.tabAdmin.TabIndex = 0;
            this.tabAdmin.Text = "Admin";
            this.tabAdmin.VerticalScrollbarBarColor = true;
            this.tabAdmin.VerticalScrollbarHighlightOnWheel = false;
            this.tabAdmin.VerticalScrollbarSize = 10;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnEmpleado);
            this.groupBox1.Controls.Add(this.btnProveedor);
            this.groupBox1.Controls.Add(this.btnUsuario);
            this.groupBox1.Location = new System.Drawing.Point(398, 15);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(374, 213);
            this.groupBox1.TabIndex = 5;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Gestion";
            // 
            // btnEmpleado
            // 
            this.btnEmpleado.Location = new System.Drawing.Point(6, 19);
            this.btnEmpleado.Name = "btnEmpleado";
            this.btnEmpleado.Size = new System.Drawing.Size(136, 23);
            this.btnEmpleado.TabIndex = 4;
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
            this.btnProveedor.Text = "Proveedor";
            this.btnProveedor.UseSelectable = true;
            this.btnProveedor.Click += new System.EventHandler(this.btnProveedor_Click_1);
            // 
            // btnUsuario
            // 
            this.btnUsuario.Location = new System.Drawing.Point(6, 77);
            this.btnUsuario.Name = "btnUsuario";
            this.btnUsuario.Size = new System.Drawing.Size(136, 23);
            this.btnUsuario.TabIndex = 5;
            this.btnUsuario.Text = "Usuario";
            this.btnUsuario.UseSelectable = true;
            this.btnUsuario.Click += new System.EventHandler(this.btnUsuario_Click);
            // 
            // gbConfiguracion
            // 
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
            // btnIdioma
            // 
            this.btnIdioma.Location = new System.Drawing.Point(11, 106);
            this.btnIdioma.Name = "btnIdioma";
            this.btnIdioma.Size = new System.Drawing.Size(136, 23);
            this.btnIdioma.TabIndex = 8;
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
            this.btnConfigurarEdificio.Text = "Edificio";
            this.btnConfigurarEdificio.UseSelectable = true;
            this.btnConfigurarEdificio.Click += new System.EventHandler(this.btnConfigurarEdificio_Click);
            // 
            // tabVenta
            // 
            this.tabVenta.Controls.Add(this.btnCancelarVentaVenta);
            this.tabVenta.Controls.Add(this.btnCrearQueja);
            this.tabVenta.Controls.Add(this.btnBuscarVenta);
            this.tabVenta.Controls.Add(this.btnRealizarVenta);
            this.tabVenta.HorizontalScrollbarBarColor = true;
            this.tabVenta.HorizontalScrollbarHighlightOnWheel = false;
            this.tabVenta.HorizontalScrollbarSize = 10;
            this.tabVenta.Location = new System.Drawing.Point(4, 41);
            this.tabVenta.Name = "tabVenta";
            this.tabVenta.Size = new System.Drawing.Size(768, 339);
            this.tabVenta.TabIndex = 1;
            this.tabVenta.Text = "Ventas";
            this.tabVenta.VerticalScrollbarBarColor = true;
            this.tabVenta.VerticalScrollbarHighlightOnWheel = false;
            this.tabVenta.VerticalScrollbarSize = 10;
            // 
            // btnCancelarVentaVenta
            // 
            this.btnCancelarVentaVenta.Location = new System.Drawing.Point(350, 21);
            this.btnCancelarVentaVenta.Name = "btnCancelarVentaVenta";
            this.btnCancelarVentaVenta.Size = new System.Drawing.Size(114, 39);
            this.btnCancelarVentaVenta.TabIndex = 5;
            this.btnCancelarVentaVenta.Text = "Cancelar Venta";
            this.btnCancelarVentaVenta.UseSelectable = true;
            this.btnCancelarVentaVenta.Click += new System.EventHandler(this.btnCancelarVentaVenta_Click);
            // 
            // btnCrearQueja
            // 
            this.btnCrearQueja.Location = new System.Drawing.Point(241, 21);
            this.btnCrearQueja.Name = "btnCrearQueja";
            this.btnCrearQueja.Size = new System.Drawing.Size(103, 39);
            this.btnCrearQueja.TabIndex = 4;
            this.btnCrearQueja.Text = "Crear Queja";
            this.btnCrearQueja.UseSelectable = true;
            this.btnCrearQueja.Click += new System.EventHandler(this.btnCrearQueja_Click);
            // 
            // btnBuscarVenta
            // 
            this.btnBuscarVenta.Location = new System.Drawing.Point(132, 21);
            this.btnBuscarVenta.Name = "btnBuscarVenta";
            this.btnBuscarVenta.Size = new System.Drawing.Size(103, 39);
            this.btnBuscarVenta.TabIndex = 3;
            this.btnBuscarVenta.Text = "Buscar Venta";
            this.btnBuscarVenta.UseSelectable = true;
            this.btnBuscarVenta.Click += new System.EventHandler(this.btnBuscarVenta_Click);
            // 
            // btnRealizarVenta
            // 
            this.btnRealizarVenta.Location = new System.Drawing.Point(23, 21);
            this.btnRealizarVenta.Name = "btnRealizarVenta";
            this.btnRealizarVenta.Size = new System.Drawing.Size(103, 39);
            this.btnRealizarVenta.TabIndex = 2;
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
            this.tabDeposito.Size = new System.Drawing.Size(768, 339);
            this.tabDeposito.TabIndex = 2;
            this.tabDeposito.Text = "Deposito";
            this.tabDeposito.VerticalScrollbarBarColor = true;
            this.tabDeposito.VerticalScrollbarHighlightOnWheel = false;
            this.tabDeposito.VerticalScrollbarSize = 10;
            // 
            // btnVerInventario
            // 
            this.btnVerInventario.Location = new System.Drawing.Point(7, 154);
            this.btnVerInventario.Name = "btnVerInventario";
            this.btnVerInventario.Size = new System.Drawing.Size(174, 39);
            this.btnVerInventario.TabIndex = 9;
            this.btnVerInventario.Text = "Ver Inventario";
            this.btnVerInventario.UseSelectable = true;
            this.btnVerInventario.Click += new System.EventHandler(this.btnVerInventario_Click);
            // 
            // btnRealizarPedidoProveedor
            // 
            this.btnRealizarPedidoProveedor.Location = new System.Drawing.Point(7, 19);
            this.btnRealizarPedidoProveedor.Name = "btnRealizarPedidoProveedor";
            this.btnRealizarPedidoProveedor.Size = new System.Drawing.Size(174, 39);
            this.btnRealizarPedidoProveedor.TabIndex = 8;
            this.btnRealizarPedidoProveedor.Text = "Realizar Pedido Proveedor";
            this.btnRealizarPedidoProveedor.UseSelectable = true;
            this.btnRealizarPedidoProveedor.Click += new System.EventHandler(this.btnRealizarPedido_Click);
            // 
            // btnPenalizarProveedor
            // 
            this.btnPenalizarProveedor.Location = new System.Drawing.Point(7, 109);
            this.btnPenalizarProveedor.Name = "btnPenalizarProveedor";
            this.btnPenalizarProveedor.Size = new System.Drawing.Size(174, 39);
            this.btnPenalizarProveedor.TabIndex = 7;
            this.btnPenalizarProveedor.Text = "Penalizar Proveedor";
            this.btnPenalizarProveedor.UseSelectable = true;
            this.btnPenalizarProveedor.Click += new System.EventHandler(this.btnPenalizarProveedor_Click);
            // 
            // btnRegistrarEntrada
            // 
            this.btnRegistrarEntrada.Location = new System.Drawing.Point(7, 64);
            this.btnRegistrarEntrada.Name = "btnRegistrarEntrada";
            this.btnRegistrarEntrada.Size = new System.Drawing.Size(174, 39);
            this.btnRegistrarEntrada.TabIndex = 5;
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
            this.tabCaja.Size = new System.Drawing.Size(768, 339);
            this.tabCaja.TabIndex = 3;
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
            this.btnRecibirPago.Text = "Recibir Pago";
            this.btnRecibirPago.UseSelectable = true;
            this.btnRecibirPago.Click += new System.EventHandler(this.btnRecibirPago_Click);
            // 
            // tabEnvio
            // 
            this.tabEnvio.Controls.Add(this.btnRecepcionarPedidoDeposito);
            this.tabEnvio.Controls.Add(this.btnRealizarPedidoDeposito);
            this.tabEnvio.Controls.Add(this.btnDespacharEnvio);
            this.tabEnvio.Controls.Add(this.btnVerEnvios);
            this.tabEnvio.HorizontalScrollbarBarColor = true;
            this.tabEnvio.HorizontalScrollbarHighlightOnWheel = false;
            this.tabEnvio.HorizontalScrollbarSize = 10;
            this.tabEnvio.Location = new System.Drawing.Point(4, 41);
            this.tabEnvio.Name = "tabEnvio";
            this.tabEnvio.Size = new System.Drawing.Size(768, 339);
            this.tabEnvio.TabIndex = 4;
            this.tabEnvio.Text = "Envios y Recepciones";
            this.tabEnvio.VerticalScrollbarBarColor = true;
            this.tabEnvio.VerticalScrollbarHighlightOnWheel = false;
            this.tabEnvio.VerticalScrollbarSize = 10;
            // 
            // btnRecepcionarPedidoDeposito
            // 
            this.btnRecepcionarPedidoDeposito.Location = new System.Drawing.Point(115, 54);
            this.btnRecepcionarPedidoDeposito.Name = "btnRecepcionarPedidoDeposito";
            this.btnRecepcionarPedidoDeposito.Size = new System.Drawing.Size(175, 31);
            this.btnRecepcionarPedidoDeposito.TabIndex = 5;
            this.btnRecepcionarPedidoDeposito.Text = "Recepcionar Pedido Deposito";
            this.btnRecepcionarPedidoDeposito.UseSelectable = true;
            this.btnRecepcionarPedidoDeposito.Click += new System.EventHandler(this.btnRecepcionarPedidoDeposito_Click);
            // 
            // btnRealizarPedidoDeposito
            // 
            this.btnRealizarPedidoDeposito.Location = new System.Drawing.Point(7, 125);
            this.btnRealizarPedidoDeposito.Name = "btnRealizarPedidoDeposito";
            this.btnRealizarPedidoDeposito.Size = new System.Drawing.Size(141, 31);
            this.btnRealizarPedidoDeposito.TabIndex = 4;
            this.btnRealizarPedidoDeposito.Text = "Realizar Pedido Deposito";
            this.btnRealizarPedidoDeposito.UseSelectable = true;
            this.btnRealizarPedidoDeposito.Click += new System.EventHandler(this.btnRealizarPedidoDeposito_Click);
            // 
            // btnDespacharEnvio
            // 
            this.btnDespacharEnvio.Location = new System.Drawing.Point(115, 17);
            this.btnDespacharEnvio.Name = "btnDespacharEnvio";
            this.btnDespacharEnvio.Size = new System.Drawing.Size(110, 31);
            this.btnDespacharEnvio.TabIndex = 3;
            this.btnDespacharEnvio.Text = "Despachar Envio";
            this.btnDespacharEnvio.UseSelectable = true;
            this.btnDespacharEnvio.Click += new System.EventHandler(this.btnConfirmarEnvio_Click);
            // 
            // btnVerEnvios
            // 
            this.btnVerEnvios.Location = new System.Drawing.Point(7, 17);
            this.btnVerEnvios.Name = "btnVerEnvios";
            this.btnVerEnvios.Size = new System.Drawing.Size(90, 31);
            this.btnVerEnvios.TabIndex = 2;
            this.btnVerEnvios.Text = "Ver Envios";
            this.btnVerEnvios.UseSelectable = true;
            this.btnVerEnvios.Click += new System.EventHandler(this.btnVerEnvios_Click);
            // 
            // Home
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.tcHome);
            this.Name = "Home";
            this.Text = "Home";
            this.tcHome.ResumeLayout(false);
            this.tabAdmin.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            this.gbConfiguracion.ResumeLayout(false);
            this.tabVenta.ResumeLayout(false);
            this.tabDeposito.ResumeLayout(false);
            this.tabCaja.ResumeLayout(false);
            this.tabEnvio.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        private MetroFramework.Controls.MetroTabPage tabEnvio;
        private MetroFramework.Controls.MetroButton btnVerEnvios;
        private MetroFramework.Controls.MetroButton btnDespacharEnvio;

        #endregion
        private MetroFramework.Controls.MetroTabControl tcHome;
        private MetroTabPage tabAdmin;
        private MetroFramework.Controls.MetroTabPage tabVenta;
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
        private MetroButton btnUsuario;
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
    }
}