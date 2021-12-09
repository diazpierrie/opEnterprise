
using System.ComponentModel;
using MetroFramework.Controls;

namespace UI
{
    partial class DepositoCompletarPedido
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
            this.btnRealizarVenta = new MetroFramework.Controls.MetroButton();
            this.btnBuscarProveedor = new MetroFramework.Controls.MetroButton();
            this.txtCliente = new MetroFramework.Controls.MetroTextBox();
            this.lblTotal = new System.Windows.Forms.Label();
            this.lblProveedor = new MetroFramework.Controls.MetroLabel();
            this.SuspendLayout();
            // 
            // btnRealizarVenta
            // 
            this.btnRealizarVenta.Location = new System.Drawing.Point(234, 109);
            this.btnRealizarVenta.Name = "btnRealizarVenta";
            this.btnRealizarVenta.Size = new System.Drawing.Size(114, 23);
            this.btnRealizarVenta.TabIndex = 8;
            this.btnRealizarVenta.Text = "Completar Pedido";
            this.btnRealizarVenta.UseSelectable = true;
            this.btnRealizarVenta.Click += new System.EventHandler(this.btnCompletarPedido_Click);
            // 
            // btnBuscarProveedor
            // 
            this.btnBuscarProveedor.Location = new System.Drawing.Point(354, 80);
            this.btnBuscarProveedor.Name = "btnBuscarProveedor";
            this.btnBuscarProveedor.Size = new System.Drawing.Size(114, 23);
            this.btnBuscarProveedor.TabIndex = 6;
            this.btnBuscarProveedor.Text = "Buscar Proveedor";
            this.btnBuscarProveedor.UseSelectable = true;
            this.btnBuscarProveedor.Click += new System.EventHandler(this.btnBuscarProveedor_Click);
            // 
            // txtCliente
            // 
            // 
            // 
            // 
            this.txtCliente.CustomButton.Image = null;
            this.txtCliente.CustomButton.Location = new System.Drawing.Point(182, 1);
            this.txtCliente.CustomButton.Name = "";
            this.txtCliente.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.txtCliente.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.txtCliente.CustomButton.TabIndex = 1;
            this.txtCliente.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.txtCliente.CustomButton.UseSelectable = true;
            this.txtCliente.CustomButton.Visible = false;
            this.txtCliente.Enabled = false;
            this.txtCliente.Lines = new string[0];
            this.txtCliente.Location = new System.Drawing.Point(144, 80);
            this.txtCliente.MaxLength = 32767;
            this.txtCliente.Name = "txtCliente";
            this.txtCliente.PasswordChar = '\0';
            this.txtCliente.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.txtCliente.SelectedText = "";
            this.txtCliente.SelectionLength = 0;
            this.txtCliente.SelectionStart = 0;
            this.txtCliente.ShortcutsEnabled = true;
            this.txtCliente.Size = new System.Drawing.Size(204, 23);
            this.txtCliente.TabIndex = 1;
            this.txtCliente.UseSelectable = true;
            this.txtCliente.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.txtCliente.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            // 
            // lblTotal
            // 
            this.lblTotal.AutoSize = true;
            this.lblTotal.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTotal.Location = new System.Drawing.Point(23, 151);
            this.lblTotal.Name = "lblTotal";
            this.lblTotal.Size = new System.Drawing.Size(67, 25);
            this.lblTotal.TabIndex = 11;
            this.lblTotal.Text = "Total: ";
            // 
            // lblProveedor
            // 
            this.lblProveedor.AutoSize = true;
            this.lblProveedor.Location = new System.Drawing.Point(67, 80);
            this.lblProveedor.Name = "lblProveedor";
            this.lblProveedor.Size = new System.Drawing.Size(71, 19);
            this.lblProveedor.TabIndex = 0;
            this.lblProveedor.Text = "Proveedor";
            // 
            // DepositoCompletarPedido
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(501, 194);
            this.Controls.Add(this.lblTotal);
            this.Controls.Add(this.btnRealizarVenta);
            this.Controls.Add(this.btnBuscarProveedor);
            this.Controls.Add(this.txtCliente);
            this.Controls.Add(this.lblProveedor);
            this.Name = "DepositoCompletarPedido";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private MetroTextBox txtCliente;
        private MetroButton btnBuscarProveedor;
        private MetroButton btnRealizarVenta;
        private System.Windows.Forms.Label lblTotal;
        private MetroLabel lblProveedor;
    }
}