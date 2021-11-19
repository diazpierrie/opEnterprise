
using System.ComponentModel;
using MetroFramework.Controls;

namespace UI
{
    partial class DireccionBaja
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
            this.lblPregunta = new MetroFramework.Controls.MetroLabel();
            this.btnSi = new MetroFramework.Controls.MetroButton();
            this.btnNo = new MetroFramework.Controls.MetroButton();
            this.SuspendLayout();
            // 
            // lblPregunta
            // 
            this.lblPregunta.AutoSize = true;
            this.lblPregunta.Location = new System.Drawing.Point(88, 52);
            this.lblPregunta.Name = "lblPregunta";
            this.lblPregunta.Size = new System.Drawing.Size(274, 19);
            this.lblPregunta.TabIndex = 0;
            this.lblPregunta.Text = "¿Está seguro que desea eliminar la direccion?";
            // 
            // btnSi
            // 
            this.btnSi.Location = new System.Drawing.Point(88, 107);
            this.btnSi.Name = "btnSi";
            this.btnSi.Size = new System.Drawing.Size(75, 23);
            this.btnSi.TabIndex = 1;
            this.btnSi.Text = "Si";
            this.btnSi.UseSelectable = true;
            this.btnSi.Click += new System.EventHandler(this.btnSi_Click);
            // 
            // btnNo
            // 
            this.btnNo.Location = new System.Drawing.Point(296, 107);
            this.btnNo.Name = "btnNo";
            this.btnNo.Size = new System.Drawing.Size(75, 23);
            this.btnNo.TabIndex = 2;
            this.btnNo.Text = "No";
            this.btnNo.UseSelectable = true;
            this.btnNo.Click += new System.EventHandler(this.btnNo_Click);
            // 
            // DireccionBaja
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(485, 166);
            this.Controls.Add(this.btnNo);
            this.Controls.Add(this.btnSi);
            this.Controls.Add(this.lblPregunta);
            this.Name = "DireccionBaja";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private MetroLabel lblPregunta;
        private MetroButton btnSi;
        private MetroButton btnNo;
    }
}