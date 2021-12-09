
using System.ComponentModel;
using MetroFramework.Controls;

namespace UI
{
    partial class EmpleadoHome
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
            this.btnAsignar = new MetroFramework.Controls.MetroButton();
            this.gridEmpleado = new MetroFramework.Controls.MetroGrid();
            this.btnBorrarEmpleado = new MetroFramework.Controls.MetroButton();
            this.btnModificarEmpleado = new MetroFramework.Controls.MetroButton();
            this.btnCrearEmpleado = new MetroFramework.Controls.MetroButton();
            ((System.ComponentModel.ISupportInitialize)(this.gridEmpleado)).BeginInit();
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
            // gridEmpleado
            // 
            this.gridEmpleado.AllowUserToAddRows = false;
            this.gridEmpleado.AllowUserToDeleteRows = false;
            this.gridEmpleado.AllowUserToResizeRows = false;
            this.gridEmpleado.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridEmpleado.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.gridEmpleado.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.gridEmpleado.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridEmpleado.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.gridEmpleado.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(136)))), ((int)(((byte)(136)))), ((int)(((byte)(136)))));
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gridEmpleado.DefaultCellStyle = dataGridViewCellStyle2;
            this.gridEmpleado.EnableHeadersVisualStyles = false;
            this.gridEmpleado.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.gridEmpleado.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridEmpleado.Location = new System.Drawing.Point(38, 75);
            this.gridEmpleado.MultiSelect = false;
            this.gridEmpleado.Name = "gridEmpleado";
            this.gridEmpleado.ReadOnly = true;
            this.gridEmpleado.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridEmpleado.RowHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.gridEmpleado.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.gridEmpleado.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gridEmpleado.Size = new System.Drawing.Size(563, 301);
            this.gridEmpleado.TabIndex = 7;
            this.gridEmpleado.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.gridEmpleado_CellClick);
            this.gridEmpleado.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.gridEmpleado_CellDoubleClick);
            // 
            // btnBorrarEmpleado
            // 
            this.btnBorrarEmpleado.Location = new System.Drawing.Point(626, 169);
            this.btnBorrarEmpleado.Name = "btnBorrarEmpleado";
            this.btnBorrarEmpleado.Size = new System.Drawing.Size(136, 41);
            this.btnBorrarEmpleado.TabIndex = 6;
            this.btnBorrarEmpleado.Text = "Borrar Empleado";
            this.btnBorrarEmpleado.UseSelectable = true;
            this.btnBorrarEmpleado.Click += new System.EventHandler(this.btnBorrarEmpleado_Click);
            // 
            // btnModificarEmpleado
            // 
            this.btnModificarEmpleado.Location = new System.Drawing.Point(626, 122);
            this.btnModificarEmpleado.Name = "btnModificarEmpleado";
            this.btnModificarEmpleado.Size = new System.Drawing.Size(136, 41);
            this.btnModificarEmpleado.TabIndex = 5;
            this.btnModificarEmpleado.Text = "Modificar Empleado";
            this.btnModificarEmpleado.UseSelectable = true;
            this.btnModificarEmpleado.Click += new System.EventHandler(this.btnModificarEmpleado_Click);
            // 
            // btnCrearEmpleado
            // 
            this.btnCrearEmpleado.Location = new System.Drawing.Point(626, 75);
            this.btnCrearEmpleado.Name = "btnCrearEmpleado";
            this.btnCrearEmpleado.Size = new System.Drawing.Size(136, 41);
            this.btnCrearEmpleado.TabIndex = 4;
            this.btnCrearEmpleado.Text = "Crear Empleado";
            this.btnCrearEmpleado.UseSelectable = true;
            this.btnCrearEmpleado.Click += new System.EventHandler(this.btnCrearEmpleado_Click);
            // 
            // EmpleadoHome
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.btnAsignar);
            this.Controls.Add(this.gridEmpleado);
            this.Controls.Add(this.btnBorrarEmpleado);
            this.Controls.Add(this.btnModificarEmpleado);
            this.Controls.Add(this.btnCrearEmpleado);
            this.Name = "EmpleadoHome";
            this.Text = "EmpleadoHome";
            this.Load += new System.EventHandler(this.EmpleadoHome_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gridEmpleado)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private MetroGrid gridEmpleado;
        private MetroButton btnBorrarEmpleado;
        private MetroButton btnModificarEmpleado;
        private MetroButton btnCrearEmpleado;
        private MetroButton btnAsignar;
    }
}