
using System.ComponentModel;
using MetroFramework.Controls;

namespace UI
{
    partial class RetiroLocalAgregar
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            this.gridProductosAComprar = new MetroFramework.Controls.MetroGrid();
            this.btnAgregarProducto = new MetroFramework.Controls.MetroButton();
            this.gridProductosRetiro = new MetroFramework.Controls.MetroGrid();
            this.btnQuitarProductos = new MetroFramework.Controls.MetroButton();
            this.btnRemoverProducto = new MetroFramework.Controls.MetroButton();
            this.lblProductos = new MetroFramework.Controls.MetroLabel();
            this.lblProductosAAgregar = new MetroFramework.Controls.MetroLabel();
            this.txtBuscar = new MetroFramework.Controls.MetroTextBox();
            this.btnAgregarProductos = new MetroFramework.Controls.MetroButton();
            ((System.ComponentModel.ISupportInitialize)(this.gridProductosAComprar)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridProductosRetiro)).BeginInit();
            this.SuspendLayout();
            // 
            // gridProductosAComprar
            // 
            this.gridProductosAComprar.AllowUserToAddRows = false;
            this.gridProductosAComprar.AllowUserToDeleteRows = false;
            this.gridProductosAComprar.AllowUserToResizeRows = false;
            this.gridProductosAComprar.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.gridProductosAComprar.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridProductosAComprar.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.gridProductosAComprar.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.gridProductosAComprar.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridProductosAComprar.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.gridProductosAComprar.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(136)))), ((int)(((byte)(136)))), ((int)(((byte)(136)))));
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gridProductosAComprar.DefaultCellStyle = dataGridViewCellStyle2;
            this.gridProductosAComprar.EnableHeadersVisualStyles = false;
            this.gridProductosAComprar.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.gridProductosAComprar.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridProductosAComprar.Location = new System.Drawing.Point(23, 95);
            this.gridProductosAComprar.Name = "gridProductosAComprar";
            this.gridProductosAComprar.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridProductosAComprar.RowHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.gridProductosAComprar.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.gridProductosAComprar.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gridProductosAComprar.Size = new System.Drawing.Size(467, 343);
            this.gridProductosAComprar.TabIndex = 17;
            this.gridProductosAComprar.CellEndEdit += new System.Windows.Forms.DataGridViewCellEventHandler(this.gridProductos_CellEndEdit);
            this.gridProductosAComprar.DataBindingComplete += new System.Windows.Forms.DataGridViewBindingCompleteEventHandler(this.gridProductos_DataBindingComplete);
            // 
            // btnAgregarProducto
            // 
            this.btnAgregarProducto.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnAgregarProducto.FontSize = MetroFramework.MetroButtonSize.Tall;
            this.btnAgregarProducto.Location = new System.Drawing.Point(495, 191);
            this.btnAgregarProducto.Margin = new System.Windows.Forms.Padding(2);
            this.btnAgregarProducto.Name = "btnAgregarProducto";
            this.btnAgregarProducto.Size = new System.Drawing.Size(30, 56);
            this.btnAgregarProducto.TabIndex = 14;
            this.btnAgregarProducto.Tag = "";
            this.btnAgregarProducto.Text = ">";
            this.btnAgregarProducto.UseSelectable = true;
            this.btnAgregarProducto.Click += new System.EventHandler(this.btnAgregarProducto_Click);
            // 
            // gridProductosRetiro
            // 
            this.gridProductosRetiro.AllowUserToAddRows = false;
            this.gridProductosRetiro.AllowUserToDeleteRows = false;
            this.gridProductosRetiro.AllowUserToResizeRows = false;
            this.gridProductosRetiro.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.gridProductosRetiro.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridProductosRetiro.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.gridProductosRetiro.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.gridProductosRetiro.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle4.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle4.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle4.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridProductosRetiro.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle4;
            this.gridProductosRetiro.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle5.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle5.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle5.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(136)))), ((int)(((byte)(136)))), ((int)(((byte)(136)))));
            dataGridViewCellStyle5.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle5.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle5.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gridProductosRetiro.DefaultCellStyle = dataGridViewCellStyle5;
            this.gridProductosRetiro.EnableHeadersVisualStyles = false;
            this.gridProductosRetiro.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.gridProductosRetiro.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridProductosRetiro.Location = new System.Drawing.Point(530, 95);
            this.gridProductosRetiro.Name = "gridProductosRetiro";
            this.gridProductosRetiro.ReadOnly = true;
            this.gridProductosRetiro.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle6.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle6.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle6.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle6.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle6.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle6.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridProductosRetiro.RowHeadersDefaultCellStyle = dataGridViewCellStyle6;
            this.gridProductosRetiro.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.gridProductosRetiro.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gridProductosRetiro.Size = new System.Drawing.Size(467, 343);
            this.gridProductosRetiro.TabIndex = 20;
            // 
            // btnQuitarProductos
            // 
            this.btnQuitarProductos.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnQuitarProductos.Location = new System.Drawing.Point(859, 443);
            this.btnQuitarProductos.Margin = new System.Windows.Forms.Padding(2);
            this.btnQuitarProductos.Name = "btnQuitarProductos";
            this.btnQuitarProductos.Size = new System.Drawing.Size(138, 23);
            this.btnQuitarProductos.TabIndex = 19;
            this.btnQuitarProductos.Tag = "empty_local_pickup";
            this.btnQuitarProductos.Text = "Vaciar Retiro Local";
            this.btnQuitarProductos.UseSelectable = true;
            this.btnQuitarProductos.Click += new System.EventHandler(this.btnCerrar_Click);
            // 
            // btnRemoverProducto
            // 
            this.btnRemoverProducto.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnRemoverProducto.FontSize = MetroFramework.MetroButtonSize.Tall;
            this.btnRemoverProducto.Location = new System.Drawing.Point(495, 264);
            this.btnRemoverProducto.Margin = new System.Windows.Forms.Padding(2);
            this.btnRemoverProducto.Name = "btnRemoverProducto";
            this.btnRemoverProducto.Size = new System.Drawing.Size(30, 56);
            this.btnRemoverProducto.TabIndex = 18;
            this.btnRemoverProducto.Tag = "";
            this.btnRemoverProducto.Text = "<";
            this.btnRemoverProducto.UseSelectable = true;
            this.btnRemoverProducto.Click += new System.EventHandler(this.btnbtnRemoverProducto_Click);
            // 
            // lblProductos
            // 
            this.lblProductos.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lblProductos.AutoSize = true;
            this.lblProductos.Location = new System.Drawing.Point(24, 73);
            this.lblProductos.Name = "lblProductos";
            this.lblProductos.Size = new System.Drawing.Size(68, 19);
            this.lblProductos.TabIndex = 21;
            this.lblProductos.Tag = "products";
            this.lblProductos.Text = "Productos";
            // 
            // lblProductosAAgregar
            // 
            this.lblProductosAAgregar.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lblProductosAAgregar.AutoSize = true;
            this.lblProductosAAgregar.Location = new System.Drawing.Point(530, 73);
            this.lblProductosAAgregar.Name = "lblProductosAAgregar";
            this.lblProductosAAgregar.Size = new System.Drawing.Size(130, 19);
            this.lblProductosAAgregar.TabIndex = 22;
            this.lblProductosAAgregar.Tag = "products_to_add";
            this.lblProductosAAgregar.Text = "Productos a agregar";
            // 
            // txtBuscar
            // 
            this.txtBuscar.Anchor = System.Windows.Forms.AnchorStyles.None;
            // 
            // 
            // 
            this.txtBuscar.CustomButton.Image = null;
            this.txtBuscar.CustomButton.Location = new System.Drawing.Point(176, 1);
            this.txtBuscar.CustomButton.Name = "";
            this.txtBuscar.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.txtBuscar.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.txtBuscar.CustomButton.TabIndex = 1;
            this.txtBuscar.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.txtBuscar.CustomButton.UseSelectable = true;
            this.txtBuscar.CustomButton.Visible = false;
            this.txtBuscar.Lines = new string[] {
        "Busqueda"};
            this.txtBuscar.Location = new System.Drawing.Point(161, 69);
            this.txtBuscar.MaxLength = 32767;
            this.txtBuscar.Name = "txtBuscar";
            this.txtBuscar.PasswordChar = '\0';
            this.txtBuscar.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.txtBuscar.SelectedText = "";
            this.txtBuscar.SelectionLength = 0;
            this.txtBuscar.SelectionStart = 0;
            this.txtBuscar.ShortcutsEnabled = true;
            this.txtBuscar.Size = new System.Drawing.Size(198, 23);
            this.txtBuscar.TabIndex = 23;
            this.txtBuscar.Text = "Busqueda";
            this.txtBuscar.UseSelectable = true;
            this.txtBuscar.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.txtBuscar.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            this.txtBuscar.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtBuscar_KeyDown);
            // 
            // btnAgregarProductos
            // 
            this.btnAgregarProductos.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnAgregarProductos.Location = new System.Drawing.Point(715, 443);
            this.btnAgregarProductos.Margin = new System.Windows.Forms.Padding(2);
            this.btnAgregarProductos.Name = "btnAgregarProductos";
            this.btnAgregarProductos.Size = new System.Drawing.Size(140, 23);
            this.btnAgregarProductos.TabIndex = 24;
            this.btnAgregarProductos.Tag = "add_local_pickup";
            this.btnAgregarProductos.Text = "Agregar Retiro Local";
            this.btnAgregarProductos.UseSelectable = true;
            this.btnAgregarProductos.Click += new System.EventHandler(this.btnAsignarProductos_Click);
            // 
            // RetiroLocalAgregar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1020, 508);
            this.Controls.Add(this.btnAgregarProductos);
            this.Controls.Add(this.txtBuscar);
            this.Controls.Add(this.lblProductosAAgregar);
            this.Controls.Add(this.lblProductos);
            this.Controls.Add(this.gridProductosRetiro);
            this.Controls.Add(this.btnQuitarProductos);
            this.Controls.Add(this.btnRemoverProducto);
            this.Controls.Add(this.gridProductosAComprar);
            this.Controls.Add(this.btnAgregarProducto);
            this.Name = "RetiroLocalAgregar";
            this.Resizable = false;
            this.Text = "Retiro Local";
            this.Load += new System.EventHandler(this.ProductoAgregar_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gridProductosAComprar)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridProductosRetiro)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private MetroButton btnAgregarProducto;
        private MetroGrid gridProductosAComprar;
        private MetroGrid gridProductosRetiro;
        private MetroButton btnQuitarProductos;
        private MetroButton btnRemoverProducto;
        private MetroLabel lblProductos;
        private MetroLabel lblProductosAAgregar;
        private MetroTextBox txtBuscar;
        private MetroButton btnAgregarProductos;
    }
}