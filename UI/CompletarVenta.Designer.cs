
namespace UI
{
    partial class CompletarVenta
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
            this.lblCliente = new MetroFramework.Controls.MetroLabel();
            this.txtCliente = new MetroFramework.Controls.MetroTextBox();
            this.lblMetodoPago = new MetroFramework.Controls.MetroLabel();
            this.btnBuscarCliente = new MetroFramework.Controls.MetroButton();
            this.cbMetodoPago = new MetroFramework.Controls.MetroComboBox();
            this.btnRealizarVenta = new MetroFramework.Controls.MetroButton();
            this.SuspendLayout();
            // 
            // lblCliente
            // 
            this.lblCliente.AutoSize = true;
            this.lblCliente.Location = new System.Drawing.Point(90, 80);
            this.lblCliente.Name = "lblCliente";
            this.lblCliente.Size = new System.Drawing.Size(49, 19);
            this.lblCliente.TabIndex = 0;
            this.lblCliente.Text = "Cliente";
            // 
            // txtCliente
            // 
            // 
            // 
            // 
            this.txtCliente.CustomButton.Image = null;
            this.txtCliente.CustomButton.Location = new System.Drawing.Point(181, 1);
            this.txtCliente.CustomButton.Name = "";
            this.txtCliente.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.txtCliente.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.txtCliente.CustomButton.TabIndex = 1;
            this.txtCliente.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.txtCliente.CustomButton.UseSelectable = true;
            this.txtCliente.CustomButton.Visible = false;
            this.txtCliente.Enabled = false;
            this.txtCliente.Lines = new string[0];
            this.txtCliente.Location = new System.Drawing.Point(145, 80);
            this.txtCliente.MaxLength = 32767;
            this.txtCliente.Name = "txtCliente";
            this.txtCliente.PasswordChar = '\0';
            this.txtCliente.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.txtCliente.SelectedText = "";
            this.txtCliente.SelectionLength = 0;
            this.txtCliente.SelectionStart = 0;
            this.txtCliente.ShortcutsEnabled = true;
            this.txtCliente.Size = new System.Drawing.Size(203, 23);
            this.txtCliente.TabIndex = 1;
            this.txtCliente.UseSelectable = true;
            this.txtCliente.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.txtCliente.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            // 
            // lblMetodoPago
            // 
            this.lblMetodoPago.AutoSize = true;
            this.lblMetodoPago.Location = new System.Drawing.Point(30, 116);
            this.lblMetodoPago.Name = "lblMetodoPago";
            this.lblMetodoPago.Size = new System.Drawing.Size(109, 19);
            this.lblMetodoPago.TabIndex = 2;
            this.lblMetodoPago.Text = "Metodo de Pago";
            // 
            // btnBuscarCliente
            // 
            this.btnBuscarCliente.Location = new System.Drawing.Point(354, 80);
            this.btnBuscarCliente.Name = "btnBuscarCliente";
            this.btnBuscarCliente.Size = new System.Drawing.Size(114, 23);
            this.btnBuscarCliente.TabIndex = 6;
            this.btnBuscarCliente.Text = "Buscar Cliente";
            this.btnBuscarCliente.UseSelectable = true;
            this.btnBuscarCliente.Click += new System.EventHandler(this.btnBuscarCliente_Click);
            // 
            // cbMetodoPago
            // 
            this.cbMetodoPago.FormattingEnabled = true;
            this.cbMetodoPago.ItemHeight = 23;
            this.cbMetodoPago.Location = new System.Drawing.Point(146, 109);
            this.cbMetodoPago.Name = "cbMetodoPago";
            this.cbMetodoPago.Size = new System.Drawing.Size(202, 29);
            this.cbMetodoPago.TabIndex = 7;
            this.cbMetodoPago.UseSelectable = true;
            // 
            // btnRealizarVenta
            // 
            this.btnRealizarVenta.Location = new System.Drawing.Point(234, 144);
            this.btnRealizarVenta.Name = "btnRealizarVenta";
            this.btnRealizarVenta.Size = new System.Drawing.Size(114, 23);
            this.btnRealizarVenta.TabIndex = 8;
            this.btnRealizarVenta.Text = "Completar Venta";
            this.btnRealizarVenta.UseSelectable = true;
            this.btnRealizarVenta.Click += new System.EventHandler(this.btnRealizarVenta_Click);
            // 
            // CompletarVenta
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(491, 187);
            this.Controls.Add(this.btnRealizarVenta);
            this.Controls.Add(this.cbMetodoPago);
            this.Controls.Add(this.btnBuscarCliente);
            this.Controls.Add(this.lblMetodoPago);
            this.Controls.Add(this.txtCliente);
            this.Controls.Add(this.lblCliente);
            this.Name = "CompletarVenta";
            this.Text = "CompletarVenta";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private MetroFramework.Controls.MetroLabel lblCliente;
        private MetroFramework.Controls.MetroTextBox txtCliente;
        private MetroFramework.Controls.MetroLabel lblMetodoPago;
        private MetroFramework.Controls.MetroButton btnBuscarCliente;
        private MetroFramework.Controls.MetroComboBox cbMetodoPago;
        private MetroFramework.Controls.MetroButton btnRealizarVenta;
    }
}