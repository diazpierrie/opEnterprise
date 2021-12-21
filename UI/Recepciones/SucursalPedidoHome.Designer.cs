
using System.ComponentModel;
using System.Windows.Forms;
using MetroFramework.Controls;

namespace UI
{
    partial class SucursalPedidoHome
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
            this.lblTotal = new System.Windows.Forms.Label();
            this.gridPedido = new MetroFramework.Controls.MetroGrid();
            this.btnRemoverProductos = new MetroFramework.Controls.MetroButton();
            this.btnAgregarProductos = new MetroFramework.Controls.MetroButton();
            this.btnCompletarPedido = new MetroFramework.Controls.MetroButton();
            ((System.ComponentModel.ISupportInitialize)(this.gridPedido)).BeginInit();
            this.SuspendLayout();
            // 
            // lblTotal
            // 
            this.lblTotal.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.lblTotal.AutoSize = true;
            this.lblTotal.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTotal.Location = new System.Drawing.Point(706, 387);
            this.lblTotal.Name = "lblTotal";
            this.lblTotal.Size = new System.Drawing.Size(67, 25);
            this.lblTotal.TabIndex = 9;
            this.lblTotal.Text = "Total: ";
            // 
            // gridPedido
            // 
            this.gridPedido.AllowUserToAddRows = false;
            this.gridPedido.AllowUserToDeleteRows = false;
            this.gridPedido.AllowUserToResizeRows = false;
            this.gridPedido.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridPedido.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.gridPedido.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.gridPedido.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridPedido.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.gridPedido.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(136)))), ((int)(((byte)(136)))), ((int)(((byte)(136)))));
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gridPedido.DefaultCellStyle = dataGridViewCellStyle2;
            this.gridPedido.EnableHeadersVisualStyles = false;
            this.gridPedido.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.gridPedido.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridPedido.Location = new System.Drawing.Point(38, 63);
            this.gridPedido.MultiSelect = false;
            this.gridPedido.Name = "gridPedido";
            this.gridPedido.ReadOnly = true;
            this.gridPedido.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridPedido.RowHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.gridPedido.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.gridPedido.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gridPedido.Size = new System.Drawing.Size(662, 405);
            this.gridPedido.TabIndex = 7;
            this.gridPedido.CellValueChanged += new System.Windows.Forms.DataGridViewCellEventHandler(this.gridVenta_CellValueChanged);
            // 
            // btnRemoverProductos
            // 
            this.btnRemoverProductos.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnRemoverProductos.Location = new System.Drawing.Point(711, 121);
            this.btnRemoverProductos.Name = "btnRemoverProductos";
            this.btnRemoverProductos.Size = new System.Drawing.Size(136, 41);
            this.btnRemoverProductos.TabIndex = 5;
            this.btnRemoverProductos.Tag = "remove_product";
            this.btnRemoverProductos.Text = "Remover Productos";
            this.btnRemoverProductos.UseSelectable = true;
            this.btnRemoverProductos.Click += new System.EventHandler(this.btnRemoverProductos_Click);
            // 
            // btnAgregarProductos
            // 
            this.btnAgregarProductos.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnAgregarProductos.Location = new System.Drawing.Point(711, 74);
            this.btnAgregarProductos.Name = "btnAgregarProductos";
            this.btnAgregarProductos.Size = new System.Drawing.Size(136, 41);
            this.btnAgregarProductos.TabIndex = 4;
            this.btnAgregarProductos.Text = "Agregar Productos";
            this.btnAgregarProductos.UseSelectable = true;
            this.btnAgregarProductos.Click += new System.EventHandler(this.btnAgregarProductos_Click);
            // 
            // btnCompletarPedido
            // 
            this.btnCompletarPedido.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnCompletarPedido.Location = new System.Drawing.Point(711, 168);
            this.btnCompletarPedido.Name = "btnCompletarPedido";
            this.btnCompletarPedido.Size = new System.Drawing.Size(136, 41);
            this.btnCompletarPedido.TabIndex = 10;
            this.btnCompletarPedido.Tag = "finish_request";
            this.btnCompletarPedido.Text = "Completar Pedido";
            this.btnCompletarPedido.UseSelectable = true;
            this.btnCompletarPedido.Click += new System.EventHandler(this.btnCompletarPedido_Click);
            // 
            // SucursalPedidoHome
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(865, 491);
            this.Controls.Add(this.btnCompletarPedido);
            this.Controls.Add(this.lblTotal);
            this.Controls.Add(this.gridPedido);
            this.Controls.Add(this.btnRemoverProductos);
            this.Controls.Add(this.btnAgregarProductos);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "SucursalPedidoHome";
            this.Resizable = false;
            this.Text = "Realizar Pedido a Deposito";
            this.Load += new System.EventHandler(this.VentaHome_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gridPedido)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private MetroGrid gridPedido;
        private MetroButton btnRemoverProductos;
        private MetroButton btnAgregarProductos;
        private Label lblTotal;
        private MetroButton btnCompletarPedido;
    }
}