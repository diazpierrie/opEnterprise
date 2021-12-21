
using System.ComponentModel;
using MetroFramework.Controls;

namespace UI
{
    partial class SucursalProductoAgregar
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
            this.gridProductos = new MetroFramework.Controls.MetroGrid();
            this.btnAgregarProducto = new MetroFramework.Controls.MetroButton();
            this.gridProductosAAgregar = new MetroFramework.Controls.MetroGrid();
            this.btnQuitarProductos = new MetroFramework.Controls.MetroButton();
            this.btnRemoverProducto = new MetroFramework.Controls.MetroButton();
            this.lblProductos = new MetroFramework.Controls.MetroLabel();
            this.lblProductosAAgregar = new MetroFramework.Controls.MetroLabel();
            this.txtBuscar = new MetroFramework.Controls.MetroTextBox();
            this.btnAgregarProductos = new MetroFramework.Controls.MetroButton();
            this.lblDeposito = new System.Windows.Forms.Label();
            this.cbDepositos = new MetroFramework.Controls.MetroComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.gridProductos)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridProductosAAgregar)).BeginInit();
            this.SuspendLayout();
            // 
            // gridProductos
            // 
            this.gridProductos.AllowUserToAddRows = false;
            this.gridProductos.AllowUserToDeleteRows = false;
            this.gridProductos.AllowUserToResizeRows = false;
            this.gridProductos.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gridProductos.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridProductos.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.gridProductos.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.gridProductos.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridProductos.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.gridProductos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(136)))), ((int)(((byte)(136)))), ((int)(((byte)(136)))));
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gridProductos.DefaultCellStyle = dataGridViewCellStyle2;
            this.gridProductos.EnableHeadersVisualStyles = false;
            this.gridProductos.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.gridProductos.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridProductos.Location = new System.Drawing.Point(23, 95);
            this.gridProductos.Name = "gridProductos";
            this.gridProductos.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridProductos.RowHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.gridProductos.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.gridProductos.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gridProductos.Size = new System.Drawing.Size(467, 343);
            this.gridProductos.TabIndex = 17;
            this.gridProductos.CellEndEdit += new System.Windows.Forms.DataGridViewCellEventHandler(this.gridProductos_CellEndEdit);
            this.gridProductos.DataBindingComplete += new System.Windows.Forms.DataGridViewBindingCompleteEventHandler(this.gridProductos_DataBindingComplete);
            this.gridProductos.DataError += new System.Windows.Forms.DataGridViewDataErrorEventHandler(this.gridProductos_DataError);
            // 
            // btnAgregarProducto
            // 
            this.btnAgregarProducto.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
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
            // gridProductosAAgregar
            // 
            this.gridProductosAAgregar.AllowUserToAddRows = false;
            this.gridProductosAAgregar.AllowUserToDeleteRows = false;
            this.gridProductosAAgregar.AllowUserToResizeRows = false;
            this.gridProductosAAgregar.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.gridProductosAAgregar.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridProductosAAgregar.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.gridProductosAAgregar.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.gridProductosAAgregar.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle4.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle4.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle4.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridProductosAAgregar.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle4;
            this.gridProductosAAgregar.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle5.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle5.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle5.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(136)))), ((int)(((byte)(136)))), ((int)(((byte)(136)))));
            dataGridViewCellStyle5.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle5.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle5.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gridProductosAAgregar.DefaultCellStyle = dataGridViewCellStyle5;
            this.gridProductosAAgregar.EnableHeadersVisualStyles = false;
            this.gridProductosAAgregar.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.gridProductosAAgregar.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridProductosAAgregar.Location = new System.Drawing.Point(530, 95);
            this.gridProductosAAgregar.Name = "gridProductosAAgregar";
            this.gridProductosAAgregar.ReadOnly = true;
            this.gridProductosAAgregar.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle6.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle6.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle6.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle6.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle6.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle6.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridProductosAAgregar.RowHeadersDefaultCellStyle = dataGridViewCellStyle6;
            this.gridProductosAAgregar.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.gridProductosAAgregar.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gridProductosAAgregar.Size = new System.Drawing.Size(467, 343);
            this.gridProductosAAgregar.TabIndex = 20;
            // 
            // btnQuitarProductos
            // 
            this.btnQuitarProductos.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.btnQuitarProductos.Location = new System.Drawing.Point(859, 443);
            this.btnQuitarProductos.Margin = new System.Windows.Forms.Padding(2);
            this.btnQuitarProductos.Name = "btnQuitarProductos";
            this.btnQuitarProductos.Size = new System.Drawing.Size(117, 23);
            this.btnQuitarProductos.TabIndex = 19;
            this.btnQuitarProductos.Tag = "empty_cart";
            this.btnQuitarProductos.Text = "Vaciar Carrito";
            this.btnQuitarProductos.UseSelectable = true;
            this.btnQuitarProductos.Click += new System.EventHandler(this.btnCerrar_Click);
            // 
            // btnRemoverProducto
            // 
            this.btnRemoverProducto.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
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
            this.lblProductos.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
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
            this.lblProductosAAgregar.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
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
            this.txtBuscar.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
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
            this.btnAgregarProductos.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.btnAgregarProductos.Location = new System.Drawing.Point(732, 443);
            this.btnAgregarProductos.Margin = new System.Windows.Forms.Padding(2);
            this.btnAgregarProductos.Name = "btnAgregarProductos";
            this.btnAgregarProductos.Size = new System.Drawing.Size(123, 23);
            this.btnAgregarProductos.TabIndex = 24;
            this.btnAgregarProductos.Tag = "add_to_cart";
            this.btnAgregarProductos.Text = "Agregar al Carrito";
            this.btnAgregarProductos.UseSelectable = true;
            this.btnAgregarProductos.Click += new System.EventHandler(this.btnAsignarProductos_Click);
            // 
            // lblDeposito
            // 
            this.lblDeposito.AutoSize = true;
            this.lblDeposito.Location = new System.Drawing.Point(23, 463);
            this.lblDeposito.Name = "lblDeposito";
            this.lblDeposito.Size = new System.Drawing.Size(49, 13);
            this.lblDeposito.TabIndex = 29;
            this.lblDeposito.Text = "Deposito";
            // 
            // cbDepositos
            // 
            this.cbDepositos.FormattingEnabled = true;
            this.cbDepositos.ItemHeight = 23;
            this.cbDepositos.Location = new System.Drawing.Point(93, 456);
            this.cbDepositos.Name = "cbDepositos";
            this.cbDepositos.Size = new System.Drawing.Size(397, 29);
            this.cbDepositos.TabIndex = 30;
            this.cbDepositos.UseSelectable = true;
            this.cbDepositos.SelectedIndexChanged += new System.EventHandler(this.cbDepositos_SelectedIndexChanged);
            // 
            // SucursalProductoAgregar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1020, 508);
            this.Controls.Add(this.cbDepositos);
            this.Controls.Add(this.lblDeposito);
            this.Controls.Add(this.btnAgregarProductos);
            this.Controls.Add(this.txtBuscar);
            this.Controls.Add(this.lblProductosAAgregar);
            this.Controls.Add(this.lblProductos);
            this.Controls.Add(this.gridProductosAAgregar);
            this.Controls.Add(this.btnQuitarProductos);
            this.Controls.Add(this.btnRemoverProducto);
            this.Controls.Add(this.gridProductos);
            this.Controls.Add(this.btnAgregarProducto);
            this.Name = "SucursalProductoAgregar";
            this.Resizable = false;
            this.Text = "Agregar Productos";
            this.Load += new System.EventHandler(this.ProductoAgregar_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gridProductos)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridProductosAAgregar)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private MetroButton btnAgregarProducto;
        private MetroGrid gridProductos;
        private MetroGrid gridProductosAAgregar;
        private MetroButton btnQuitarProductos;
        private MetroButton btnRemoverProducto;
        private MetroLabel lblProductos;
        private MetroLabel lblProductosAAgregar;
        private MetroTextBox txtBuscar;
        private MetroButton btnAgregarProductos;
        private System.Windows.Forms.Label lblDeposito;
        private MetroComboBox cbDepositos;
    }
}