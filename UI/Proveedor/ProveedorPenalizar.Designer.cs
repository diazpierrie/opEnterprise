
using System.ComponentModel;
using MetroFramework.Controls;

namespace UI
{
    partial class ProveedorPenalizar
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
            this.cbMotivos = new MetroFramework.Controls.MetroComboBox();
            this.lblQueja = new MetroFramework.Controls.MetroLabel();
            this.btnAsignarQueja = new MetroFramework.Controls.MetroButton();
            this.SuspendLayout();
            // 
            // cbMotivos
            // 
            this.cbMotivos.FormattingEnabled = true;
            this.cbMotivos.ItemHeight = 23;
            this.cbMotivos.Location = new System.Drawing.Point(96, 95);
            this.cbMotivos.Name = "cbMotivos";
            this.cbMotivos.Size = new System.Drawing.Size(226, 29);
            this.cbMotivos.TabIndex = 0;
            this.cbMotivos.UseSelectable = true;
            // 
            // lblQueja
            // 
            this.lblQueja.Location = new System.Drawing.Point(1, 95);
            this.lblQueja.Name = "lblQueja";
            this.lblQueja.Size = new System.Drawing.Size(89, 29);
            this.lblQueja.TabIndex = 1;
            this.lblQueja.Tag = "complaint";
            this.lblQueja.Text = "Queja";
            this.lblQueja.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // btnAsignarQueja
            // 
            this.btnAsignarQueja.Location = new System.Drawing.Point(96, 130);
            this.btnAsignarQueja.Name = "btnAsignarQueja";
            this.btnAsignarQueja.Size = new System.Drawing.Size(226, 23);
            this.btnAsignarQueja.TabIndex = 2;
            this.btnAsignarQueja.Tag = "assign_complaint";
            this.btnAsignarQueja.Text = "Asignar Queja";
            this.btnAsignarQueja.UseSelectable = true;
            this.btnAsignarQueja.Click += new System.EventHandler(this.btnAsignarQueja_Click);
            // 
            // ProveedorPenalizar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(425, 204);
            this.Controls.Add(this.btnAsignarQueja);
            this.Controls.Add(this.lblQueja);
            this.Controls.Add(this.cbMotivos);
            this.Name = "ProveedorPenalizar";
            this.Tag = "penalize_vendor";
            this.Text = "Penalizar Proveedor";
            this.ResumeLayout(false);

        }

        #endregion

        private MetroComboBox cbMotivos;
        private MetroLabel lblQueja;
        private MetroButton btnAsignarQueja;
    }
}