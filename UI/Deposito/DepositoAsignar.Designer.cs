
using System.ComponentModel;
using MetroFramework.Controls;

namespace UI
{
    partial class DepositoAsignar
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
            this.gridAsignarDeposito = new MetroFramework.Controls.MetroGrid();
            this.btnAsignarDeposito = new MetroFramework.Controls.MetroButton();
            this.gridDesasignarDeposito = new MetroFramework.Controls.MetroGrid();
            this.btnCerrar = new MetroFramework.Controls.MetroButton();
            this.btnDesasignarDeposito = new MetroFramework.Controls.MetroButton();
            this.lblDepositos = new MetroFramework.Controls.MetroLabel();
            this.lblDepositosAsignados = new MetroFramework.Controls.MetroLabel();
            ((System.ComponentModel.ISupportInitialize)(this.gridAsignarDeposito)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridDesasignarDeposito)).BeginInit();
            this.SuspendLayout();
            // 
            // gridAsignarDeposito
            // 
            this.gridAsignarDeposito.AllowUserToAddRows = false;
            this.gridAsignarDeposito.AllowUserToDeleteRows = false;
            this.gridAsignarDeposito.AllowUserToResizeRows = false;
            this.gridAsignarDeposito.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.gridAsignarDeposito.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridAsignarDeposito.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.gridAsignarDeposito.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.gridAsignarDeposito.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridAsignarDeposito.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.gridAsignarDeposito.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(136)))), ((int)(((byte)(136)))), ((int)(((byte)(136)))));
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gridAsignarDeposito.DefaultCellStyle = dataGridViewCellStyle2;
            this.gridAsignarDeposito.EnableHeadersVisualStyles = false;
            this.gridAsignarDeposito.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.gridAsignarDeposito.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridAsignarDeposito.Location = new System.Drawing.Point(24, 95);
            this.gridAsignarDeposito.Name = "gridAsignarDeposito";
            this.gridAsignarDeposito.ReadOnly = true;
            this.gridAsignarDeposito.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridAsignarDeposito.RowHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.gridAsignarDeposito.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.gridAsignarDeposito.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gridAsignarDeposito.Size = new System.Drawing.Size(350, 253);
            this.gridAsignarDeposito.TabIndex = 17;
            // 
            // btnAsignarDeposito
            // 
            this.btnAsignarDeposito.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnAsignarDeposito.Location = new System.Drawing.Point(251, 353);
            this.btnAsignarDeposito.Margin = new System.Windows.Forms.Padding(2);
            this.btnAsignarDeposito.Name = "btnAsignarDeposito";
            this.btnAsignarDeposito.Size = new System.Drawing.Size(123, 23);
            this.btnAsignarDeposito.TabIndex = 14;
            this.btnAsignarDeposito.Tag = "assign";
            this.btnAsignarDeposito.Text = "Asignar";
            this.btnAsignarDeposito.UseSelectable = true;
            this.btnAsignarDeposito.Click += new System.EventHandler(this.btnAsignarDeposito_Click);
            // 
            // gridDesasignarDeposito
            // 
            this.gridDesasignarDeposito.AllowUserToAddRows = false;
            this.gridDesasignarDeposito.AllowUserToDeleteRows = false;
            this.gridDesasignarDeposito.AllowUserToResizeRows = false;
            this.gridDesasignarDeposito.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.gridDesasignarDeposito.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridDesasignarDeposito.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.gridDesasignarDeposito.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.gridDesasignarDeposito.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle4.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle4.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle4.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridDesasignarDeposito.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle4;
            this.gridDesasignarDeposito.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle5.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle5.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle5.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(136)))), ((int)(((byte)(136)))), ((int)(((byte)(136)))));
            dataGridViewCellStyle5.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle5.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle5.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gridDesasignarDeposito.DefaultCellStyle = dataGridViewCellStyle5;
            this.gridDesasignarDeposito.EnableHeadersVisualStyles = false;
            this.gridDesasignarDeposito.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.gridDesasignarDeposito.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridDesasignarDeposito.Location = new System.Drawing.Point(380, 95);
            this.gridDesasignarDeposito.Name = "gridDesasignarDeposito";
            this.gridDesasignarDeposito.ReadOnly = true;
            this.gridDesasignarDeposito.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle6.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle6.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle6.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle6.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle6.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle6.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridDesasignarDeposito.RowHeadersDefaultCellStyle = dataGridViewCellStyle6;
            this.gridDesasignarDeposito.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.gridDesasignarDeposito.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gridDesasignarDeposito.Size = new System.Drawing.Size(350, 252);
            this.gridDesasignarDeposito.TabIndex = 20;
            // 
            // btnCerrar
            // 
            this.btnCerrar.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnCerrar.Location = new System.Drawing.Point(613, 352);
            this.btnCerrar.Margin = new System.Windows.Forms.Padding(2);
            this.btnCerrar.Name = "btnCerrar";
            this.btnCerrar.Size = new System.Drawing.Size(117, 23);
            this.btnCerrar.TabIndex = 19;
            this.btnCerrar.Tag = "close";
            this.btnCerrar.Text = "Cerrar";
            this.btnCerrar.UseSelectable = true;
            this.btnCerrar.Click += new System.EventHandler(this.btnCerrar_Click);
            // 
            // btnDesasignarDeposito
            // 
            this.btnDesasignarDeposito.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnDesasignarDeposito.Location = new System.Drawing.Point(486, 352);
            this.btnDesasignarDeposito.Margin = new System.Windows.Forms.Padding(2);
            this.btnDesasignarDeposito.Name = "btnDesasignarDeposito";
            this.btnDesasignarDeposito.Size = new System.Drawing.Size(123, 23);
            this.btnDesasignarDeposito.TabIndex = 18;
            this.btnDesasignarDeposito.Tag = "unassign";
            this.btnDesasignarDeposito.Text = "Desasignar";
            this.btnDesasignarDeposito.UseSelectable = true;
            this.btnDesasignarDeposito.Click += new System.EventHandler(this.btnDesasignarDeposito_Click);
            // 
            // lblDepositos
            // 
            this.lblDepositos.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lblDepositos.AutoSize = true;
            this.lblDepositos.Location = new System.Drawing.Point(148, 73);
            this.lblDepositos.Name = "lblDepositos";
            this.lblDepositos.Size = new System.Drawing.Size(66, 19);
            this.lblDepositos.TabIndex = 21;
            this.lblDepositos.Tag = "warehouses";
            this.lblDepositos.Text = "Depositos";
            // 
            // lblDepositosAsignados
            // 
            this.lblDepositosAsignados.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lblDepositosAsignados.AutoSize = true;
            this.lblDepositosAsignados.Location = new System.Drawing.Point(513, 73);
            this.lblDepositosAsignados.Name = "lblDepositosAsignados";
            this.lblDepositosAsignados.Size = new System.Drawing.Size(130, 19);
            this.lblDepositosAsignados.TabIndex = 22;
            this.lblDepositosAsignados.Tag = "assignedWarehouses";
            this.lblDepositosAsignados.Text = "Depositos Asignados";
            // 
            // DepositoAsignar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(766, 398);
            this.Controls.Add(this.lblDepositosAsignados);
            this.Controls.Add(this.lblDepositos);
            this.Controls.Add(this.gridDesasignarDeposito);
            this.Controls.Add(this.btnCerrar);
            this.Controls.Add(this.btnDesasignarDeposito);
            this.Controls.Add(this.gridAsignarDeposito);
            this.Controls.Add(this.btnAsignarDeposito);
            this.Name = "DepositoAsignar";
            this.Text = "AsignarDeposito";
            this.Load += new System.EventHandler(this.AsignarDeposito_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gridAsignarDeposito)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridDesasignarDeposito)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private MetroButton btnAsignarDeposito;
        private MetroGrid gridAsignarDeposito;
        private MetroGrid gridDesasignarDeposito;
        private MetroButton btnCerrar;
        private MetroButton btnDesasignarDeposito;
        private MetroLabel lblDepositos;
        private MetroLabel lblDepositosAsignados;
    }
}