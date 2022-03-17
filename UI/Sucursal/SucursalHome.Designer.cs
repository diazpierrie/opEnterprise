using System.ComponentModel;
using MetroFramework.Controls;

namespace UI.Sucursal
{
    partial class SucursalHome
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
            this.gridSucursal = new MetroFramework.Controls.MetroGrid();
            this.btnBorrarSucursal = new MetroFramework.Controls.MetroButton();
            this.btnModificarSucursal = new MetroFramework.Controls.MetroButton();
            this.btnCrearSucursal = new MetroFramework.Controls.MetroButton();
            ((System.ComponentModel.ISupportInitialize)(this.gridSucursal)).BeginInit();
            this.SuspendLayout();
            // 
            // gridSucursal
            // 
            this.gridSucursal.AllowUserToAddRows = false;
            this.gridSucursal.AllowUserToDeleteRows = false;
            this.gridSucursal.AllowUserToResizeRows = false;
            this.gridSucursal.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gridSucursal.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridSucursal.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.gridSucursal.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.gridSucursal.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridSucursal.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.gridSucursal.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(136)))), ((int)(((byte)(136)))), ((int)(((byte)(136)))));
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gridSucursal.DefaultCellStyle = dataGridViewCellStyle2;
            this.gridSucursal.EnableHeadersVisualStyles = false;
            this.gridSucursal.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.gridSucursal.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridSucursal.Location = new System.Drawing.Point(23, 75);
            this.gridSucursal.Name = "gridSucursal";
            this.gridSucursal.ReadOnly = true;
            this.gridSucursal.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridSucursal.RowHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.gridSucursal.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.gridSucursal.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gridSucursal.Size = new System.Drawing.Size(612, 352);
            this.gridSucursal.TabIndex = 7;
            this.gridSucursal.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.gridSucursal_CellDoubleClick);
            // 
            // btnBorrarSucursal
            // 
            this.btnBorrarSucursal.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnBorrarSucursal.Location = new System.Drawing.Point(641, 169);
            this.btnBorrarSucursal.Name = "btnBorrarSucursal";
            this.btnBorrarSucursal.Size = new System.Drawing.Size(136, 41);
            this.btnBorrarSucursal.TabIndex = 6;
            this.btnBorrarSucursal.Text = "Borrar Sucursal";
            this.btnBorrarSucursal.UseSelectable = true;
            this.btnBorrarSucursal.Click += new System.EventHandler(this.btnBorrarSucursal_Click);
            // 
            // btnModificarSucursal
            // 
            this.btnModificarSucursal.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnModificarSucursal.Location = new System.Drawing.Point(641, 122);
            this.btnModificarSucursal.Name = "btnModificarSucursal";
            this.btnModificarSucursal.Size = new System.Drawing.Size(136, 41);
            this.btnModificarSucursal.TabIndex = 5;
            this.btnModificarSucursal.Text = "Modificar Sucursal";
            this.btnModificarSucursal.UseSelectable = true;
            this.btnModificarSucursal.Click += new System.EventHandler(this.btnModificarSucursal_Click);
            // 
            // btnCrearSucursal
            // 
            this.btnCrearSucursal.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnCrearSucursal.Location = new System.Drawing.Point(641, 75);
            this.btnCrearSucursal.Name = "btnCrearSucursal";
            this.btnCrearSucursal.Size = new System.Drawing.Size(136, 41);
            this.btnCrearSucursal.TabIndex = 4;
            this.btnCrearSucursal.Text = "Crear Sucursal";
            this.btnCrearSucursal.UseSelectable = true;
            this.btnCrearSucursal.Click += new System.EventHandler(this.btnCrearSucursal_Click);
            // 
            // SucursalHome
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.gridSucursal);
            this.Controls.Add(this.btnBorrarSucursal);
            this.Controls.Add(this.btnModificarSucursal);
            this.Controls.Add(this.btnCrearSucursal);
            this.Name = "SucursalHome";
            this.Text = "SucursalHome";
            this.Load += new System.EventHandler(this.SucursalHome_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gridSucursal)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private MetroGrid gridSucursal;
        private MetroButton btnBorrarSucursal;
        private MetroButton btnModificarSucursal;
        private MetroButton btnCrearSucursal;
    }
}