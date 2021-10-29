
namespace UI
{
    partial class ProveedorHome
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
            this.btnCrearProveedor = new MetroFramework.Controls.MetroButton();
            this.btnModificarProveedor = new MetroFramework.Controls.MetroButton();
            this.btnBorrarProveedor = new MetroFramework.Controls.MetroButton();
            this.gridProveedor = new MetroFramework.Controls.MetroGrid();
            ((System.ComponentModel.ISupportInitialize)(this.gridProveedor)).BeginInit();
            this.SuspendLayout();
            // 
            // btnCrearProveedor
            // 
            this.btnCrearProveedor.Location = new System.Drawing.Point(611, 63);
            this.btnCrearProveedor.Name = "btnCrearProveedor";
            this.btnCrearProveedor.Size = new System.Drawing.Size(136, 41);
            this.btnCrearProveedor.TabIndex = 0;
            this.btnCrearProveedor.Text = "Crear Proveedor";
            this.btnCrearProveedor.UseSelectable = true;
            this.btnCrearProveedor.Click += new System.EventHandler(this.btnCrearProveedor_Click);
            // 
            // btnModificarProveedor
            // 
            this.btnModificarProveedor.Location = new System.Drawing.Point(611, 110);
            this.btnModificarProveedor.Name = "btnModificarProveedor";
            this.btnModificarProveedor.Size = new System.Drawing.Size(136, 41);
            this.btnModificarProveedor.TabIndex = 1;
            this.btnModificarProveedor.Text = "Modificar Proveedor";
            this.btnModificarProveedor.UseSelectable = true;
            this.btnModificarProveedor.Click += new System.EventHandler(this.btnModificarProveedor_Click);
            // 
            // btnBorrarProveedor
            // 
            this.btnBorrarProveedor.Location = new System.Drawing.Point(611, 157);
            this.btnBorrarProveedor.Name = "btnBorrarProveedor";
            this.btnBorrarProveedor.Size = new System.Drawing.Size(136, 41);
            this.btnBorrarProveedor.TabIndex = 2;
            this.btnBorrarProveedor.Text = "Borrar Proveedor";
            this.btnBorrarProveedor.UseSelectable = true;
            this.btnBorrarProveedor.Click += new System.EventHandler(this.btnBorrarProveedor_Click);
            // 
            // gridProveedor
            // 
            this.gridProveedor.AllowUserToAddRows = false;
            this.gridProveedor.AllowUserToDeleteRows = false;
            this.gridProveedor.AllowUserToResizeRows = false;
            this.gridProveedor.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridProveedor.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.gridProveedor.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.gridProveedor.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridProveedor.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.gridProveedor.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(136)))), ((int)(((byte)(136)))), ((int)(((byte)(136)))));
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gridProveedor.DefaultCellStyle = dataGridViewCellStyle2;
            this.gridProveedor.EnableHeadersVisualStyles = false;
            this.gridProveedor.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.gridProveedor.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridProveedor.Location = new System.Drawing.Point(23, 63);
            this.gridProveedor.MultiSelect = false;
            this.gridProveedor.Name = "gridProveedor";
            this.gridProveedor.ReadOnly = true;
            this.gridProveedor.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridProveedor.RowHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.gridProveedor.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.gridProveedor.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gridProveedor.Size = new System.Drawing.Size(563, 301);
            this.gridProveedor.TabIndex = 3;
            this.gridProveedor.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.gridProveedor_CellDoubleClick);
            // 
            // ProveedorHome
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(770, 387);
            this.Controls.Add(this.gridProveedor);
            this.Controls.Add(this.btnBorrarProveedor);
            this.Controls.Add(this.btnModificarProveedor);
            this.Controls.Add(this.btnCrearProveedor);
            this.Name = "ProveedorHome";
            this.Text = "ProveedorHome";
            this.Load += new System.EventHandler(this.ProveedorHome_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gridProveedor)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private MetroFramework.Controls.MetroButton btnCrearProveedor;
        private MetroFramework.Controls.MetroButton btnModificarProveedor;
        private MetroFramework.Controls.MetroButton btnBorrarProveedor;
        private MetroFramework.Controls.MetroGrid gridProveedor;
    }
}