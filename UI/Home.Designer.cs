
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
            this.SuspendLayout();
            // 
            // btnProveedor
            // 
            this.btnProveedor.Location = new System.Drawing.Point(118, 114);
            this.btnProveedor.Name = "btnProveedor";
            this.btnProveedor.Size = new System.Drawing.Size(105, 38);
            this.btnProveedor.TabIndex = 0;
            this.btnProveedor.Text = "Proveedor";
            this.btnProveedor.UseSelectable = true;
            this.btnProveedor.Click += new System.EventHandler(this.btnProveedor_Click);
            // 
            // btnEmpleado
            // 
            this.btnEmpleado.Location = new System.Drawing.Point(498, 114);
            this.btnEmpleado.Name = "btnEmpleado";
            this.btnEmpleado.Size = new System.Drawing.Size(105, 38);
            this.btnEmpleado.TabIndex = 1;
            this.btnEmpleado.Text = "Empleado";
            this.btnEmpleado.UseSelectable = true;
            this.btnEmpleado.Click += new System.EventHandler(this.btnEmpleado_Click);
            // 
            // btnUsuario
            // 
            this.btnUsuario.Location = new System.Drawing.Point(118, 190);
            this.btnUsuario.Name = "btnUsuario";
            this.btnUsuario.Size = new System.Drawing.Size(105, 38);
            this.btnUsuario.TabIndex = 2;
            this.btnUsuario.Text = "Usuario";
            this.btnUsuario.UseSelectable = true;
            // 
            // Home
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.btnUsuario);
            this.Controls.Add(this.btnEmpleado);
            this.Controls.Add(this.btnProveedor);
            this.Name = "Home";
            this.Text = "Home";
            this.ResumeLayout(false);

        }

        #endregion

        private MetroFramework.Controls.MetroButton btnProveedor;
        private MetroFramework.Controls.MetroButton btnEmpleado;
        private MetroFramework.Controls.MetroButton btnUsuario;
    }
}