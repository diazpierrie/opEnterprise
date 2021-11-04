
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
            this.btnProveedor = new MetroFramework.Controls.MetroButton();
            this.btnEmpleado = new MetroFramework.Controls.MetroButton();
            this.btnUsuario = new MetroFramework.Controls.MetroButton();
            this.tcHome = new MetroFramework.Controls.MetroTabControl();
            this.tabAdmin = new MetroFramework.Controls.MetroTabPage();
            this.btnConfigurarEdificio = new MetroFramework.Controls.MetroButton();
            this.tabVenta = new MetroFramework.Controls.MetroTabPage();
            this.btnBuscarVenta = new MetroFramework.Controls.MetroButton();
            this.btnRealizarVenta = new MetroFramework.Controls.MetroButton();
            this.tabDeposito = new MetroFramework.Controls.MetroTabPage();
            this.btnCrearQueja = new MetroFramework.Controls.MetroButton();
            this.tcHome.SuspendLayout();
            this.tabAdmin.SuspendLayout();
            this.tabVenta.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnProveedor
            // 
            this.btnProveedor.Location = new System.Drawing.Point(3, 20);
            this.btnProveedor.Name = "btnProveedor";
            this.btnProveedor.Size = new System.Drawing.Size(105, 38);
            this.btnProveedor.TabIndex = 0;
            this.btnProveedor.Text = "Proveedor";
            this.btnProveedor.UseSelectable = true;
            this.btnProveedor.Click += new System.EventHandler(this.btnProveedor_Click);
            // 
            // btnEmpleado
            // 
            this.btnEmpleado.Location = new System.Drawing.Point(114, 20);
            this.btnEmpleado.Name = "btnEmpleado";
            this.btnEmpleado.Size = new System.Drawing.Size(105, 38);
            this.btnEmpleado.TabIndex = 1;
            this.btnEmpleado.Text = "Empleado";
            this.btnEmpleado.UseSelectable = true;
            this.btnEmpleado.Click += new System.EventHandler(this.btnEmpleado_Click);
            // 
            // btnUsuario
            // 
            this.btnUsuario.Location = new System.Drawing.Point(225, 20);
            this.btnUsuario.Name = "btnUsuario";
            this.btnUsuario.Size = new System.Drawing.Size(105, 38);
            this.btnUsuario.TabIndex = 2;
            this.btnUsuario.Text = "Usuario";
            this.btnUsuario.UseSelectable = true;
            // 
            // tcHome
            // 
            this.tcHome.Appearance = System.Windows.Forms.TabAppearance.FlatButtons;
            this.tcHome.Controls.Add(this.tabAdmin);
            this.tcHome.Controls.Add(this.tabVenta);
            this.tcHome.Controls.Add(this.tabDeposito);
            this.tcHome.Location = new System.Drawing.Point(12, 54);
            this.tcHome.Name = "tcHome";
            this.tcHome.SelectedIndex = 1;
            this.tcHome.Size = new System.Drawing.Size(776, 384);
            this.tcHome.TabIndex = 3;
            this.tcHome.UseSelectable = true;
            // 
            // tabAdmin
            // 
            this.tabAdmin.Controls.Add(this.btnConfigurarEdificio);
            this.tabAdmin.Controls.Add(this.btnUsuario);
            this.tabAdmin.Controls.Add(this.btnEmpleado);
            this.tabAdmin.Controls.Add(this.btnProveedor);
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
            // btnConfigurarEdificio
            // 
            this.btnConfigurarEdificio.Location = new System.Drawing.Point(336, 20);
            this.btnConfigurarEdificio.Name = "btnConfigurarEdificio";
            this.btnConfigurarEdificio.Size = new System.Drawing.Size(105, 38);
            this.btnConfigurarEdificio.TabIndex = 3;
            this.btnConfigurarEdificio.Text = "Configurar Edificio";
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
            this.tabVenta.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private MetroFramework.Controls.MetroButton btnProveedor;
        private MetroFramework.Controls.MetroButton btnEmpleado;
        private MetroFramework.Controls.MetroButton btnUsuario;
        private MetroFramework.Controls.MetroTabControl tcHome;
        private MetroFramework.Controls.MetroTabPage tabAdmin;
        private MetroFramework.Controls.MetroTabPage tabVenta;
        private MetroFramework.Controls.MetroTabPage tabDeposito;
        private MetroFramework.Controls.MetroButton btnRealizarVenta;
        private MetroFramework.Controls.MetroButton btnConfigurarEdificio;
        private MetroFramework.Controls.MetroButton btnBuscarVenta;
        private MetroFramework.Controls.MetroButton btnCrearQueja;
    }
}