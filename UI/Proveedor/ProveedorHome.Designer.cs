
using System.ComponentModel;
using MetroFramework.Controls;

namespace UI
{
    partial class ProveedorHome
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
            this.gridProveedor = new MetroFramework.Controls.MetroGrid();
            this.btnCrearProveedor = new MetroFramework.Controls.MetroButton();
            this.btnModificarProveedor = new MetroFramework.Controls.MetroButton();
            this.btnBorrarProveedor = new MetroFramework.Controls.MetroButton();
            this.btnRestaurarProveedor = new MetroFramework.Controls.MetroButton();
            this.btnPenalizarProveedor = new MetroFramework.Controls.MetroButton();
            this.flpProveedorHome = new System.Windows.Forms.FlowLayoutPanel();
            this.btnVerPenalizaciones = new MetroFramework.Controls.MetroButton();
            ((System.ComponentModel.ISupportInitialize)(this.gridProveedor)).BeginInit();
            this.flpProveedorHome.SuspendLayout();
            this.SuspendLayout();
            // 
            // gridProveedor
            // 
            this.gridProveedor.AllowUserToAddRows = false;
            this.gridProveedor.AllowUserToDeleteRows = false;
            this.gridProveedor.AllowUserToResizeRows = false;
            this.gridProveedor.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gridProveedor.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridProveedor.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
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
            this.gridProveedor.Size = new System.Drawing.Size(730, 436);
            this.gridProveedor.TabIndex = 3;
            this.gridProveedor.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.GridProveedor_CellDoubleClick);
            // 
            // btnCrearProveedor
            // 
            this.btnCrearProveedor.Location = new System.Drawing.Point(3, 3);
            this.btnCrearProveedor.Name = "btnCrearProveedor";
            this.btnCrearProveedor.Size = new System.Drawing.Size(136, 41);
            this.btnCrearProveedor.TabIndex = 0;
            this.btnCrearProveedor.Tag = "create_vendor";
            this.btnCrearProveedor.Text = "Crear Proveedor";
            this.btnCrearProveedor.UseSelectable = true;
            this.btnCrearProveedor.Click += new System.EventHandler(this.BtnCrearProveedor_Click);
            // 
            // btnModificarProveedor
            // 
            this.btnModificarProveedor.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnModificarProveedor.Location = new System.Drawing.Point(3, 50);
            this.btnModificarProveedor.Name = "btnModificarProveedor";
            this.btnModificarProveedor.Size = new System.Drawing.Size(136, 41);
            this.btnModificarProveedor.TabIndex = 1;
            this.btnModificarProveedor.Tag = "modify_vendor";
            this.btnModificarProveedor.Text = "Modificar Proveedor";
            this.btnModificarProveedor.UseSelectable = true;
            this.btnModificarProveedor.Click += new System.EventHandler(this.BtnModificarProveedor_Click);
            // 
            // btnBorrarProveedor
            // 
            this.btnBorrarProveedor.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnBorrarProveedor.Location = new System.Drawing.Point(3, 97);
            this.btnBorrarProveedor.Name = "btnBorrarProveedor";
            this.btnBorrarProveedor.Size = new System.Drawing.Size(136, 41);
            this.btnBorrarProveedor.TabIndex = 2;
            this.btnBorrarProveedor.Tag = "delete_vendor";
            this.btnBorrarProveedor.Text = "Borrar Proveedor";
            this.btnBorrarProveedor.UseSelectable = true;
            this.btnBorrarProveedor.Click += new System.EventHandler(this.BtnBorrarProveedor_Click);
            // 
            // btnRestaurarProveedor
            // 
            this.btnRestaurarProveedor.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnRestaurarProveedor.Location = new System.Drawing.Point(3, 144);
            this.btnRestaurarProveedor.Name = "btnRestaurarProveedor";
            this.btnRestaurarProveedor.Size = new System.Drawing.Size(136, 41);
            this.btnRestaurarProveedor.TabIndex = 4;
            this.btnRestaurarProveedor.Tag = "restore_vendor";
            this.btnRestaurarProveedor.Text = "Restaurar Proveedor";
            this.btnRestaurarProveedor.UseSelectable = true;
            this.btnRestaurarProveedor.Click += new System.EventHandler(this.BtnRestaurarProveedor_Click);
            // 
            // btnPenalizarProveedor
            // 
            this.btnPenalizarProveedor.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnPenalizarProveedor.Location = new System.Drawing.Point(3, 238);
            this.btnPenalizarProveedor.Name = "btnPenalizarProveedor";
            this.btnPenalizarProveedor.Size = new System.Drawing.Size(136, 41);
            this.btnPenalizarProveedor.TabIndex = 5;
            this.btnPenalizarProveedor.Tag = "penalize_vendor";
            this.btnPenalizarProveedor.Text = "Penalizar Proveedor";
            this.btnPenalizarProveedor.UseSelectable = true;
            this.btnPenalizarProveedor.Click += new System.EventHandler(this.BtnPenalizarProveedor_Click);
            // 
            // flpProveedorHome
            // 
            this.flpProveedorHome.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.flpProveedorHome.Controls.Add(this.btnCrearProveedor);
            this.flpProveedorHome.Controls.Add(this.btnModificarProveedor);
            this.flpProveedorHome.Controls.Add(this.btnBorrarProveedor);
            this.flpProveedorHome.Controls.Add(this.btnRestaurarProveedor);
            this.flpProveedorHome.Controls.Add(this.btnVerPenalizaciones);
            this.flpProveedorHome.Controls.Add(this.btnPenalizarProveedor);
            this.flpProveedorHome.FlowDirection = System.Windows.Forms.FlowDirection.TopDown;
            this.flpProveedorHome.Location = new System.Drawing.Point(759, 63);
            this.flpProveedorHome.Name = "flpProveedorHome";
            this.flpProveedorHome.Size = new System.Drawing.Size(145, 291);
            this.flpProveedorHome.TabIndex = 6;
            // 
            // btnVerPenalizaciones
            // 
            this.btnVerPenalizaciones.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnVerPenalizaciones.Location = new System.Drawing.Point(3, 191);
            this.btnVerPenalizaciones.Name = "btnVerPenalizaciones";
            this.btnVerPenalizaciones.Size = new System.Drawing.Size(136, 41);
            this.btnVerPenalizaciones.TabIndex = 6;
            this.btnVerPenalizaciones.Tag = "check_penalizations";
            this.btnVerPenalizaciones.Text = "Ver Penalizaciones";
            this.btnVerPenalizaciones.UseSelectable = true;
            this.btnVerPenalizaciones.Click += new System.EventHandler(this.BtnVerPenalizaciones_Click);
            // 
            // ProveedorHome
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(927, 522);
            this.Controls.Add(this.flpProveedorHome);
            this.Controls.Add(this.gridProveedor);
            this.Name = "ProveedorHome";
            this.Tag = "manage_vendors";
            this.Text = "ProveedorHome";
            this.Load += new System.EventHandler(this.ProveedorHome_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gridProveedor)).EndInit();
            this.flpProveedorHome.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion
        private MetroGrid gridProveedor;
        private MetroButton btnCrearProveedor;
        private MetroButton btnModificarProveedor;
        private MetroButton btnBorrarProveedor;
        private MetroButton btnRestaurarProveedor;
        private MetroButton btnPenalizarProveedor;
        private System.Windows.Forms.FlowLayoutPanel flpProveedorHome;
        private MetroButton btnVerPenalizaciones;
    }
}