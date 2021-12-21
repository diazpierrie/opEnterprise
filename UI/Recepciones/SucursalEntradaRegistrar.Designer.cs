
using System.ComponentModel;
using MetroFramework.Controls;

namespace UI
{
    partial class SucursalEntradaRegistrar
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
            this.btnConfirmarRecepcion = new MetroFramework.Controls.MetroButton();
            this.btnBuscar = new MetroFramework.Controls.MetroButton();
            this.lblEmpleado = new MetroFramework.Controls.MetroLabel();
            this.txtEmpleado = new MetroFramework.Controls.MetroTextBox();
            this.btnCerrar = new MetroFramework.Controls.MetroButton();
            this.gridPedidos = new MetroFramework.Controls.MetroGrid();
            ((System.ComponentModel.ISupportInitialize)(this.gridPedidos)).BeginInit();
            this.SuspendLayout();
            // 
            // btnConfirmarRecepcion
            // 
            this.btnConfirmarRecepcion.Location = new System.Drawing.Point(752, 257);
            this.btnConfirmarRecepcion.Name = "btnConfirmarRecepcion";
            this.btnConfirmarRecepcion.Size = new System.Drawing.Size(157, 23);
            this.btnConfirmarRecepcion.TabIndex = 50;
            this.btnConfirmarRecepcion.Tag = "confirm_reception";
            this.btnConfirmarRecepcion.Text = "Confirmar Recepcion";
            this.btnConfirmarRecepcion.UseSelectable = true;
            this.btnConfirmarRecepcion.Click += new System.EventHandler(this.btnConfirmarRecepcion_Click);
            // 
            // btnBuscar
            // 
            this.btnBuscar.Location = new System.Drawing.Point(752, 92);
            this.btnBuscar.Name = "btnBuscar";
            this.btnBuscar.Size = new System.Drawing.Size(157, 23);
            this.btnBuscar.TabIndex = 45;
            this.btnBuscar.Tag = "search";
            this.btnBuscar.Text = "Buscar";
            this.btnBuscar.UseSelectable = true;
            this.btnBuscar.Click += new System.EventHandler(this.btnBuscar_Click);
            // 
            // lblEmpleado
            // 
            this.lblEmpleado.AutoSize = true;
            this.lblEmpleado.Location = new System.Drawing.Point(677, 67);
            this.lblEmpleado.Name = "lblEmpleado";
            this.lblEmpleado.Size = new System.Drawing.Size(69, 19);
            this.lblEmpleado.TabIndex = 36;
            this.lblEmpleado.Tag = "employee";
            this.lblEmpleado.Text = "Empleado";
            // 
            // txtEmpleado
            // 
            // 
            // 
            // 
            this.txtEmpleado.CustomButton.Image = null;
            this.txtEmpleado.CustomButton.Location = new System.Drawing.Point(136, 1);
            this.txtEmpleado.CustomButton.Name = "";
            this.txtEmpleado.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.txtEmpleado.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.txtEmpleado.CustomButton.TabIndex = 1;
            this.txtEmpleado.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.txtEmpleado.CustomButton.UseSelectable = true;
            this.txtEmpleado.CustomButton.Visible = false;
            this.txtEmpleado.Lines = new string[0];
            this.txtEmpleado.Location = new System.Drawing.Point(751, 63);
            this.txtEmpleado.MaxLength = 32767;
            this.txtEmpleado.Name = "txtEmpleado";
            this.txtEmpleado.PasswordChar = '\0';
            this.txtEmpleado.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.txtEmpleado.SelectedText = "";
            this.txtEmpleado.SelectionLength = 0;
            this.txtEmpleado.SelectionStart = 0;
            this.txtEmpleado.ShortcutsEnabled = true;
            this.txtEmpleado.Size = new System.Drawing.Size(158, 23);
            this.txtEmpleado.TabIndex = 35;
            this.txtEmpleado.UseSelectable = true;
            this.txtEmpleado.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.txtEmpleado.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            // 
            // btnCerrar
            // 
            this.btnCerrar.Location = new System.Drawing.Point(750, 469);
            this.btnCerrar.Name = "btnCerrar";
            this.btnCerrar.Size = new System.Drawing.Size(157, 23);
            this.btnCerrar.TabIndex = 12;
            this.btnCerrar.Tag = "close";
            this.btnCerrar.Text = "Cerrar";
            this.btnCerrar.UseSelectable = true;
            this.btnCerrar.Click += new System.EventHandler(this.btnCerrar_Click);
            // 
            // gridPedidos
            // 
            this.gridPedidos.AllowUserToAddRows = false;
            this.gridPedidos.AllowUserToDeleteRows = false;
            this.gridPedidos.AllowUserToResizeRows = false;
            this.gridPedidos.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridPedidos.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.gridPedidos.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.gridPedidos.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle4.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle4.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle4.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridPedidos.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle4;
            this.gridPedidos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle5.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle5.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle5.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(136)))), ((int)(((byte)(136)))), ((int)(((byte)(136)))));
            dataGridViewCellStyle5.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle5.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle5.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gridPedidos.DefaultCellStyle = dataGridViewCellStyle5;
            this.gridPedidos.EnableHeadersVisualStyles = false;
            this.gridPedidos.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.gridPedidos.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridPedidos.Location = new System.Drawing.Point(24, 63);
            this.gridPedidos.Name = "gridPedidos";
            this.gridPedidos.ReadOnly = true;
            this.gridPedidos.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle6.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle6.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle6.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle6.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle6.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle6.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridPedidos.RowHeadersDefaultCellStyle = dataGridViewCellStyle6;
            this.gridPedidos.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.gridPedidos.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gridPedidos.Size = new System.Drawing.Size(647, 429);
            this.gridPedidos.TabIndex = 0;
            this.gridPedidos.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.gridClientes_CellDoubleClick);
            // 
            // SucursalEntradaRegistrar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(932, 515);
            this.Controls.Add(this.btnConfirmarRecepcion);
            this.Controls.Add(this.btnBuscar);
            this.Controls.Add(this.lblEmpleado);
            this.Controls.Add(this.txtEmpleado);
            this.Controls.Add(this.btnCerrar);
            this.Controls.Add(this.gridPedidos);
            this.Name = "SucursalEntradaRegistrar";
            this.Text = "Recepcion de Pedidos";
            ((System.ComponentModel.ISupportInitialize)(this.gridPedidos)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private MetroGrid gridPedidos;
        private MetroButton btnCerrar;
        private MetroButton btnBuscar;
        private MetroLabel lblEmpleado;
        private MetroTextBox txtEmpleado;
        private MetroButton btnConfirmarRecepcion;
    }
}