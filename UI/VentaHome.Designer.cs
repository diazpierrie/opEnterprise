
namespace UI
{
    partial class VentaHome
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
            this.btnAsignar = new MetroFramework.Controls.MetroButton();
            this.gridVenta = new MetroFramework.Controls.MetroGrid();
            this.btnBorrarVenta = new MetroFramework.Controls.MetroButton();
            this.btnModificarVenta = new MetroFramework.Controls.MetroButton();
            this.btnAgregarProducto = new MetroFramework.Controls.MetroButton();
            ((System.ComponentModel.ISupportInitialize)(this.gridVenta)).BeginInit();
            this.SuspendLayout();
            // 
            // btnAsignar
            // 
            this.btnAsignar.Location = new System.Drawing.Point(626, 216);
            this.btnAsignar.Name = "btnAsignar";
            this.btnAsignar.Size = new System.Drawing.Size(136, 41);
            this.btnAsignar.TabIndex = 8;
            this.btnAsignar.Text = "Asignar";
            this.btnAsignar.UseSelectable = true;
            this.btnAsignar.Click += new System.EventHandler(this.btnAsignar_Click);
            // 
            // gridVenta
            // 
            this.gridVenta.AllowUserToAddRows = false;
            this.gridVenta.AllowUserToDeleteRows = false;
            this.gridVenta.AllowUserToResizeRows = false;
            this.gridVenta.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridVenta.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.gridVenta.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.gridVenta.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridVenta.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.gridVenta.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(136)))), ((int)(((byte)(136)))), ((int)(((byte)(136)))));
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gridVenta.DefaultCellStyle = dataGridViewCellStyle2;
            this.gridVenta.EnableHeadersVisualStyles = false;
            this.gridVenta.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.gridVenta.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridVenta.Location = new System.Drawing.Point(38, 75);
            this.gridVenta.MultiSelect = false;
            this.gridVenta.Name = "gridVenta";
            this.gridVenta.ReadOnly = true;
            this.gridVenta.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridVenta.RowHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.gridVenta.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.gridVenta.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gridVenta.Size = new System.Drawing.Size(563, 301);
            this.gridVenta.TabIndex = 7;
            this.gridVenta.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.gridVenta_CellDoubleClick);
            // 
            // btnBorrarVenta
            // 
            this.btnBorrarVenta.Location = new System.Drawing.Point(626, 169);
            this.btnBorrarVenta.Name = "btnBorrarVenta";
            this.btnBorrarVenta.Size = new System.Drawing.Size(136, 41);
            this.btnBorrarVenta.TabIndex = 6;
            this.btnBorrarVenta.Text = "Borrar Venta";
            this.btnBorrarVenta.UseSelectable = true;
            this.btnBorrarVenta.Click += new System.EventHandler(this.btnBorrarVenta_Click);
            // 
            // btnModificarVenta
            // 
            this.btnModificarVenta.Location = new System.Drawing.Point(626, 122);
            this.btnModificarVenta.Name = "btnModificarVenta";
            this.btnModificarVenta.Size = new System.Drawing.Size(136, 41);
            this.btnModificarVenta.TabIndex = 5;
            this.btnModificarVenta.Text = "Modificar Venta";
            this.btnModificarVenta.UseSelectable = true;
            this.btnModificarVenta.Click += new System.EventHandler(this.btnModificarVenta_Click);
            // 
            // btnAgregarProducto
            // 
            this.btnAgregarProducto.Location = new System.Drawing.Point(626, 75);
            this.btnAgregarProducto.Name = "btnAgregarProducto";
            this.btnAgregarProducto.Size = new System.Drawing.Size(136, 41);
            this.btnAgregarProducto.TabIndex = 4;
            this.btnAgregarProducto.Text = "Agregar Producto";
            this.btnAgregarProducto.UseSelectable = true;
            this.btnAgregarProducto.Click += new System.EventHandler(this.btnCrearVenta_Click);
            // 
            // VentaHome
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.btnAsignar);
            this.Controls.Add(this.gridVenta);
            this.Controls.Add(this.btnBorrarVenta);
            this.Controls.Add(this.btnModificarVenta);
            this.Controls.Add(this.btnAgregarProducto);
            this.Name = "VentaHome";
            this.Text = "VentaHome";
            this.Load += new System.EventHandler(this.VentaHome_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gridVenta)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private MetroFramework.Controls.MetroGrid gridVenta;
        private MetroFramework.Controls.MetroButton btnBorrarVenta;
        private MetroFramework.Controls.MetroButton btnModificarVenta;
        private MetroFramework.Controls.MetroButton btnAgregarProducto;
        private MetroFramework.Controls.MetroButton btnAsignar;
    }
}