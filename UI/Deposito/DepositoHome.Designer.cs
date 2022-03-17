
using System.ComponentModel;
using MetroFramework.Controls;

namespace UI
{
    partial class DepositoHome
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
            this.gridDeposito = new MetroFramework.Controls.MetroGrid();
            this.btnBorrarDeposito = new MetroFramework.Controls.MetroButton();
            this.btnModificarDeposito = new MetroFramework.Controls.MetroButton();
            this.btnCrearDeposito = new MetroFramework.Controls.MetroButton();
            ((System.ComponentModel.ISupportInitialize)(this.gridDeposito)).BeginInit();
            this.SuspendLayout();
            // 
            // gridDeposito
            // 
            this.gridDeposito.AllowUserToAddRows = false;
            this.gridDeposito.AllowUserToDeleteRows = false;
            this.gridDeposito.AllowUserToResizeRows = false;
            this.gridDeposito.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gridDeposito.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridDeposito.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.gridDeposito.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.gridDeposito.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridDeposito.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.gridDeposito.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(136)))), ((int)(((byte)(136)))), ((int)(((byte)(136)))));
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gridDeposito.DefaultCellStyle = dataGridViewCellStyle2;
            this.gridDeposito.EnableHeadersVisualStyles = false;
            this.gridDeposito.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.gridDeposito.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridDeposito.Location = new System.Drawing.Point(23, 75);
            this.gridDeposito.Name = "gridDeposito";
            this.gridDeposito.ReadOnly = true;
            this.gridDeposito.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridDeposito.RowHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.gridDeposito.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.gridDeposito.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gridDeposito.Size = new System.Drawing.Size(612, 352);
            this.gridDeposito.TabIndex = 7;
            this.gridDeposito.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.gridDeposito_CellDoubleClick);
            // 
            // btnBorrarDeposito
            // 
            this.btnBorrarDeposito.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnBorrarDeposito.Location = new System.Drawing.Point(641, 169);
            this.btnBorrarDeposito.Name = "btnBorrarDeposito";
            this.btnBorrarDeposito.Size = new System.Drawing.Size(136, 41);
            this.btnBorrarDeposito.TabIndex = 6;
            this.btnBorrarDeposito.Text = "Borrar Deposito";
            this.btnBorrarDeposito.UseSelectable = true;
            this.btnBorrarDeposito.Click += new System.EventHandler(this.btnBorrarDeposito_Click);
            // 
            // btnModificarDeposito
            // 
            this.btnModificarDeposito.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnModificarDeposito.Location = new System.Drawing.Point(641, 122);
            this.btnModificarDeposito.Name = "btnModificarDeposito";
            this.btnModificarDeposito.Size = new System.Drawing.Size(136, 41);
            this.btnModificarDeposito.TabIndex = 5;
            this.btnModificarDeposito.Text = "Modificar Deposito";
            this.btnModificarDeposito.UseSelectable = true;
            this.btnModificarDeposito.Click += new System.EventHandler(this.btnModificarDeposito_Click);
            // 
            // btnCrearDeposito
            // 
            this.btnCrearDeposito.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnCrearDeposito.Location = new System.Drawing.Point(641, 75);
            this.btnCrearDeposito.Name = "btnCrearDeposito";
            this.btnCrearDeposito.Size = new System.Drawing.Size(136, 41);
            this.btnCrearDeposito.TabIndex = 4;
            this.btnCrearDeposito.Text = "Crear Deposito";
            this.btnCrearDeposito.UseSelectable = true;
            this.btnCrearDeposito.Click += new System.EventHandler(this.btnCrearDeposito_Click);
            // 
            // DepositoHome
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.gridDeposito);
            this.Controls.Add(this.btnBorrarDeposito);
            this.Controls.Add(this.btnModificarDeposito);
            this.Controls.Add(this.btnCrearDeposito);
            this.Name = "DepositoHome";
            this.Tag = "manage_deposits";
            this.Text = "DepositoHome";
            this.Load += new System.EventHandler(this.DepositoHome_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gridDeposito)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private MetroGrid gridDeposito;
        private MetroButton btnBorrarDeposito;
        private MetroButton btnModificarDeposito;
        private MetroButton btnCrearDeposito;
    }
}