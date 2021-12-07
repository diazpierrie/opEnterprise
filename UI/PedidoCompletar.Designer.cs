
using System.ComponentModel;
using MetroFramework.Controls;

namespace UI
{
    partial class PedidoCompletar
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
            this.lblCliente = new MetroFramework.Controls.MetroLabel();
            this.txtProveedor = new MetroFramework.Controls.MetroTextBox();
            this.btnBuscarProveedor = new MetroFramework.Controls.MetroButton();
            this.btnRealizarVenta = new MetroFramework.Controls.MetroButton();
            this.SuspendLayout();
            // 
            // lblCliente
            // 
            this.lblCliente.AutoSize = true;
            this.lblCliente.Location = new System.Drawing.Point(68, 80);
            this.lblCliente.Name = "lblCliente";
            this.lblCliente.Size = new System.Drawing.Size(71, 19);
            this.lblCliente.TabIndex = 0;
            this.lblCliente.Tag = "vendor";
            this.lblCliente.Text = "Proveedor";
            // 
            // txtProveedor
            // 
            // 
            // 
            // 
            this.txtProveedor.CustomButton.Image = null;
            this.txtProveedor.CustomButton.Location = new System.Drawing.Point(181, 1);
            this.txtProveedor.CustomButton.Name = "";
            this.txtProveedor.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.txtProveedor.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.txtProveedor.CustomButton.TabIndex = 1;
            this.txtProveedor.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.txtProveedor.CustomButton.UseSelectable = true;
            this.txtProveedor.CustomButton.Visible = false;
            this.txtProveedor.Enabled = false;
            this.txtProveedor.Lines = new string[0];
            this.txtProveedor.Location = new System.Drawing.Point(145, 80);
            this.txtProveedor.MaxLength = 32767;
            this.txtProveedor.Name = "txtProveedor";
            this.txtProveedor.PasswordChar = '\0';
            this.txtProveedor.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.txtProveedor.SelectedText = "";
            this.txtProveedor.SelectionLength = 0;
            this.txtProveedor.SelectionStart = 0;
            this.txtProveedor.ShortcutsEnabled = true;
            this.txtProveedor.Size = new System.Drawing.Size(203, 23);
            this.txtProveedor.TabIndex = 1;
            this.txtProveedor.UseSelectable = true;
            this.txtProveedor.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.txtProveedor.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            // 
            // btnBuscarProveedor
            // 
            this.btnBuscarProveedor.Location = new System.Drawing.Point(354, 80);
            this.btnBuscarProveedor.Name = "btnBuscarProveedor";
            this.btnBuscarProveedor.Size = new System.Drawing.Size(114, 23);
            this.btnBuscarProveedor.TabIndex = 6;
            this.btnBuscarProveedor.Tag = "search_vendor";
            this.btnBuscarProveedor.Text = "Buscar Proveedor";
            this.btnBuscarProveedor.UseSelectable = true;
            this.btnBuscarProveedor.Click += new System.EventHandler(this.btnBuscarProveedor_Click);
            // 
            // btnRealizarVenta
            // 
            this.btnRealizarVenta.Location = new System.Drawing.Point(234, 109);
            this.btnRealizarVenta.Name = "btnRealizarVenta";
            this.btnRealizarVenta.Size = new System.Drawing.Size(114, 23);
            this.btnRealizarVenta.TabIndex = 8;
            this.btnRealizarVenta.Tag = "complete_order";
            this.btnRealizarVenta.Text = "Completar Pedido";
            this.btnRealizarVenta.UseSelectable = true;
            this.btnRealizarVenta.Click += new System.EventHandler(this.btnRealizarVenta_Click);
            // 
            // CompletarPedido
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(491, 150);
            this.Controls.Add(this.btnRealizarVenta);
            this.Controls.Add(this.btnBuscarProveedor);
            this.Controls.Add(this.txtProveedor);
            this.Controls.Add(this.lblCliente);
            this.Name = "PedidoCompletar";
            this.Text = "CompletarVenta";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private MetroLabel lblCliente;
        private MetroTextBox txtProveedor;
        private MetroButton btnBuscarProveedor;
        private MetroButton btnRealizarVenta;
    }
}