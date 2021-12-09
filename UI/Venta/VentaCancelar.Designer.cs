
using System.ComponentModel;
using MetroFramework.Controls;

namespace UI
{
    partial class VentaCancelar
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            this.btnBuscar = new MetroFramework.Controls.MetroButton();
            this.lblCliente = new MetroFramework.Controls.MetroLabel();
            this.txtCliente = new MetroFramework.Controls.MetroTextBox();
            this.lblUsuario = new MetroFramework.Controls.MetroLabel();
            this.txtUsuario = new MetroFramework.Controls.MetroTextBox();
            this.btnCerrar = new MetroFramework.Controls.MetroButton();
            this.gridVentas = new MetroFramework.Controls.MetroGrid();
            this.btnCancelarVenta = new MetroFramework.Controls.MetroButton();
            ((System.ComponentModel.ISupportInitialize)(this.gridVentas)).BeginInit();
            this.SuspendLayout();
            // 
            // btnBuscar
            // 
            this.btnBuscar.Location = new System.Drawing.Point(600, 149);
            this.btnBuscar.Name = "btnBuscar";
            this.btnBuscar.Size = new System.Drawing.Size(188, 23);
            this.btnBuscar.TabIndex = 45;
            this.btnBuscar.Tag = "search";
            this.btnBuscar.Text = "Buscar";
            this.btnBuscar.UseSelectable = true;
            this.btnBuscar.Click += new System.EventHandler(this.btnBuscar_Click);
            // 
            // lblCliente
            // 
            this.lblCliente.AutoSize = true;
            this.lblCliente.Location = new System.Drawing.Point(545, 124);
            this.lblCliente.Name = "lblCliente";
            this.lblCliente.Size = new System.Drawing.Size(49, 19);
            this.lblCliente.TabIndex = 38;
            this.lblCliente.Tag = "client";
            this.lblCliente.Text = "Cliente";
            // 
            // txtCliente
            // 
            // 
            // 
            // 
            this.txtCliente.CustomButton.Image = null;
            this.txtCliente.CustomButton.Location = new System.Drawing.Point(166, 1);
            this.txtCliente.CustomButton.Name = "";
            this.txtCliente.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.txtCliente.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.txtCliente.CustomButton.TabIndex = 1;
            this.txtCliente.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.txtCliente.CustomButton.UseSelectable = true;
            this.txtCliente.CustomButton.Visible = false;
            this.txtCliente.Lines = new string[0];
            this.txtCliente.Location = new System.Drawing.Point(600, 120);
            this.txtCliente.MaxLength = 32767;
            this.txtCliente.Name = "txtCliente";
            this.txtCliente.PasswordChar = '\0';
            this.txtCliente.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.txtCliente.SelectedText = "";
            this.txtCliente.SelectionLength = 0;
            this.txtCliente.SelectionStart = 0;
            this.txtCliente.ShortcutsEnabled = true;
            this.txtCliente.Size = new System.Drawing.Size(188, 23);
            this.txtCliente.TabIndex = 37;
            this.txtCliente.UseSelectable = true;
            this.txtCliente.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.txtCliente.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            // 
            // lblUsuario
            // 
            this.lblUsuario.AutoSize = true;
            this.lblUsuario.Location = new System.Drawing.Point(541, 95);
            this.lblUsuario.Name = "lblUsuario";
            this.lblUsuario.Size = new System.Drawing.Size(53, 19);
            this.lblUsuario.TabIndex = 36;
            this.lblUsuario.Tag = "user";
            this.lblUsuario.Text = "Usuario";
            // 
            // txtUsuario
            // 
            // 
            // 
            // 
            this.txtUsuario.CustomButton.Image = null;
            this.txtUsuario.CustomButton.Location = new System.Drawing.Point(166, 1);
            this.txtUsuario.CustomButton.Name = "";
            this.txtUsuario.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.txtUsuario.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.txtUsuario.CustomButton.TabIndex = 1;
            this.txtUsuario.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.txtUsuario.CustomButton.UseSelectable = true;
            this.txtUsuario.CustomButton.Visible = false;
            this.txtUsuario.Lines = new string[0];
            this.txtUsuario.Location = new System.Drawing.Point(600, 91);
            this.txtUsuario.MaxLength = 32767;
            this.txtUsuario.Name = "txtUsuario";
            this.txtUsuario.PasswordChar = '\0';
            this.txtUsuario.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.txtUsuario.SelectedText = "";
            this.txtUsuario.SelectionLength = 0;
            this.txtUsuario.SelectionStart = 0;
            this.txtUsuario.ShortcutsEnabled = true;
            this.txtUsuario.Size = new System.Drawing.Size(188, 23);
            this.txtUsuario.TabIndex = 35;
            this.txtUsuario.UseSelectable = true;
            this.txtUsuario.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.txtUsuario.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            // 
            // btnCerrar
            // 
            this.btnCerrar.Location = new System.Drawing.Point(600, 413);
            this.btnCerrar.Name = "btnCerrar";
            this.btnCerrar.Size = new System.Drawing.Size(187, 23);
            this.btnCerrar.TabIndex = 12;
            this.btnCerrar.Tag = "close";
            this.btnCerrar.Text = "Cerrar";
            this.btnCerrar.UseSelectable = true;
            this.btnCerrar.Click += new System.EventHandler(this.btnCerrar_Click);
            // 
            // gridVentas
            // 
            this.gridVentas.AllowUserToAddRows = false;
            this.gridVentas.AllowUserToDeleteRows = false;
            this.gridVentas.AllowUserToResizeRows = false;
            this.gridVentas.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridVentas.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.gridVentas.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.gridVentas.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle4.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle4.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle4.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridVentas.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle4;
            this.gridVentas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle5.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle5.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle5.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(136)))), ((int)(((byte)(136)))), ((int)(((byte)(136)))));
            dataGridViewCellStyle5.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle5.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle5.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gridVentas.DefaultCellStyle = dataGridViewCellStyle5;
            this.gridVentas.EnableHeadersVisualStyles = false;
            this.gridVentas.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.gridVentas.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridVentas.Location = new System.Drawing.Point(24, 64);
            this.gridVentas.Name = "gridVentas";
            this.gridVentas.ReadOnly = true;
            this.gridVentas.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle6.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle6.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle6.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle6.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle6.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle6.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridVentas.RowHeadersDefaultCellStyle = dataGridViewCellStyle6;
            this.gridVentas.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.gridVentas.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gridVentas.Size = new System.Drawing.Size(511, 372);
            this.gridVentas.TabIndex = 0;
            this.gridVentas.CellMouseDoubleClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.gridClientes_CellMouseDoubleClick);
            // 
            // btnCancelarVenta
            // 
            this.btnCancelarVenta.Location = new System.Drawing.Point(600, 255);
            this.btnCancelarVenta.Name = "btnCancelarVenta";
            this.btnCancelarVenta.Size = new System.Drawing.Size(188, 23);
            this.btnCancelarVenta.TabIndex = 46;
            this.btnCancelarVenta.Tag = "";
            this.btnCancelarVenta.Text = "Cancelar Venta";
            this.btnCancelarVenta.UseSelectable = true;
            this.btnCancelarVenta.Click += new System.EventHandler(this.btnCancelarVenta_Click);
            // 
            // CancelarVenta
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(810, 459);
            this.Controls.Add(this.btnCancelarVenta);
            this.Controls.Add(this.btnBuscar);
            this.Controls.Add(this.lblCliente);
            this.Controls.Add(this.txtCliente);
            this.Controls.Add(this.lblUsuario);
            this.Controls.Add(this.txtUsuario);
            this.Controls.Add(this.btnCerrar);
            this.Controls.Add(this.gridVentas);
            this.Name = "VentaCancelar";
            this.Text = "Cancelar Venta";
            ((System.ComponentModel.ISupportInitialize)(this.gridVentas)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private MetroGrid gridVentas;
        private MetroButton btnCerrar;
        private MetroButton btnBuscar;
        private MetroLabel lblCliente;
        private MetroTextBox txtCliente;
        private MetroLabel lblUsuario;
        private MetroTextBox txtUsuario;
        private MetroButton btnCancelarVenta;
    }
}