
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            this.btnAsignar = new MetroFramework.Controls.MetroButton();
            this.gridEmpleado = new MetroFramework.Controls.MetroGrid();
            this.btnBorrarEmpleado = new MetroFramework.Controls.MetroButton();
            this.btnModificarEmpleado = new MetroFramework.Controls.MetroButton();
            this.btnCrearEmpleado = new MetroFramework.Controls.MetroButton();
            this.btnDesbloquearEmpleado = new MetroFramework.Controls.MetroButton();
            ((System.ComponentModel.ISupportInitialize)(this.gridEmpleado)).BeginInit();
            this.SuspendLayout();
            // 
            // btnAsignar
            // 
            this.btnAsignar.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnAsignar.Location = new System.Drawing.Point(641, 263);
            this.btnAsignar.Name = "btnAsignar";
            this.btnAsignar.Size = new System.Drawing.Size(136, 41);
            this.btnAsignar.TabIndex = 8;
            this.btnAsignar.Tag = "assign";
            this.btnAsignar.Text = "Asignar";
            this.btnAsignar.UseSelectable = true;
            this.btnAsignar.Click += new System.EventHandler(this.BtnAsignar_Click);
            // 
            // gridEmpleado
            // 
            this.gridEmpleado.AllowUserToAddRows = false;
            this.gridEmpleado.AllowUserToDeleteRows = false;
            this.gridEmpleado.AllowUserToResizeRows = false;
            this.gridEmpleado.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gridEmpleado.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridEmpleado.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.gridEmpleado.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.gridEmpleado.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle4.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle4.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle4.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridEmpleado.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle4;
            this.gridEmpleado.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle5.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle5.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle5.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(136)))), ((int)(((byte)(136)))), ((int)(((byte)(136)))));
            dataGridViewCellStyle5.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle5.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle5.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gridEmpleado.DefaultCellStyle = dataGridViewCellStyle5;
            this.gridEmpleado.EnableHeadersVisualStyles = false;
            this.gridEmpleado.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.gridEmpleado.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridEmpleado.Location = new System.Drawing.Point(23, 75);
            this.gridEmpleado.MultiSelect = false;
            this.gridEmpleado.Name = "gridEmpleado";
            this.gridEmpleado.ReadOnly = true;
            this.gridEmpleado.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle6.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(174)))), ((int)(((byte)(219)))));
            dataGridViewCellStyle6.Font = new System.Drawing.Font("Segoe UI", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            dataGridViewCellStyle6.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle6.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(198)))), ((int)(((byte)(247)))));
            dataGridViewCellStyle6.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(17)))), ((int)(((byte)(17)))), ((int)(((byte)(17)))));
            dataGridViewCellStyle6.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.gridEmpleado.RowHeadersDefaultCellStyle = dataGridViewCellStyle6;
            this.gridEmpleado.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.gridEmpleado.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gridEmpleado.Size = new System.Drawing.Size(612, 352);
            this.gridEmpleado.TabIndex = 7;
            this.gridEmpleado.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.GridEmpleado_CellClick);
            this.gridEmpleado.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.GridEmpleado_CellDoubleClick);
            // 
            // btnBorrarEmpleado
            // 
            this.btnBorrarEmpleado.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnBorrarEmpleado.Location = new System.Drawing.Point(641, 169);
            this.btnBorrarEmpleado.Name = "btnBorrarEmpleado";
            this.btnBorrarEmpleado.Size = new System.Drawing.Size(136, 41);
            this.btnBorrarEmpleado.TabIndex = 6;
            this.btnBorrarEmpleado.Tag = "delete_employee";
            this.btnBorrarEmpleado.Text = "Borrar Empleado";
            this.btnBorrarEmpleado.UseSelectable = true;
            this.btnBorrarEmpleado.Click += new System.EventHandler(this.BtnBorrarEmpleado_Click);
            // 
            // btnModificarEmpleado
            // 
            this.btnModificarEmpleado.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnModificarEmpleado.Location = new System.Drawing.Point(641, 122);
            this.btnModificarEmpleado.Name = "btnModificarEmpleado";
            this.btnModificarEmpleado.Size = new System.Drawing.Size(136, 41);
            this.btnModificarEmpleado.TabIndex = 5;
            this.btnModificarEmpleado.Tag = "modify_employee";
            this.btnModificarEmpleado.Text = "Modificar Empleado";
            this.btnModificarEmpleado.UseSelectable = true;
            this.btnModificarEmpleado.Click += new System.EventHandler(this.BtnModificarEmpleado_Click);
            // 
            // btnCrearEmpleado
            // 
            this.btnCrearEmpleado.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnCrearEmpleado.Location = new System.Drawing.Point(641, 75);
            this.btnCrearEmpleado.Name = "btnCrearEmpleado";
            this.btnCrearEmpleado.Size = new System.Drawing.Size(136, 41);
            this.btnCrearEmpleado.TabIndex = 4;
            this.btnCrearEmpleado.Tag = "create_employee";
            this.btnCrearEmpleado.Text = "Crear Empleado";
            this.btnCrearEmpleado.UseSelectable = true;
            this.btnCrearEmpleado.Click += new System.EventHandler(this.BtnCrearEmpleado_Click);
            // 
            // btnDesbloquearEmpleado
            // 
            this.btnDesbloquearEmpleado.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnDesbloquearEmpleado.Location = new System.Drawing.Point(641, 216);
            this.btnDesbloquearEmpleado.Name = "btnDesbloquearEmpleado";
            this.btnDesbloquearEmpleado.Size = new System.Drawing.Size(136, 41);
            this.btnDesbloquearEmpleado.TabIndex = 9;
            this.btnDesbloquearEmpleado.Tag = "";
            this.btnDesbloquearEmpleado.Text = "Desbloquear Empleado";
            this.btnDesbloquearEmpleado.UseSelectable = true;
            this.btnDesbloquearEmpleado.Click += new System.EventHandler(this.BtnDesbloquearEmpleado_Click);
            // 
            // EmpleadoHome
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.btnDesbloquearEmpleado);
            this.Controls.Add(this.btnAsignar);
            this.Controls.Add(this.gridEmpleado);
            this.Controls.Add(this.btnBorrarEmpleado);
            this.Controls.Add(this.btnModificarEmpleado);
            this.Controls.Add(this.btnCrearEmpleado);
            this.Name = "EmpleadoHome";
            this.Tag = "manage_employees";
            this.Text = "Gestionar Empleados";
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
        private MetroButton btnDesbloquearEmpleado;
    }
}