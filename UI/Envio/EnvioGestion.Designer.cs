
using System.ComponentModel;
using MetroFramework.Controls;

namespace UI
{
    partial class EnvioGestion
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            this.btnDespacharEnvio = new MetroFramework.Controls.MetroButton();
            this.lblEstado = new MetroFramework.Controls.MetroLabel();
            this.cbEstado = new MetroFramework.Controls.MetroComboBox();
            this.btnBuscar = new MetroFramework.Controls.MetroButton();
            this.lblCliente = new MetroFramework.Controls.MetroLabel();
            this.txtCliente = new MetroFramework.Controls.MetroTextBox();
            this.lblUsuario = new MetroFramework.Controls.MetroLabel();
            this.txtUsuario = new MetroFramework.Controls.MetroTextBox();
            this.btnCerrar = new MetroFramework.Controls.MetroButton();
            this.gridClientes = new MetroFramework.Controls.MetroGrid();
            this.btnConfirmarRecepcion = new MetroFramework.Controls.MetroButton();
            ((System.ComponentModel.ISupportInitialize)(this.gridClientes)).BeginInit();
            this.SuspendLayout();
            // 
            // btnDespacharEnvio
            // 
            this.btnDespacharEnvio.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnDespacharEnvio.Location = new System.Drawing.Point(750, 268);
            this.btnDespacharEnvio.Name = "btnDespacharEnvio";
            this.btnDespacharEnvio.Size = new System.Drawing.Size(157, 23);
            this.btnDespacharEnvio.TabIndex = 49;
            this.btnDespacharEnvio.Tag = "dispatch_delivery";
            this.btnDespacharEnvio.Text = "Despachar Envio";
            this.btnDespacharEnvio.UseSelectable = true;
            this.btnDespacharEnvio.Click += new System.EventHandler(this.BtnDespacharEnvio_Click);
            // 
            // lblEstado
            // 
            this.lblEstado.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.lblEstado.AutoSize = true;
            this.lblEstado.Location = new System.Drawing.Point(696, 126);
            this.lblEstado.Name = "lblEstado";
            this.lblEstado.Size = new System.Drawing.Size(48, 19);
            this.lblEstado.TabIndex = 48;
            this.lblEstado.Tag = "";
            this.lblEstado.Text = "Estado";
            // 
            // cbEstado
            // 
            this.cbEstado.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.cbEstado.FormattingEnabled = true;
            this.cbEstado.ItemHeight = 23;
            this.cbEstado.Location = new System.Drawing.Point(750, 121);
            this.cbEstado.Name = "cbEstado";
            this.cbEstado.Size = new System.Drawing.Size(159, 29);
            this.cbEstado.TabIndex = 47;
            this.cbEstado.UseSelectable = true;
            // 
            // btnBuscar
            // 
            this.btnBuscar.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnBuscar.Location = new System.Drawing.Point(751, 182);
            this.btnBuscar.Name = "btnBuscar";
            this.btnBuscar.Size = new System.Drawing.Size(157, 23);
            this.btnBuscar.TabIndex = 45;
            this.btnBuscar.Tag = "search";
            this.btnBuscar.Text = "Buscar";
            this.btnBuscar.UseSelectable = true;
            this.btnBuscar.Click += new System.EventHandler(this.BtnBuscar_Click);
            // 
            // lblCliente
            // 
            this.lblCliente.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.lblCliente.AutoSize = true;
            this.lblCliente.Location = new System.Drawing.Point(695, 94);
            this.lblCliente.Name = "lblCliente";
            this.lblCliente.Size = new System.Drawing.Size(49, 19);
            this.lblCliente.TabIndex = 38;
            this.lblCliente.Tag = "client";
            this.lblCliente.Text = "Cliente";
            // 
            // txtCliente
            // 
            this.txtCliente.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            // 
            // 
            // 
            this.txtCliente.CustomButton.Image = null;
            this.txtCliente.CustomButton.Location = new System.Drawing.Point(137, 1);
            this.txtCliente.CustomButton.Name = "";
            this.txtCliente.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.txtCliente.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.txtCliente.CustomButton.TabIndex = 1;
            this.txtCliente.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.txtCliente.CustomButton.UseSelectable = true;
            this.txtCliente.CustomButton.Visible = false;
            this.txtCliente.Lines = new string[0];
            this.txtCliente.Location = new System.Drawing.Point(750, 92);
            this.txtCliente.MaxLength = 32767;
            this.txtCliente.Name = "txtCliente";
            this.txtCliente.PasswordChar = '\0';
            this.txtCliente.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.txtCliente.SelectedText = "";
            this.txtCliente.SelectionLength = 0;
            this.txtCliente.SelectionStart = 0;
            this.txtCliente.ShortcutsEnabled = true;
            this.txtCliente.Size = new System.Drawing.Size(159, 23);
            this.txtCliente.TabIndex = 37;
            this.txtCliente.UseSelectable = true;
            this.txtCliente.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.txtCliente.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            // 
            // lblUsuario
            // 
            this.lblUsuario.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.lblUsuario.AutoSize = true;
            this.lblUsuario.Location = new System.Drawing.Point(691, 66);
            this.lblUsuario.Name = "lblUsuario";
            this.lblUsuario.Size = new System.Drawing.Size(53, 19);
            this.lblUsuario.TabIndex = 36;
            this.lblUsuario.Tag = "user";
            this.lblUsuario.Text = "Usuario";
            // 
            // txtUsuario
            // 
            this.txtUsuario.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            // 
            // 
            // 
            this.txtUsuario.CustomButton.Image = null;
            this.txtUsuario.CustomButton.Location = new System.Drawing.Point(136, 1);
            this.txtUsuario.CustomButton.Name = "";
            this.txtUsuario.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.txtUsuario.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.txtUsuario.CustomButton.TabIndex = 1;
            this.txtUsuario.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.txtUsuario.CustomButton.UseSelectable = true;
            this.txtUsuario.CustomButton.Visible = false;
            this.txtUsuario.Lines = new string[0];
            this.txtUsuario.Location = new System.Drawing.Point(751, 63);
            this.txtUsuario.MaxLength = 32767;
            this.txtUsuario.Name = "txtUsuario";
            this.txtUsuario.PasswordChar = '\0';
            this.txtUsuario.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.txtUsuario.SelectedText = "";
            this.txtUsuario.SelectionLength = 0;
            this.txtUsuario.SelectionStart = 0;
            this.txtUsuario.ShortcutsEnabled = true;
            this.txtUsuario.Size = new System.Drawing.Size(158, 23);
            this.txtUsuario.TabIndex = 35;
            this.txtUsuario.UseSelectable = true;
            this.txtUsuario.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.txtUsuario.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            // 
            // btnCerrar
            // 
            this.btnCerrar.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnCerrar.Location = new System.Drawing.Point(750, 469);
            this.btnCerrar.Name = "btnCerrar";
            this.btnCerrar.Size = new System.Drawing.Size(157, 23);
            this.btnCerrar.TabIndex = 12;
            this.btnCerrar.Tag = "close";
            this.btnCerrar.Text = "Cerrar";
            this.btnCerrar.UseSelectable = true;
            this.btnCerrar.Click += new System.EventHandler(this.BtnCerrar_Click);
            // 
            // gridClientes
            // 
            this.gridClientes.AllowUserToAddRows = false;
            this.gridClientes.AllowUserToDeleteRows = false;
            this.gridClientes.AllowUserToResizeRows = false;
            this.gridClientes.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gridClientes.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridClientes.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.gridClientes.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.gridClientes.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridClientes.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.gridClientes.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(136)))), ((int)(((byte)(136)))), ((int)(((byte)(136)))));
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gridClientes.DefaultCellStyle = dataGridViewCellStyle2;
            this.gridClientes.EnableHeadersVisualStyles = false;
            this.gridClientes.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.gridClientes.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridClientes.Location = new System.Drawing.Point(24, 63);
            this.gridClientes.Name = "gridClientes";
            this.gridClientes.ReadOnly = true;
            this.gridClientes.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridClientes.RowHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.gridClientes.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.gridClientes.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gridClientes.Size = new System.Drawing.Size(661, 429);
            this.gridClientes.TabIndex = 0;
            this.gridClientes.CellMouseDoubleClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.GridClientes_CellMouseDoubleClick);
            // 
            // btnConfirmarRecepcion
            // 
            this.btnConfirmarRecepcion.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnConfirmarRecepcion.Location = new System.Drawing.Point(750, 297);
            this.btnConfirmarRecepcion.Name = "btnConfirmarRecepcion";
            this.btnConfirmarRecepcion.Size = new System.Drawing.Size(157, 23);
            this.btnConfirmarRecepcion.TabIndex = 50;
            this.btnConfirmarRecepcion.Tag = "confirm_reception";
            this.btnConfirmarRecepcion.Text = "Confirmar Recepcion";
            this.btnConfirmarRecepcion.UseSelectable = true;
            this.btnConfirmarRecepcion.Click += new System.EventHandler(this.BtnConfirmarRecepcion_Click);
            // 
            // EnvioGestion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(932, 515);
            this.Controls.Add(this.btnConfirmarRecepcion);
            this.Controls.Add(this.btnDespacharEnvio);
            this.Controls.Add(this.lblEstado);
            this.Controls.Add(this.cbEstado);
            this.Controls.Add(this.btnBuscar);
            this.Controls.Add(this.lblCliente);
            this.Controls.Add(this.txtCliente);
            this.Controls.Add(this.lblUsuario);
            this.Controls.Add(this.txtUsuario);
            this.Controls.Add(this.btnCerrar);
            this.Controls.Add(this.gridClientes);
            this.Name = "EnvioGestion";
            this.Text = "Gestion de Envios";
            ((System.ComponentModel.ISupportInitialize)(this.gridClientes)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private MetroGrid gridClientes;
        private MetroButton btnCerrar;
        private MetroButton btnBuscar;
        private MetroLabel lblCliente;
        private MetroTextBox txtCliente;
        private MetroLabel lblUsuario;
        private MetroTextBox txtUsuario;
        private MetroComboBox cbEstado;
        private MetroLabel lblEstado;
        private MetroButton btnDespacharEnvio;
        private MetroButton btnConfirmarRecepcion;
    }
}