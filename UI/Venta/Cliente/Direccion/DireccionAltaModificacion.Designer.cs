
using System.ComponentModel;
using MetroFramework.Controls;

namespace UI
{
    partial class DireccionAltaModificacion
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
            this.lblPais = new MetroFramework.Controls.MetroLabel();
            this.lblProvincia = new MetroFramework.Controls.MetroLabel();
            this.txtCalle = new MetroFramework.Controls.MetroTextBox();
            this.txtProvincia = new MetroFramework.Controls.MetroTextBox();
            this.lblNombre = new MetroFramework.Controls.MetroLabel();
            this.lblLocalidad = new MetroFramework.Controls.MetroLabel();
            this.txtLocalidad = new MetroFramework.Controls.MetroTextBox();
            this.txtPais = new MetroFramework.Controls.MetroTextBox();
            this.btnAccion = new MetroFramework.Controls.MetroButton();
            this.txtCodigoPostal = new MetroFramework.Controls.MetroTextBox();
            this.lblCodigoPostal = new MetroFramework.Controls.MetroLabel();
            this.SuspendLayout();
            // 
            // lblPais
            // 
            this.lblPais.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lblPais.Location = new System.Drawing.Point(13, 154);
            this.lblPais.Name = "lblPais";
            this.lblPais.Size = new System.Drawing.Size(137, 19);
            this.lblPais.TabIndex = 43;
            this.lblPais.Tag = "country";
            this.lblPais.Text = "Pais";
            this.lblPais.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.lblPais.WrapToLine = true;
            // 
            // lblProvincia
            // 
            this.lblProvincia.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lblProvincia.Location = new System.Drawing.Point(13, 124);
            this.lblProvincia.Name = "lblProvincia";
            this.lblProvincia.Size = new System.Drawing.Size(137, 19);
            this.lblProvincia.TabIndex = 41;
            this.lblProvincia.Tag = "state";
            this.lblProvincia.Text = "Provincia";
            this.lblProvincia.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.lblProvincia.WrapToLine = true;
            // 
            // txtCalle
            // 
            this.txtCalle.Anchor = System.Windows.Forms.AnchorStyles.None;
            // 
            // 
            // 
            this.txtCalle.CustomButton.Image = null;
            this.txtCalle.CustomButton.Location = new System.Drawing.Point(177, 1);
            this.txtCalle.CustomButton.Margin = new System.Windows.Forms.Padding(4);
            this.txtCalle.CustomButton.Name = "";
            this.txtCalle.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.txtCalle.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.txtCalle.CustomButton.TabIndex = 1;
            this.txtCalle.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.txtCalle.CustomButton.UseSelectable = true;
            this.txtCalle.CustomButton.Visible = false;
            this.txtCalle.Lines = new string[0];
            this.txtCalle.Location = new System.Drawing.Point(156, 66);
            this.txtCalle.MaxLength = 32767;
            this.txtCalle.Name = "txtCalle";
            this.txtCalle.PasswordChar = '\0';
            this.txtCalle.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.txtCalle.SelectedText = "";
            this.txtCalle.SelectionLength = 0;
            this.txtCalle.SelectionStart = 0;
            this.txtCalle.ShortcutsEnabled = true;
            this.txtCalle.Size = new System.Drawing.Size(199, 23);
            this.txtCalle.TabIndex = 36;
            this.txtCalle.UseSelectable = true;
            this.txtCalle.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.txtCalle.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            // 
            // txtProvincia
            // 
            this.txtProvincia.Anchor = System.Windows.Forms.AnchorStyles.None;
            // 
            // 
            // 
            this.txtProvincia.CustomButton.Image = null;
            this.txtProvincia.CustomButton.Location = new System.Drawing.Point(177, 1);
            this.txtProvincia.CustomButton.Margin = new System.Windows.Forms.Padding(4);
            this.txtProvincia.CustomButton.Name = "";
            this.txtProvincia.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.txtProvincia.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.txtProvincia.CustomButton.TabIndex = 1;
            this.txtProvincia.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.txtProvincia.CustomButton.UseSelectable = true;
            this.txtProvincia.CustomButton.Visible = false;
            this.txtProvincia.Lines = new string[0];
            this.txtProvincia.Location = new System.Drawing.Point(156, 124);
            this.txtProvincia.MaxLength = 32767;
            this.txtProvincia.Name = "txtProvincia";
            this.txtProvincia.PasswordChar = '\0';
            this.txtProvincia.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.txtProvincia.SelectedText = "";
            this.txtProvincia.SelectionLength = 0;
            this.txtProvincia.SelectionStart = 0;
            this.txtProvincia.ShortcutsEnabled = true;
            this.txtProvincia.Size = new System.Drawing.Size(199, 23);
            this.txtProvincia.TabIndex = 40;
            this.txtProvincia.UseSelectable = true;
            this.txtProvincia.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.txtProvincia.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            // 
            // lblNombre
            // 
            this.lblNombre.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lblNombre.Location = new System.Drawing.Point(13, 66);
            this.lblNombre.Name = "lblNombre";
            this.lblNombre.Size = new System.Drawing.Size(137, 19);
            this.lblNombre.TabIndex = 37;
            this.lblNombre.Tag = "street";
            this.lblNombre.Text = "Calle";
            this.lblNombre.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.lblNombre.WrapToLine = true;
            // 
            // lblLocalidad
            // 
            this.lblLocalidad.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lblLocalidad.Location = new System.Drawing.Point(13, 95);
            this.lblLocalidad.Name = "lblLocalidad";
            this.lblLocalidad.Size = new System.Drawing.Size(137, 19);
            this.lblLocalidad.TabIndex = 39;
            this.lblLocalidad.Tag = "city";
            this.lblLocalidad.Text = "Localidad";
            this.lblLocalidad.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.lblLocalidad.WrapToLine = true;
            // 
            // txtLocalidad
            // 
            this.txtLocalidad.Anchor = System.Windows.Forms.AnchorStyles.None;
            // 
            // 
            // 
            this.txtLocalidad.CustomButton.Image = null;
            this.txtLocalidad.CustomButton.Location = new System.Drawing.Point(177, 1);
            this.txtLocalidad.CustomButton.Margin = new System.Windows.Forms.Padding(4);
            this.txtLocalidad.CustomButton.Name = "";
            this.txtLocalidad.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.txtLocalidad.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.txtLocalidad.CustomButton.TabIndex = 1;
            this.txtLocalidad.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.txtLocalidad.CustomButton.UseSelectable = true;
            this.txtLocalidad.CustomButton.Visible = false;
            this.txtLocalidad.Lines = new string[0];
            this.txtLocalidad.Location = new System.Drawing.Point(156, 95);
            this.txtLocalidad.MaxLength = 32767;
            this.txtLocalidad.Name = "txtLocalidad";
            this.txtLocalidad.PasswordChar = '\0';
            this.txtLocalidad.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.txtLocalidad.SelectedText = "";
            this.txtLocalidad.SelectionLength = 0;
            this.txtLocalidad.SelectionStart = 0;
            this.txtLocalidad.ShortcutsEnabled = true;
            this.txtLocalidad.Size = new System.Drawing.Size(199, 23);
            this.txtLocalidad.TabIndex = 38;
            this.txtLocalidad.UseSelectable = true;
            this.txtLocalidad.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.txtLocalidad.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            // 
            // txtPais
            // 
            this.txtPais.Anchor = System.Windows.Forms.AnchorStyles.None;
            // 
            // 
            // 
            this.txtPais.CustomButton.Image = null;
            this.txtPais.CustomButton.Location = new System.Drawing.Point(177, 1);
            this.txtPais.CustomButton.Margin = new System.Windows.Forms.Padding(4);
            this.txtPais.CustomButton.Name = "";
            this.txtPais.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.txtPais.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.txtPais.CustomButton.TabIndex = 1;
            this.txtPais.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.txtPais.CustomButton.UseSelectable = true;
            this.txtPais.CustomButton.Visible = false;
            this.txtPais.Lines = new string[0];
            this.txtPais.Location = new System.Drawing.Point(156, 153);
            this.txtPais.MaxLength = 32767;
            this.txtPais.Name = "txtPais";
            this.txtPais.PasswordChar = '\0';
            this.txtPais.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.txtPais.SelectedText = "";
            this.txtPais.SelectionLength = 0;
            this.txtPais.SelectionStart = 0;
            this.txtPais.ShortcutsEnabled = true;
            this.txtPais.Size = new System.Drawing.Size(199, 23);
            this.txtPais.TabIndex = 44;
            this.txtPais.UseSelectable = true;
            this.txtPais.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.txtPais.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            // 
            // btnAccion
            // 
            this.btnAccion.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnAccion.Location = new System.Drawing.Point(271, 233);
            this.btnAccion.Name = "btnAccion";
            this.btnAccion.Size = new System.Drawing.Size(84, 23);
            this.btnAccion.TabIndex = 45;
            this.btnAccion.Tag = "create";
            this.btnAccion.Text = "Crear";
            this.btnAccion.UseSelectable = true;
            this.btnAccion.Click += new System.EventHandler(this.BtnAccion_Click);
            // 
            // txtCodigoPostal
            // 
            this.txtCodigoPostal.Anchor = System.Windows.Forms.AnchorStyles.None;
            // 
            // 
            // 
            this.txtCodigoPostal.CustomButton.Image = null;
            this.txtCodigoPostal.CustomButton.Location = new System.Drawing.Point(177, 1);
            this.txtCodigoPostal.CustomButton.Margin = new System.Windows.Forms.Padding(4);
            this.txtCodigoPostal.CustomButton.Name = "";
            this.txtCodigoPostal.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.txtCodigoPostal.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.txtCodigoPostal.CustomButton.TabIndex = 1;
            this.txtCodigoPostal.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.txtCodigoPostal.CustomButton.UseSelectable = true;
            this.txtCodigoPostal.CustomButton.Visible = false;
            this.txtCodigoPostal.Lines = new string[0];
            this.txtCodigoPostal.Location = new System.Drawing.Point(156, 182);
            this.txtCodigoPostal.MaxLength = 32767;
            this.txtCodigoPostal.Name = "txtCodigoPostal";
            this.txtCodigoPostal.PasswordChar = '\0';
            this.txtCodigoPostal.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.txtCodigoPostal.SelectedText = "";
            this.txtCodigoPostal.SelectionLength = 0;
            this.txtCodigoPostal.SelectionStart = 0;
            this.txtCodigoPostal.ShortcutsEnabled = true;
            this.txtCodigoPostal.Size = new System.Drawing.Size(199, 23);
            this.txtCodigoPostal.TabIndex = 47;
            this.txtCodigoPostal.UseSelectable = true;
            this.txtCodigoPostal.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.txtCodigoPostal.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            // 
            // lblCodigoPostal
            // 
            this.lblCodigoPostal.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lblCodigoPostal.Location = new System.Drawing.Point(13, 183);
            this.lblCodigoPostal.Name = "lblCodigoPostal";
            this.lblCodigoPostal.Size = new System.Drawing.Size(137, 19);
            this.lblCodigoPostal.TabIndex = 46;
            this.lblCodigoPostal.Tag = "zipcode";
            this.lblCodigoPostal.Text = "Codigo Postal";
            this.lblCodigoPostal.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.lblCodigoPostal.WrapToLine = true;
            // 
            // DireccionAltaModificacion
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.ClientSize = new System.Drawing.Size(378, 289);
            this.Controls.Add(this.txtCodigoPostal);
            this.Controls.Add(this.lblCodigoPostal);
            this.Controls.Add(this.btnAccion);
            this.Controls.Add(this.txtPais);
            this.Controls.Add(this.lblPais);
            this.Controls.Add(this.lblProvincia);
            this.Controls.Add(this.txtCalle);
            this.Controls.Add(this.txtProvincia);
            this.Controls.Add(this.lblNombre);
            this.Controls.Add(this.lblLocalidad);
            this.Controls.Add(this.txtLocalidad);
            this.Name = "DireccionAltaModificacion";
            this.Text = "Crear Direccion";
            this.Load += new System.EventHandler(this.ProveedorCrear_Load);
            this.ResumeLayout(false);

        }

        #endregion
        private MetroLabel lblPais;
        private MetroLabel lblProvincia;
        private MetroTextBox txtCalle;
        private MetroTextBox txtProvincia;
        private MetroLabel lblNombre;
        private MetroLabel lblLocalidad;
        private MetroTextBox txtLocalidad;
        private MetroTextBox txtPais;
        private MetroButton btnAccion;
        private MetroTextBox txtCodigoPostal;
        private MetroLabel lblCodigoPostal;
    }
}