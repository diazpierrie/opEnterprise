
using System.ComponentModel;
using MetroFramework.Controls;

namespace UI
{
    partial class EmpleadoBaja
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
            this.btnNo = new MetroFramework.Controls.MetroButton();
            this.btnSi = new MetroFramework.Controls.MetroButton();
            this.lblPregunta = new MetroFramework.Controls.MetroLabel();
            this.SuspendLayout();
            // 
            // btnNo
            // 
            this.btnNo.Location = new System.Drawing.Point(295, 120);
            this.btnNo.Name = "btnNo";
            this.btnNo.Size = new System.Drawing.Size(75, 23);
            this.btnNo.TabIndex = 5;
            this.btnNo.Text = "No";
            this.btnNo.UseSelectable = true;
            this.btnNo.Click += new System.EventHandler(this.btnNo_Click);
            // 
            // btnSi
            // 
            this.btnSi.Location = new System.Drawing.Point(87, 120);
            this.btnSi.Name = "btnSi";
            this.btnSi.Size = new System.Drawing.Size(75, 23);
            this.btnSi.TabIndex = 4;
            this.btnSi.Text = "Si";
            this.btnSi.UseSelectable = true;
            this.btnSi.Click += new System.EventHandler(this.btnSi_Click);
            // 
            // lblPregunta
            // 
            this.lblPregunta.AutoSize = true;
            this.lblPregunta.Location = new System.Drawing.Point(98, 65);
            this.lblPregunta.Name = "lblPregunta";
            this.lblPregunta.Size = new System.Drawing.Size(281, 19);
            this.lblPregunta.TabIndex = 3;
            this.lblPregunta.Text = "¿Está seguro que desea eliminar el empleado?";
            // 
            // EmpleadoBaja
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(529, 186);
            this.Controls.Add(this.btnNo);
            this.Controls.Add(this.btnSi);
            this.Controls.Add(this.lblPregunta);
            this.Name = "EmpleadoBaja";
            this.Text = "EmpleadoBaja";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private MetroButton btnNo;
        private MetroButton btnSi;
        private MetroLabel lblPregunta;
    }
}