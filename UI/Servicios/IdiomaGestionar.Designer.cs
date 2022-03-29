using System.ComponentModel;
using MetroFramework.Controls;

namespace UI
{
    partial class IdiomaGestionar
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
            this.cbLenguajes = new MetroFramework.Controls.MetroComboBox();
            this.btnAdd = new MetroFramework.Controls.MetroButton();
            this.Editar = new MetroFramework.Controls.MetroButton();
            this.btnDelete = new MetroFramework.Controls.MetroButton();
            this.SuspendLayout();
            // 
            // cbLenguajes
            // 
            this.cbLenguajes.FormattingEnabled = true;
            this.cbLenguajes.ItemHeight = 23;
            this.cbLenguajes.Location = new System.Drawing.Point(127, 91);
            this.cbLenguajes.Margin = new System.Windows.Forms.Padding(2);
            this.cbLenguajes.Name = "cbLenguajes";
            this.cbLenguajes.Size = new System.Drawing.Size(187, 29);
            this.cbLenguajes.TabIndex = 0;
            this.cbLenguajes.UseSelectable = true;
            // 
            // btnAdd
            // 
            this.btnAdd.Location = new System.Drawing.Point(133, 128);
            this.btnAdd.Margin = new System.Windows.Forms.Padding(2);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(52, 16);
            this.btnAdd.TabIndex = 1;
            this.btnAdd.Tag = "add";
            this.btnAdd.Text = "Agregar";
            this.btnAdd.UseSelectable = true;
            this.btnAdd.Click += new System.EventHandler(this.BtnAdd_Click);
            // 
            // Editar
            // 
            this.Editar.Location = new System.Drawing.Point(194, 128);
            this.Editar.Margin = new System.Windows.Forms.Padding(2);
            this.Editar.Name = "Editar";
            this.Editar.Size = new System.Drawing.Size(52, 16);
            this.Editar.TabIndex = 2;
            this.Editar.Tag = "edit";
            this.Editar.Text = "Editar";
            this.Editar.UseSelectable = true;
            this.Editar.Click += new System.EventHandler(this.Editar_Click);
            // 
            // btnDelete
            // 
            this.btnDelete.Location = new System.Drawing.Point(254, 128);
            this.btnDelete.Margin = new System.Windows.Forms.Padding(2);
            this.btnDelete.Name = "btnDelete";
            this.btnDelete.Size = new System.Drawing.Size(52, 16);
            this.btnDelete.TabIndex = 3;
            this.btnDelete.Tag = "delete";
            this.btnDelete.Text = "Borrar";
            this.btnDelete.UseSelectable = true;
            this.btnDelete.Click += new System.EventHandler(this.BtnDelete_Click);
            // 
            // IdiomaGestionar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(436, 244);
            this.Controls.Add(this.btnDelete);
            this.Controls.Add(this.Editar);
            this.Controls.Add(this.btnAdd);
            this.Controls.Add(this.cbLenguajes);
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "IdiomaGestionar";
            this.Padding = new System.Windows.Forms.Padding(11, 60, 11, 11);
            this.Tag = "language";
            this.Text = "Idioma";
            this.Load += new System.EventHandler(this.GestionarIdioma_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private MetroComboBox cbLenguajes;
        private MetroButton btnAdd;
        private MetroButton Editar;
        private MetroButton btnDelete;
    }
}