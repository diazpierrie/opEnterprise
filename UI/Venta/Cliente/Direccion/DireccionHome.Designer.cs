
using System.ComponentModel;
using MetroFramework.Controls;

namespace UI
{
    abstract partial class DireccionHome
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
            this.btnCrearDireccion = new MetroFramework.Controls.MetroButton();
            this.btnModificarDireccion = new MetroFramework.Controls.MetroButton();
            this.btnBorrarDireccion = new MetroFramework.Controls.MetroButton();
            this.gridDireccion = new MetroFramework.Controls.MetroGrid();
            this.btnCerrar = new MetroFramework.Controls.MetroButton();
            ((System.ComponentModel.ISupportInitialize)(this.gridDireccion)).BeginInit();
            this.SuspendLayout();
            // 
            // btnCrearDireccion
            // 
            this.btnCrearDireccion.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnCrearDireccion.Location = new System.Drawing.Point(611, 63);
            this.btnCrearDireccion.Name = "btnCrearDireccion";
            this.btnCrearDireccion.Size = new System.Drawing.Size(136, 41);
            this.btnCrearDireccion.TabIndex = 0;
            this.btnCrearDireccion.Text = "Crear Direccion";
            this.btnCrearDireccion.UseSelectable = true;
            this.btnCrearDireccion.Click += new System.EventHandler(this.BtnCrearDireccion_Click);
            // 
            // btnModificarDireccion
            // 
            this.btnModificarDireccion.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnModificarDireccion.Location = new System.Drawing.Point(611, 110);
            this.btnModificarDireccion.Name = "btnModificarDireccion";
            this.btnModificarDireccion.Size = new System.Drawing.Size(136, 41);
            this.btnModificarDireccion.TabIndex = 1;
            this.btnModificarDireccion.Text = "Modificar Direccion";
            this.btnModificarDireccion.UseSelectable = true;
            this.btnModificarDireccion.Click += new System.EventHandler(this.BtnModificarDireccion_Click);
            // 
            // btnBorrarDireccion
            // 
            this.btnBorrarDireccion.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnBorrarDireccion.Location = new System.Drawing.Point(611, 157);
            this.btnBorrarDireccion.Name = "btnBorrarDireccion";
            this.btnBorrarDireccion.Size = new System.Drawing.Size(136, 41);
            this.btnBorrarDireccion.TabIndex = 2;
            this.btnBorrarDireccion.Text = "Borrar Direccion";
            this.btnBorrarDireccion.UseSelectable = true;
            this.btnBorrarDireccion.Click += new System.EventHandler(this.BtnBorrarDireccion_Click);
            // 
            // gridDireccion
            // 
            this.gridDireccion.AllowUserToAddRows = false;
            this.gridDireccion.AllowUserToDeleteRows = false;
            this.gridDireccion.AllowUserToResizeRows = false;
            this.gridDireccion.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.gridDireccion.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridDireccion.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.gridDireccion.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.gridDireccion.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridDireccion.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.gridDireccion.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(136)))), ((int)(((byte)(136)))), ((int)(((byte)(136)))));
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gridDireccion.DefaultCellStyle = dataGridViewCellStyle2;
            this.gridDireccion.EnableHeadersVisualStyles = false;
            this.gridDireccion.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.gridDireccion.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridDireccion.Location = new System.Drawing.Point(23, 63);
            this.gridDireccion.MultiSelect = false;
            this.gridDireccion.Name = "gridDireccion";
            this.gridDireccion.ReadOnly = true;
            this.gridDireccion.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridDireccion.RowHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.gridDireccion.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.gridDireccion.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gridDireccion.Size = new System.Drawing.Size(563, 301);
            this.gridDireccion.TabIndex = 3;
            this.gridDireccion.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.GridDireccion_CellDoubleClick);
            // 
            // btnCerrar
            // 
            this.btnCerrar.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnCerrar.Location = new System.Drawing.Point(611, 323);
            this.btnCerrar.Name = "btnCerrar";
            this.btnCerrar.Size = new System.Drawing.Size(136, 41);
            this.btnCerrar.TabIndex = 4;
            this.btnCerrar.Text = "Cerrar";
            this.btnCerrar.UseSelectable = true;
            this.btnCerrar.Click += new System.EventHandler(this.BtnCerrar_Click);
            // 
            // DireccionHome
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(770, 387);
            this.Controls.Add(this.btnCerrar);
            this.Controls.Add(this.gridDireccion);
            this.Controls.Add(this.btnBorrarDireccion);
            this.Controls.Add(this.btnModificarDireccion);
            this.Controls.Add(this.btnCrearDireccion);
            this.Name = "DireccionHome";
            this.Text = "Direccion Home";
            this.Load += new System.EventHandler(this.DireccionHome_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gridDireccion)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private MetroButton btnCrearDireccion;
        private MetroButton btnModificarDireccion;
        private MetroButton btnBorrarDireccion;
        private MetroGrid gridDireccion;
        private MetroButton btnCerrar;
    }
}