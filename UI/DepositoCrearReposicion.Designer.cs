
using System.ComponentModel;
using System.Windows.Forms;
using MetroFramework.Controls;

namespace UI
{
    partial class DepositoCrearReposicion
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
            this.btnRemoverProducto = new MetroFramework.Controls.MetroButton();
            this.btnAgregarProducto = new MetroFramework.Controls.MetroButton();
            this.btnCompletarPedido = new MetroFramework.Controls.MetroButton();
            ((System.ComponentModel.ISupportInitialize)(this.gridPedido)).BeginInit();
            this.SuspendLayout();
            // 
            // lblTotal
            // 
            this.lblTotal.AutoSize = true;
            this.lblTotal.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTotal.Location = new System.Drawing.Point(621, 389);
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
            this.gridPedido.Location = new System.Drawing.Point(38, 75);
            this.gridPedido.MultiSelect = false;
            this.gridPedido.Name = "gridPedido";
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
            this.gridPedido.Size = new System.Drawing.Size(563, 301);
            this.gridPedido.TabIndex = 7;
            this.gridPedido.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.gridVenta_CellDoubleClick);
            this.gridPedido.CellValueChanged += new System.Windows.Forms.DataGridViewCellEventHandler(this.gridVenta_CellValueChanged);
            // 
            // btnRemoverProducto
            // 
            this.btnRemoverProducto.Location = new System.Drawing.Point(626, 122);
            this.btnRemoverProducto.Name = "btnRemoverProducto";
            this.btnRemoverProducto.Size = new System.Drawing.Size(136, 41);
            this.btnRemoverProducto.TabIndex = 5;
            this.btnRemoverProducto.Tag = "remove_product";
            this.btnRemoverProducto.Text = "Remover Producto";
            this.btnRemoverProducto.UseSelectable = true;
            this.btnRemoverProducto.Click += new System.EventHandler(this.btnModificarVenta_Click);
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
            // btnCompletarPedido
            // 
            this.btnCompletarPedido.Location = new System.Drawing.Point(626, 169);
            this.btnCompletarPedido.Name = "btnCompletarPedido";
            this.btnCompletarPedido.Size = new System.Drawing.Size(136, 41);
            this.btnCompletarPedido.TabIndex = 10;
            this.btnCompletarPedido.Tag = "complete_order";
            this.btnCompletarPedido.Text = "Completar Pedido";
            this.btnCompletarPedido.UseSelectable = true;
            this.btnCompletarPedido.Click += new System.EventHandler(this.btnCompletarVenta_Click);
            // 
            // DepositoCrearReposicion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.btnCompletarPedido);
            this.Controls.Add(this.lblTotal);
            this.Controls.Add(this.gridPedido);
            this.Controls.Add(this.btnRemoverProducto);
            this.Controls.Add(this.btnAgregarProducto);
            this.Name = "DepositoCrearReposicion";
            this.Text = "Pedido";
            this.Load += new System.EventHandler(this.VentaHome_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gridPedido)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private MetroGrid gridPedido;
        private MetroButton btnRemoverProducto;
        private MetroButton btnAgregarProducto;
        private Label lblTotal;
        private MetroButton btnCompletarPedido;
    }
}