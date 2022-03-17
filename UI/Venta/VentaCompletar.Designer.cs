
using System.ComponentModel;
using MetroFramework.Controls;

namespace UI
{
    partial class VentaCompletar
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
            this.cbCuotas = new MetroFramework.Controls.MetroComboBox();
            this.lblCuotas = new MetroFramework.Controls.MetroLabel();
            this.btnRealizarVenta = new MetroFramework.Controls.MetroButton();
            this.cbMetodoPago = new MetroFramework.Controls.MetroComboBox();
            this.btnBuscarCliente = new MetroFramework.Controls.MetroButton();
            this.lblMetodoPago = new MetroFramework.Controls.MetroLabel();
            this.txtCliente = new MetroFramework.Controls.MetroTextBox();
            this.lblTotal = new System.Windows.Forms.Label();
            this.cbMetodoEntrega = new MetroFramework.Controls.MetroComboBox();
            this.lblMetodoEntrega = new MetroFramework.Controls.MetroLabel();
            this.cbDirecciones = new MetroFramework.Controls.MetroComboBox();
            this.lblDireccion = new MetroFramework.Controls.MetroLabel();
            this.lblCliente = new MetroFramework.Controls.MetroLabel();
            this.btnEnvioLocal = new MetroFramework.Controls.MetroButton();
            this.SuspendLayout();
            // 
            // cbCuotas
            // 
            this.cbCuotas.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.cbCuotas.FormattingEnabled = true;
            this.cbCuotas.ItemHeight = 23;
            this.cbCuotas.Location = new System.Drawing.Point(144, 214);
            this.cbCuotas.Name = "cbCuotas";
            this.cbCuotas.Size = new System.Drawing.Size(204, 29);
            this.cbCuotas.TabIndex = 10;
            this.cbCuotas.UseSelectable = true;
            // 
            // lblCuotas
            // 
            this.lblCuotas.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblCuotas.AutoSize = true;
            this.lblCuotas.Location = new System.Drawing.Point(88, 219);
            this.lblCuotas.Name = "lblCuotas";
            this.lblCuotas.Size = new System.Drawing.Size(49, 19);
            this.lblCuotas.TabIndex = 9;
            this.lblCuotas.Tag = "installments";
            this.lblCuotas.Text = "Cuotas";
            // 
            // btnRealizarVenta
            // 
            this.btnRealizarVenta.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.btnRealizarVenta.Location = new System.Drawing.Point(233, 249);
            this.btnRealizarVenta.Name = "btnRealizarVenta";
            this.btnRealizarVenta.Size = new System.Drawing.Size(114, 23);
            this.btnRealizarVenta.TabIndex = 8;
            this.btnRealizarVenta.Tag = "finish_sale";
            this.btnRealizarVenta.Text = "Completar Venta";
            this.btnRealizarVenta.UseSelectable = true;
            this.btnRealizarVenta.Click += new System.EventHandler(this.btnRealizarVenta_Click);
            // 
            // cbMetodoPago
            // 
            this.cbMetodoPago.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.cbMetodoPago.FormattingEnabled = true;
            this.cbMetodoPago.ItemHeight = 23;
            this.cbMetodoPago.Location = new System.Drawing.Point(144, 179);
            this.cbMetodoPago.Name = "cbMetodoPago";
            this.cbMetodoPago.Size = new System.Drawing.Size(204, 29);
            this.cbMetodoPago.TabIndex = 7;
            this.cbMetodoPago.UseSelectable = true;
            this.cbMetodoPago.SelectedIndexChanged += new System.EventHandler(this.cbMetodoPago_SelectedIndexChanged);
            // 
            // btnBuscarCliente
            // 
            this.btnBuscarCliente.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnBuscarCliente.Location = new System.Drawing.Point(354, 80);
            this.btnBuscarCliente.Name = "btnBuscarCliente";
            this.btnBuscarCliente.Size = new System.Drawing.Size(114, 23);
            this.btnBuscarCliente.TabIndex = 6;
            this.btnBuscarCliente.Tag = "search_client";
            this.btnBuscarCliente.Text = "Buscar Cliente";
            this.btnBuscarCliente.UseSelectable = true;
            this.btnBuscarCliente.Click += new System.EventHandler(this.btnBuscarCliente_Click);
            // 
            // lblMetodoPago
            // 
            this.lblMetodoPago.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblMetodoPago.AutoSize = true;
            this.lblMetodoPago.Location = new System.Drawing.Point(29, 186);
            this.lblMetodoPago.Name = "lblMetodoPago";
            this.lblMetodoPago.Size = new System.Drawing.Size(109, 19);
            this.lblMetodoPago.TabIndex = 2;
            this.lblMetodoPago.Tag = "payment_method";
            this.lblMetodoPago.Text = "Metodo de Pago";
            // 
            // txtCliente
            // 
            this.txtCliente.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
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
            this.lblTotal.Location = new System.Drawing.Point(25, 315);
            this.lblTotal.Name = "lblTotal";
            this.lblTotal.Size = new System.Drawing.Size(67, 25);
            this.lblTotal.TabIndex = 11;
            this.lblTotal.Text = "Total: ";
            // 
            // cbMetodoEntrega
            // 
            this.cbMetodoEntrega.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.cbMetodoEntrega.FormattingEnabled = true;
            this.cbMetodoEntrega.ItemHeight = 23;
            this.cbMetodoEntrega.Location = new System.Drawing.Point(144, 109);
            this.cbMetodoEntrega.Name = "cbMetodoEntrega";
            this.cbMetodoEntrega.Size = new System.Drawing.Size(203, 29);
            this.cbMetodoEntrega.TabIndex = 13;
            this.cbMetodoEntrega.UseSelectable = true;
            this.cbMetodoEntrega.SelectedIndexChanged += new System.EventHandler(this.cbMetodoEntrega_SelectedIndexChanged);
            // 
            // lblMetodoEntrega
            // 
            this.lblMetodoEntrega.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblMetodoEntrega.AutoSize = true;
            this.lblMetodoEntrega.Location = new System.Drawing.Point(84, 115);
            this.lblMetodoEntrega.Name = "lblMetodoEntrega";
            this.lblMetodoEntrega.Size = new System.Drawing.Size(54, 19);
            this.lblMetodoEntrega.TabIndex = 12;
            this.lblMetodoEntrega.Tag = "delivery";
            this.lblMetodoEntrega.Text = "Entrega";
            // 
            // cbDirecciones
            // 
            this.cbDirecciones.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.cbDirecciones.FormattingEnabled = true;
            this.cbDirecciones.ItemHeight = 23;
            this.cbDirecciones.Location = new System.Drawing.Point(144, 144);
            this.cbDirecciones.Name = "cbDirecciones";
            this.cbDirecciones.Size = new System.Drawing.Size(204, 29);
            this.cbDirecciones.TabIndex = 15;
            this.cbDirecciones.UseSelectable = true;
            // 
            // lblDireccion
            // 
            this.lblDireccion.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblDireccion.AutoSize = true;
            this.lblDireccion.Location = new System.Drawing.Point(74, 150);
            this.lblDireccion.Name = "lblDireccion";
            this.lblDireccion.Size = new System.Drawing.Size(63, 19);
            this.lblDireccion.TabIndex = 14;
            this.lblDireccion.Tag = "address";
            this.lblDireccion.Text = "Direccion";
            // 
            // lblCliente
            // 
            this.lblCliente.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblCliente.AutoSize = true;
            this.lblCliente.Location = new System.Drawing.Point(90, 80);
            this.lblCliente.Name = "lblCliente";
            this.lblCliente.Size = new System.Drawing.Size(49, 19);
            this.lblCliente.TabIndex = 0;
            this.lblCliente.Tag = "client";
            this.lblCliente.Text = "Cliente";
            // 
            // btnEnvioLocal
            // 
            this.btnEnvioLocal.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnEnvioLocal.Location = new System.Drawing.Point(354, 111);
            this.btnEnvioLocal.Name = "btnEnvioLocal";
            this.btnEnvioLocal.Size = new System.Drawing.Size(114, 23);
            this.btnEnvioLocal.TabIndex = 18;
            this.btnEnvioLocal.Tag = "branch_delivery";
            this.btnEnvioLocal.Text = "Envio Local";
            this.btnEnvioLocal.UseSelectable = true;
            this.btnEnvioLocal.Click += new System.EventHandler(this.btnEnvioLocal_Click);
            // 
            // VentaCompletar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(501, 356);
            this.Controls.Add(this.btnEnvioLocal);
            this.Controls.Add(this.cbDirecciones);
            this.Controls.Add(this.lblDireccion);
            this.Controls.Add(this.cbMetodoEntrega);
            this.Controls.Add(this.lblMetodoEntrega);
            this.Controls.Add(this.lblTotal);
            this.Controls.Add(this.cbCuotas);
            this.Controls.Add(this.lblCuotas);
            this.Controls.Add(this.btnRealizarVenta);
            this.Controls.Add(this.cbMetodoPago);
            this.Controls.Add(this.btnBuscarCliente);
            this.Controls.Add(this.lblMetodoPago);
            this.Controls.Add(this.txtCliente);
            this.Controls.Add(this.lblCliente);
            this.Name = "VentaCompletar";
            this.Resizable = false;
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private MetroTextBox txtCliente;
        private MetroLabel lblMetodoPago;
        private MetroButton btnBuscarCliente;
        private MetroComboBox cbMetodoPago;
        private MetroButton btnRealizarVenta;
        private MetroComboBox cbCuotas;
        private MetroLabel lblCuotas;
        private System.Windows.Forms.Label lblTotal;
        private MetroComboBox cbMetodoEntrega;
        private MetroLabel lblMetodoEntrega;
        private MetroComboBox cbDirecciones;
        private MetroLabel lblDireccion;
        private MetroLabel lblCliente;
        private MetroButton btnEnvioLocal;
    }
}