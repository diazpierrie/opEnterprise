
namespace UI
{
    partial class Home
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
            this.btnCrearQueja = new MetroFramework.Controls.MetroButton();
            this.btnBuscarVenta = new MetroFramework.Controls.MetroButton();
            this.btnRealizarVenta = new MetroFramework.Controls.MetroButton();
            this.tabDeposito = new MetroFramework.Controls.MetroTabPage();
            this.btnPenalizarProveedor = new MetroFramework.Controls.MetroButton();
            this.btnCrearReposicion = new MetroFramework.Controls.MetroButton();
            this.btnRegistrarEntrada = new MetroFramework.Controls.MetroButton();
            this.tcHome.SuspendLayout();
            this.tabAdmin.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.gbConfiguracion.SuspendLayout();
            this.tabVenta.SuspendLayout();
            this.tabDeposito.SuspendLayout();
            this.SuspendLayout();
            // 
            // tcHome
            // 
            this.tcHome.Appearance = System.Windows.Forms.TabAppearance.FlatButtons;
            this.tcHome.Controls.Add(this.tabAdmin);
            this.tcHome.Controls.Add(this.tabVenta);
            this.tcHome.Controls.Add(this.tabDeposito);
            this.tcHome.Location = new System.Drawing.Point(12, 54);
            this.tcHome.Name = "tcHome";
            this.tcHome.SelectedIndex = 0;
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
            this.tabVenta.Text = "Venta";
            this.tabVenta.VerticalScrollbarBarColor = true;
            this.tabVenta.VerticalScrollbarHighlightOnWheel = false;
            this.tabVenta.VerticalScrollbarSize = 10;
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
            this.tabDeposito.Controls.Add(this.btnPenalizarProveedor);
            this.tabDeposito.Controls.Add(this.btnCrearReposicion);
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
            // btnPenalizarProveedor
            // 
            this.btnPenalizarProveedor.Location = new System.Drawing.Point(236, 19);
            this.btnPenalizarProveedor.Name = "btnPenalizarProveedor";
            this.btnPenalizarProveedor.Size = new System.Drawing.Size(139, 39);
            this.btnPenalizarProveedor.TabIndex = 7;
            this.btnPenalizarProveedor.Text = "Penalizar Proveedor";
            this.btnPenalizarProveedor.UseSelectable = true;
            this.btnPenalizarProveedor.Click += new System.EventHandler(this.btnPenalizarProveedor_Click);
            // 
            // btnCrearReposicion
            // 
            this.btnCrearReposicion.Location = new System.Drawing.Point(127, 19);
            this.btnCrearReposicion.Name = "btnCrearReposicion";
            this.btnCrearReposicion.Size = new System.Drawing.Size(103, 39);
            this.btnCrearReposicion.TabIndex = 6;
            this.btnCrearReposicion.Text = "Crear Reposicion";
            this.btnCrearReposicion.UseSelectable = true;
            this.btnCrearReposicion.Click += new System.EventHandler(this.btnCrearReposicion_Click);
            // 
            // btnRegistrarEntrada
            // 
            this.btnRegistrarEntrada.Location = new System.Drawing.Point(18, 19);
            this.btnRegistrarEntrada.Name = "btnRegistrarEntrada";
            this.btnRegistrarEntrada.Size = new System.Drawing.Size(103, 39);
            this.btnRegistrarEntrada.TabIndex = 5;
            this.btnRegistrarEntrada.Text = "Registrar Entrada";
            this.btnRegistrarEntrada.UseSelectable = true;
            this.btnRegistrarEntrada.Click += new System.EventHandler(this.btnRegistrarEntrada_Click);
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
            this.ResumeLayout(false);

        }

        #endregion
        private MetroFramework.Controls.MetroTabControl tcHome;
        private MetroFramework.Controls.MetroTabPage tabAdmin;
        private MetroFramework.Controls.MetroTabPage tabVenta;
        private MetroFramework.Controls.MetroTabPage tabDeposito;
        private MetroFramework.Controls.MetroButton btnRealizarVenta;
        private MetroFramework.Controls.MetroButton btnConfigurarEdificio;
        private MetroFramework.Controls.MetroButton btnBuscarVenta;
        private MetroFramework.Controls.MetroButton btnCrearQueja;
        private MetroFramework.Controls.MetroButton btnPenalizarProveedor;
        private MetroFramework.Controls.MetroButton btnCrearReposicion;
        private MetroFramework.Controls.MetroButton btnRegistrarEntrada;
        private System.Windows.Forms.GroupBox groupBox1;
        private MetroFramework.Controls.MetroButton btnEmpleado;
        private MetroFramework.Controls.MetroButton btnProveedor;
        private System.Windows.Forms.GroupBox gbConfiguracion;
        private MetroFramework.Controls.MetroButton btnRestaurarDv;
        private MetroFramework.Controls.MetroButton btnUsuario;
        private MetroFramework.Controls.MetroButton btnBitacora;
        private MetroFramework.Controls.MetroButton btnBackUp;
        private MetroFramework.Controls.MetroButton btnIdioma;
    }
}