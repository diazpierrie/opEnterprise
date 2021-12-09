
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle7 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle8 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle9 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle10 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle11 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle12 = new System.Windows.Forms.DataGridViewCellStyle();
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
            this.gridAsignarDeposito.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridAsignarDeposito.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.gridAsignarDeposito.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.gridAsignarDeposito.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle7.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle7.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle7.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle7.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle7.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle7.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle7.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridAsignarDeposito.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle7;
            this.gridAsignarDeposito.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle8.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle8.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle8.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle8.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(136)))), ((int)(((byte)(136)))), ((int)(((byte)(136)))));
            dataGridViewCellStyle8.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle8.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle8.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gridAsignarDeposito.DefaultCellStyle = dataGridViewCellStyle8;
            this.gridAsignarDeposito.EnableHeadersVisualStyles = false;
            this.gridAsignarDeposito.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.gridAsignarDeposito.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridAsignarDeposito.Location = new System.Drawing.Point(24, 95);
            this.gridAsignarDeposito.Name = "gridAsignarDeposito";
            this.gridAsignarDeposito.ReadOnly = true;
            this.gridAsignarDeposito.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle9.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle9.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle9.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle9.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle9.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle9.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle9.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridAsignarDeposito.RowHeadersDefaultCellStyle = dataGridViewCellStyle9;
            this.gridAsignarDeposito.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.gridAsignarDeposito.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gridAsignarDeposito.Size = new System.Drawing.Size(350, 253);
            this.gridAsignarDeposito.TabIndex = 17;
            // 
            // btnAsignarDeposito
            // 
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
            this.gridDesasignarDeposito.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridDesasignarDeposito.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.gridDesasignarDeposito.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.gridDesasignarDeposito.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle10.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle10.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle10.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle10.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle10.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle10.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle10.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridDesasignarDeposito.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle10;
            this.gridDesasignarDeposito.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle11.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle11.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle11.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle11.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(136)))), ((int)(((byte)(136)))), ((int)(((byte)(136)))));
            dataGridViewCellStyle11.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle11.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle11.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gridDesasignarDeposito.DefaultCellStyle = dataGridViewCellStyle11;
            this.gridDesasignarDeposito.EnableHeadersVisualStyles = false;
            this.gridDesasignarDeposito.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.gridDesasignarDeposito.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridDesasignarDeposito.Location = new System.Drawing.Point(380, 95);
            this.gridDesasignarDeposito.Name = "gridDesasignarDeposito";
            this.gridDesasignarDeposito.ReadOnly = true;
            this.gridDesasignarDeposito.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle12.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle12.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle12.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle12.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle12.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle12.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle12.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridDesasignarDeposito.RowHeadersDefaultCellStyle = dataGridViewCellStyle12;
            this.gridDesasignarDeposito.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.gridDesasignarDeposito.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gridDesasignarDeposito.Size = new System.Drawing.Size(350, 252);
            this.gridDesasignarDeposito.TabIndex = 20;
            // 
            // btnCerrar
            // 
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