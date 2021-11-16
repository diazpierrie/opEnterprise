
using System.ComponentModel;
using MetroFramework.Controls;

namespace UI
{
    partial class VentaElegirQueja
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
            this.cbQuejas = new MetroFramework.Controls.MetroComboBox();
            this.lblQueja = new MetroFramework.Controls.MetroLabel();
            this.btnAsignarQueja = new MetroFramework.Controls.MetroButton();
            this.SuspendLayout();
            // 
            // cbQuejas
            // 
            this.cbQuejas.FormattingEnabled = true;
            this.cbQuejas.ItemHeight = 23;
            this.cbQuejas.Location = new System.Drawing.Point(156, 87);
            this.cbQuejas.Name = "cbQuejas";
            this.cbQuejas.Size = new System.Drawing.Size(226, 29);
            this.cbQuejas.TabIndex = 0;
            this.cbQuejas.UseSelectable = true;
            // 
            // lblQueja
            // 
            this.lblQueja.AutoSize = true;
            this.lblQueja.Location = new System.Drawing.Point(106, 92);
            this.lblQueja.Name = "lblQueja";
            this.lblQueja.Size = new System.Drawing.Size(44, 19);
            this.lblQueja.TabIndex = 1;
            this.lblQueja.Text = "Queja";
            // 
            // btnAsignarQueja
            // 
            this.btnAsignarQueja.Location = new System.Drawing.Point(248, 122);
            this.btnAsignarQueja.Name = "btnAsignarQueja";
            this.btnAsignarQueja.Size = new System.Drawing.Size(134, 23);
            this.btnAsignarQueja.TabIndex = 2;
            this.btnAsignarQueja.Tag = "assign_complaint";
            this.btnAsignarQueja.Text = "Asignar Queja";
            this.btnAsignarQueja.UseSelectable = true;
            this.btnAsignarQueja.Click += new System.EventHandler(this.btnAsignarQueja_Click);
            // 
            // VentaElegirQueja
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(405, 200);
            this.Controls.Add(this.btnAsignarQueja);
            this.Controls.Add(this.lblQueja);
            this.Controls.Add(this.cbQuejas);
            this.Name = "VentaElegirQueja";
            this.Text = "VentaElegirQueja";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private MetroComboBox cbQuejas;
        private MetroLabel lblQueja;
        private MetroButton btnAsignarQueja;
    }
}