
using System.ComponentModel;
using MetroFramework.Controls;

namespace UI
{
    partial class EdificioConfigurar
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
            this.cbTipoEdificio = new MetroFramework.Controls.MetroComboBox();
            this.cbEdificio = new MetroFramework.Controls.MetroComboBox();
            this.metroLabel1 = new MetroFramework.Controls.MetroLabel();
            this.metroLabel2 = new MetroFramework.Controls.MetroLabel();
            this.btnConfigurar = new MetroFramework.Controls.MetroButton();
            this.btnCerrar = new MetroFramework.Controls.MetroButton();
            this.SuspendLayout();
            // 
            // cbTipoEdificio
            // 
            this.cbTipoEdificio.FormattingEnabled = true;
            this.cbTipoEdificio.ItemHeight = 23;
            this.cbTipoEdificio.Location = new System.Drawing.Point(158, 90);
            this.cbTipoEdificio.Name = "cbTipoEdificio";
            this.cbTipoEdificio.Size = new System.Drawing.Size(219, 29);
            this.cbTipoEdificio.TabIndex = 0;
            this.cbTipoEdificio.UseSelectable = true;
            this.cbTipoEdificio.SelectedIndexChanged += new System.EventHandler(this.cbTipoEdificio_SelectedIndexChanged);
            // 
            // cbEdificio
            // 
            this.cbEdificio.FormattingEnabled = true;
            this.cbEdificio.ItemHeight = 23;
            this.cbEdificio.Location = new System.Drawing.Point(158, 139);
            this.cbEdificio.Name = "cbEdificio";
            this.cbEdificio.Size = new System.Drawing.Size(219, 29);
            this.cbEdificio.TabIndex = 1;
            this.cbEdificio.UseSelectable = true;
            // 
            // metroLabel1
            // 
            this.metroLabel1.AutoSize = true;
            this.metroLabel1.Location = new System.Drawing.Point(71, 93);
            this.metroLabel1.Name = "metroLabel1";
            this.metroLabel1.Size = new System.Drawing.Size(81, 19);
            this.metroLabel1.TabIndex = 2;
            this.metroLabel1.Text = "Tipo Edificio";
            // 
            // metroLabel2
            // 
            this.metroLabel2.AutoSize = true;
            this.metroLabel2.Location = new System.Drawing.Point(101, 144);
            this.metroLabel2.Name = "metroLabel2";
            this.metroLabel2.Size = new System.Drawing.Size(51, 19);
            this.metroLabel2.TabIndex = 3;
            this.metroLabel2.Text = "Edificio";
            // 
            // btnConfigurar
            // 
            this.btnConfigurar.Location = new System.Drawing.Point(301, 175);
            this.btnConfigurar.Name = "btnConfigurar";
            this.btnConfigurar.Size = new System.Drawing.Size(75, 23);
            this.btnConfigurar.TabIndex = 4;
            this.btnConfigurar.Tag = "setUp";
            this.btnConfigurar.Text = "Configurar";
            this.btnConfigurar.UseSelectable = true;
            this.btnConfigurar.Click += new System.EventHandler(this.btnConfigurar_Click);
            // 
            // btnCerrar
            // 
            this.btnCerrar.Location = new System.Drawing.Point(220, 174);
            this.btnCerrar.Name = "btnCerrar";
            this.btnCerrar.Size = new System.Drawing.Size(75, 23);
            this.btnCerrar.TabIndex = 5;
            this.btnCerrar.Tag = "close";
            this.btnCerrar.Text = "Cerrar";
            this.btnCerrar.UseSelectable = true;
            this.btnCerrar.Click += new System.EventHandler(this.btnCerrar_Click);
            // 
            // ConfigurarEdificio
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(441, 229);
            this.Controls.Add(this.btnCerrar);
            this.Controls.Add(this.btnConfigurar);
            this.Controls.Add(this.metroLabel2);
            this.Controls.Add(this.metroLabel1);
            this.Controls.Add(this.cbEdificio);
            this.Controls.Add(this.cbTipoEdificio);
            this.Name = "EdificioConfigurar";
            this.Text = "Configurar Edificio";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private MetroComboBox cbTipoEdificio;
        private MetroComboBox cbEdificio;
        private MetroLabel metroLabel1;
        private MetroLabel metroLabel2;
        private MetroButton btnConfigurar;
        private MetroButton btnCerrar;
    }
}