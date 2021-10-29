
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
            this.metroTabPage2 = new MetroFramework.Controls.MetroTabPage();
            this.metroTabPage1 = new MetroFramework.Controls.MetroTabPage();
            this.btnRealizarVenta = new MetroFramework.Controls.MetroButton();
            this.tcHome.SuspendLayout();
            this.tabAdmin.SuspendLayout();
            this.metroTabPage2.SuspendLayout();
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
            this.btnEmpleado.Location = new System.Drawing.Point(128, 20);
            this.btnEmpleado.Name = "btnEmpleado";
            this.btnEmpleado.Size = new System.Drawing.Size(105, 38);
            this.btnEmpleado.TabIndex = 1;
            this.btnEmpleado.Text = "Empleado";
            this.btnEmpleado.UseSelectable = true;
            this.btnEmpleado.Click += new System.EventHandler(this.btnEmpleado_Click);
            // 
            // btnUsuario
            // 
            this.btnUsuario.Location = new System.Drawing.Point(249, 20);
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
            this.tcHome.Controls.Add(this.metroTabPage2);
            this.tcHome.Controls.Add(this.metroTabPage1);
            this.tcHome.Location = new System.Drawing.Point(12, 54);
            this.tcHome.Name = "tcHome";
            this.tcHome.SelectedIndex = 1;
            this.tcHome.Size = new System.Drawing.Size(776, 384);
            this.tcHome.TabIndex = 3;
            this.tcHome.UseSelectable = true;
            // 
            // tabAdmin
            // 
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
            // metroTabPage2
            // 
            this.metroTabPage2.Controls.Add(this.btnRealizarVenta);
            this.metroTabPage2.HorizontalScrollbarBarColor = true;
            this.metroTabPage2.HorizontalScrollbarHighlightOnWheel = false;
            this.metroTabPage2.HorizontalScrollbarSize = 10;
            this.metroTabPage2.Location = new System.Drawing.Point(4, 41);
            this.metroTabPage2.Name = "metroTabPage2";
            this.metroTabPage2.Size = new System.Drawing.Size(768, 339);
            this.metroTabPage2.TabIndex = 1;
            this.metroTabPage2.Text = "metroTabPage2";
            this.metroTabPage2.VerticalScrollbarBarColor = true;
            this.metroTabPage2.VerticalScrollbarHighlightOnWheel = false;
            this.metroTabPage2.VerticalScrollbarSize = 10;
            // 
            // metroTabPage1
            // 
            this.metroTabPage1.HorizontalScrollbarBarColor = true;
            this.metroTabPage1.HorizontalScrollbarHighlightOnWheel = false;
            this.metroTabPage1.HorizontalScrollbarSize = 10;
            this.metroTabPage1.Location = new System.Drawing.Point(4, 41);
            this.metroTabPage1.Name = "metroTabPage1";
            this.metroTabPage1.Size = new System.Drawing.Size(768, 381);
            this.metroTabPage1.TabIndex = 2;
            this.metroTabPage1.Text = "metroTabPage1";
            this.metroTabPage1.VerticalScrollbarBarColor = true;
            this.metroTabPage1.VerticalScrollbarHighlightOnWheel = false;
            this.metroTabPage1.VerticalScrollbarSize = 10;
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
            this.metroTabPage2.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private MetroFramework.Controls.MetroButton btnProveedor;
        private MetroFramework.Controls.MetroButton btnEmpleado;
        private MetroFramework.Controls.MetroButton btnUsuario;
        private MetroFramework.Controls.MetroTabControl tcHome;
        private MetroFramework.Controls.MetroTabPage tabAdmin;
        private MetroFramework.Controls.MetroTabPage metroTabPage2;
        private MetroFramework.Controls.MetroTabPage metroTabPage1;
        private MetroFramework.Controls.MetroButton btnRealizarVenta;
    }
}