
namespace UI
{
    partial class ConfirmarPago
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            this.gridVentaDetalle = new MetroFramework.Controls.MetroGrid();
            this.btnCompletarVenta = new MetroFramework.Controls.MetroButton();
            this.btnCerrar = new MetroFramework.Controls.MetroButton();
            this.lblTotal = new MetroFramework.Controls.MetroLabel();
            this.txtEfectivo = new MetroFramework.Controls.MetroTextBox();
            this.lblEfectivoRecibido = new MetroFramework.Controls.MetroLabel();
            this.lblVueltoADar = new MetroFramework.Controls.MetroLabel();
            ((System.ComponentModel.ISupportInitialize)(this.gridVentaDetalle)).BeginInit();
            this.SuspendLayout();
            // 
            // gridVentaDetalle
            // 
            this.gridVentaDetalle.AllowUserToAddRows = false;
            this.gridVentaDetalle.AllowUserToDeleteRows = false;
            this.gridVentaDetalle.AllowUserToResizeRows = false;
            this.gridVentaDetalle.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.gridVentaDetalle.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridVentaDetalle.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.gridVentaDetalle.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.gridVentaDetalle.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridVentaDetalle.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.gridVentaDetalle.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(136)))), ((int)(((byte)(136)))), ((int)(((byte)(136)))));
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gridVentaDetalle.DefaultCellStyle = dataGridViewCellStyle2;
            this.gridVentaDetalle.EnableHeadersVisualStyles = false;
            this.gridVentaDetalle.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.gridVentaDetalle.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridVentaDetalle.Location = new System.Drawing.Point(23, 63);
            this.gridVentaDetalle.Name = "gridVentaDetalle";
            this.gridVentaDetalle.ReadOnly = true;
            this.gridVentaDetalle.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridVentaDetalle.RowHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.gridVentaDetalle.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.gridVentaDetalle.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gridVentaDetalle.Size = new System.Drawing.Size(623, 433);
            this.gridVentaDetalle.TabIndex = 0;
            // 
            // btnCompletarVenta
            // 
            this.btnCompletarVenta.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnCompletarVenta.Location = new System.Drawing.Point(653, 64);
            this.btnCompletarVenta.Name = "btnCompletarVenta";
            this.btnCompletarVenta.Size = new System.Drawing.Size(167, 28);
            this.btnCompletarVenta.TabIndex = 1;
            this.btnCompletarVenta.Text = "Completar Venta";
            this.btnCompletarVenta.UseSelectable = true;
            this.btnCompletarVenta.Click += new System.EventHandler(this.btnCompletarVenta_Click);
            // 
            // btnCerrar
            // 
            this.btnCerrar.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnCerrar.Location = new System.Drawing.Point(653, 468);
            this.btnCerrar.Name = "btnCerrar";
            this.btnCerrar.Size = new System.Drawing.Size(167, 28);
            this.btnCerrar.TabIndex = 2;
            this.btnCerrar.Text = "Cerrar";
            this.btnCerrar.UseSelectable = true;
            this.btnCerrar.Click += new System.EventHandler(this.btnCerrar_Click);
            // 
            // lblTotal
            // 
            this.lblTotal.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lblTotal.AutoSize = true;
            this.lblTotal.Location = new System.Drawing.Point(652, 197);
            this.lblTotal.Name = "lblTotal";
            this.lblTotal.Size = new System.Drawing.Size(39, 19);
            this.lblTotal.TabIndex = 3;
            this.lblTotal.Text = "Total:";
            // 
            // txtEfectivo
            // 
            this.txtEfectivo.Anchor = System.Windows.Forms.AnchorStyles.None;
            // 
            // 
            // 
            this.txtEfectivo.CustomButton.Image = null;
            this.txtEfectivo.CustomButton.Location = new System.Drawing.Point(145, 1);
            this.txtEfectivo.CustomButton.Name = "";
            this.txtEfectivo.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.txtEfectivo.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.txtEfectivo.CustomButton.TabIndex = 1;
            this.txtEfectivo.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.txtEfectivo.CustomButton.UseSelectable = true;
            this.txtEfectivo.CustomButton.Visible = false;
            this.txtEfectivo.Lines = new string[0];
            this.txtEfectivo.Location = new System.Drawing.Point(653, 248);
            this.txtEfectivo.MaxLength = 32767;
            this.txtEfectivo.Name = "txtEfectivo";
            this.txtEfectivo.PasswordChar = '\0';
            this.txtEfectivo.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.txtEfectivo.SelectedText = "";
            this.txtEfectivo.SelectionLength = 0;
            this.txtEfectivo.SelectionStart = 0;
            this.txtEfectivo.ShortcutsEnabled = true;
            this.txtEfectivo.Size = new System.Drawing.Size(167, 23);
            this.txtEfectivo.TabIndex = 4;
            this.txtEfectivo.UseSelectable = true;
            this.txtEfectivo.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.txtEfectivo.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            this.txtEfectivo.TextChanged += new System.EventHandler(this.txtEfectivo_TextChanged);
            // 
            // lblEfectivoRecibido
            // 
            this.lblEfectivoRecibido.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lblEfectivoRecibido.AutoSize = true;
            this.lblEfectivoRecibido.Location = new System.Drawing.Point(653, 226);
            this.lblEfectivoRecibido.Name = "lblEfectivoRecibido";
            this.lblEfectivoRecibido.Size = new System.Drawing.Size(112, 19);
            this.lblEfectivoRecibido.TabIndex = 5;
            this.lblEfectivoRecibido.Text = "Efectivo Recibido:";
            // 
            // lblVueltoADar
            // 
            this.lblVueltoADar.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lblVueltoADar.AutoSize = true;
            this.lblVueltoADar.Location = new System.Drawing.Point(653, 300);
            this.lblVueltoADar.Name = "lblVueltoADar";
            this.lblVueltoADar.Size = new System.Drawing.Size(84, 19);
            this.lblVueltoADar.TabIndex = 6;
            this.lblVueltoADar.Text = "Vuelto a dar:";
            // 
            // ConfirmarPago
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(843, 519);
            this.Controls.Add(this.lblVueltoADar);
            this.Controls.Add(this.lblEfectivoRecibido);
            this.Controls.Add(this.txtEfectivo);
            this.Controls.Add(this.lblTotal);
            this.Controls.Add(this.btnCerrar);
            this.Controls.Add(this.btnCompletarVenta);
            this.Controls.Add(this.gridVentaDetalle);
            this.Name = "ConfirmarPago";
            this.Text = "RecibirPago";
            ((System.ComponentModel.ISupportInitialize)(this.gridVentaDetalle)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private MetroFramework.Controls.MetroGrid gridVentaDetalle;
        private MetroFramework.Controls.MetroButton btnCompletarVenta;
        private MetroFramework.Controls.MetroButton btnCerrar;
        private MetroFramework.Controls.MetroLabel lblTotal;
        private MetroFramework.Controls.MetroTextBox txtEfectivo;
        private MetroFramework.Controls.MetroLabel lblEfectivoRecibido;
        private MetroFramework.Controls.MetroLabel lblVueltoADar;
    }
}