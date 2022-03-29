
using System.ComponentModel;
using MetroFramework.Controls;

namespace UI
{
    partial class EmpleadoAltaModificacion
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
            this.txtTelefono = new MetroFramework.Controls.MetroTextBox();
            this.lblTelefono = new MetroFramework.Controls.MetroLabel();
            this.btnAccion = new MetroFramework.Controls.MetroButton();
            this.txtMail = new MetroFramework.Controls.MetroTextBox();
            this.lblMail = new MetroFramework.Controls.MetroLabel();
            this.lblDNI = new MetroFramework.Controls.MetroLabel();
            this.txtNombre = new MetroFramework.Controls.MetroTextBox();
            this.txtDNI = new MetroFramework.Controls.MetroTextBox();
            this.lblNombre = new MetroFramework.Controls.MetroLabel();
            this.lblApellido = new MetroFramework.Controls.MetroLabel();
            this.txtApellido = new MetroFramework.Controls.MetroTextBox();
            this.txtUsername = new MetroFramework.Controls.MetroTextBox();
            this.lblUsername = new MetroFramework.Controls.MetroLabel();
            this.cbRol = new MetroFramework.Controls.MetroComboBox();
            this.lblRol = new MetroFramework.Controls.MetroLabel();
            this.SuspendLayout();
            // 
            // txtTelefono
            // 
            this.txtTelefono.Anchor = System.Windows.Forms.AnchorStyles.None;
            // 
            // 
            // 
            this.txtTelefono.CustomButton.Image = null;
            this.txtTelefono.CustomButton.Location = new System.Drawing.Point(167, 1);
            this.txtTelefono.CustomButton.Margin = new System.Windows.Forms.Padding(4);
            this.txtTelefono.CustomButton.Name = "";
            this.txtTelefono.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.txtTelefono.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.txtTelefono.CustomButton.TabIndex = 1;
            this.txtTelefono.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.txtTelefono.CustomButton.UseSelectable = true;
            this.txtTelefono.CustomButton.Visible = false;
            this.txtTelefono.Lines = new string[0];
            this.txtTelefono.Location = new System.Drawing.Point(166, 179);
            this.txtTelefono.MaxLength = 32767;
            this.txtTelefono.Name = "txtTelefono";
            this.txtTelefono.PasswordChar = '\0';
            this.txtTelefono.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.txtTelefono.SelectedText = "";
            this.txtTelefono.SelectionLength = 0;
            this.txtTelefono.SelectionStart = 0;
            this.txtTelefono.ShortcutsEnabled = true;
            this.txtTelefono.Size = new System.Drawing.Size(189, 23);
            this.txtTelefono.TabIndex = 58;
            this.txtTelefono.UseSelectable = true;
            this.txtTelefono.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.txtTelefono.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            // 
            // lblTelefono
            // 
            this.lblTelefono.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lblTelefono.Location = new System.Drawing.Point(23, 180);
            this.lblTelefono.Name = "lblTelefono";
            this.lblTelefono.Size = new System.Drawing.Size(127, 19);
            this.lblTelefono.TabIndex = 57;
            this.lblTelefono.Tag = "telephone";
            this.lblTelefono.Text = "Telefono";
            this.lblTelefono.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.lblTelefono.WrapToLine = true;
            // 
            // btnAccion
            // 
            this.btnAccion.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnAccion.Location = new System.Drawing.Point(271, 275);
            this.btnAccion.Name = "btnAccion";
            this.btnAccion.Size = new System.Drawing.Size(84, 23);
            this.btnAccion.TabIndex = 56;
            this.btnAccion.Text = "Crear";
            this.btnAccion.UseSelectable = true;
            this.btnAccion.Click += new System.EventHandler(this.BtnAccion_Click);
            // 
            // txtMail
            // 
            this.txtMail.Anchor = System.Windows.Forms.AnchorStyles.None;
            // 
            // 
            // 
            this.txtMail.CustomButton.Image = null;
            this.txtMail.CustomButton.Location = new System.Drawing.Point(167, 1);
            this.txtMail.CustomButton.Margin = new System.Windows.Forms.Padding(4);
            this.txtMail.CustomButton.Name = "";
            this.txtMail.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.txtMail.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.txtMail.CustomButton.TabIndex = 1;
            this.txtMail.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.txtMail.CustomButton.UseSelectable = true;
            this.txtMail.CustomButton.Visible = false;
            this.txtMail.Lines = new string[0];
            this.txtMail.Location = new System.Drawing.Point(166, 150);
            this.txtMail.MaxLength = 32767;
            this.txtMail.Name = "txtMail";
            this.txtMail.PasswordChar = '\0';
            this.txtMail.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.txtMail.SelectedText = "";
            this.txtMail.SelectionLength = 0;
            this.txtMail.SelectionStart = 0;
            this.txtMail.ShortcutsEnabled = true;
            this.txtMail.Size = new System.Drawing.Size(189, 23);
            this.txtMail.TabIndex = 55;
            this.txtMail.UseSelectable = true;
            this.txtMail.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.txtMail.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            // 
            // lblMail
            // 
            this.lblMail.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lblMail.Location = new System.Drawing.Point(23, 151);
            this.lblMail.Name = "lblMail";
            this.lblMail.Size = new System.Drawing.Size(127, 19);
            this.lblMail.TabIndex = 54;
            this.lblMail.Tag = "mail";
            this.lblMail.Text = "Mail";
            this.lblMail.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.lblMail.WrapToLine = true;
            // 
            // lblDNI
            // 
            this.lblDNI.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lblDNI.Location = new System.Drawing.Point(23, 121);
            this.lblDNI.Name = "lblDNI";
            this.lblDNI.Size = new System.Drawing.Size(127, 19);
            this.lblDNI.TabIndex = 53;
            this.lblDNI.Tag = "dni";
            this.lblDNI.Text = "DNI";
            this.lblDNI.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.lblDNI.WrapToLine = true;
            // 
            // txtNombre
            // 
            this.txtNombre.Anchor = System.Windows.Forms.AnchorStyles.None;
            // 
            // 
            // 
            this.txtNombre.CustomButton.Image = null;
            this.txtNombre.CustomButton.Location = new System.Drawing.Point(167, 1);
            this.txtNombre.CustomButton.Margin = new System.Windows.Forms.Padding(4);
            this.txtNombre.CustomButton.Name = "";
            this.txtNombre.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.txtNombre.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.txtNombre.CustomButton.TabIndex = 1;
            this.txtNombre.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.txtNombre.CustomButton.UseSelectable = true;
            this.txtNombre.CustomButton.Visible = false;
            this.txtNombre.Lines = new string[0];
            this.txtNombre.Location = new System.Drawing.Point(166, 63);
            this.txtNombre.MaxLength = 32767;
            this.txtNombre.Name = "txtNombre";
            this.txtNombre.PasswordChar = '\0';
            this.txtNombre.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.txtNombre.SelectedText = "";
            this.txtNombre.SelectionLength = 0;
            this.txtNombre.SelectionStart = 0;
            this.txtNombre.ShortcutsEnabled = true;
            this.txtNombre.Size = new System.Drawing.Size(189, 23);
            this.txtNombre.TabIndex = 48;
            this.txtNombre.UseSelectable = true;
            this.txtNombre.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.txtNombre.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            // 
            // txtDNI
            // 
            this.txtDNI.Anchor = System.Windows.Forms.AnchorStyles.None;
            // 
            // 
            // 
            this.txtDNI.CustomButton.Image = null;
            this.txtDNI.CustomButton.Location = new System.Drawing.Point(167, 1);
            this.txtDNI.CustomButton.Margin = new System.Windows.Forms.Padding(4);
            this.txtDNI.CustomButton.Name = "";
            this.txtDNI.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.txtDNI.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.txtDNI.CustomButton.TabIndex = 1;
            this.txtDNI.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.txtDNI.CustomButton.UseSelectable = true;
            this.txtDNI.CustomButton.Visible = false;
            this.txtDNI.Lines = new string[0];
            this.txtDNI.Location = new System.Drawing.Point(166, 121);
            this.txtDNI.MaxLength = 32767;
            this.txtDNI.Name = "txtDNI";
            this.txtDNI.PasswordChar = '\0';
            this.txtDNI.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.txtDNI.SelectedText = "";
            this.txtDNI.SelectionLength = 0;
            this.txtDNI.SelectionStart = 0;
            this.txtDNI.ShortcutsEnabled = true;
            this.txtDNI.Size = new System.Drawing.Size(189, 23);
            this.txtDNI.TabIndex = 52;
            this.txtDNI.UseSelectable = true;
            this.txtDNI.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.txtDNI.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            // 
            // lblNombre
            // 
            this.lblNombre.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lblNombre.Location = new System.Drawing.Point(23, 63);
            this.lblNombre.Name = "lblNombre";
            this.lblNombre.Size = new System.Drawing.Size(127, 19);
            this.lblNombre.TabIndex = 49;
            this.lblNombre.Tag = "name";
            this.lblNombre.Text = "Nombre";
            this.lblNombre.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.lblNombre.WrapToLine = true;
            // 
            // lblApellido
            // 
            this.lblApellido.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lblApellido.Location = new System.Drawing.Point(23, 92);
            this.lblApellido.Name = "lblApellido";
            this.lblApellido.Size = new System.Drawing.Size(127, 19);
            this.lblApellido.TabIndex = 51;
            this.lblApellido.Tag = "lastname";
            this.lblApellido.Text = "Apellido";
            this.lblApellido.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.lblApellido.WrapToLine = true;
            // 
            // txtApellido
            // 
            this.txtApellido.Anchor = System.Windows.Forms.AnchorStyles.None;
            // 
            // 
            // 
            this.txtApellido.CustomButton.Image = null;
            this.txtApellido.CustomButton.Location = new System.Drawing.Point(167, 1);
            this.txtApellido.CustomButton.Margin = new System.Windows.Forms.Padding(4);
            this.txtApellido.CustomButton.Name = "";
            this.txtApellido.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.txtApellido.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.txtApellido.CustomButton.TabIndex = 1;
            this.txtApellido.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.txtApellido.CustomButton.UseSelectable = true;
            this.txtApellido.CustomButton.Visible = false;
            this.txtApellido.Lines = new string[0];
            this.txtApellido.Location = new System.Drawing.Point(166, 92);
            this.txtApellido.MaxLength = 32767;
            this.txtApellido.Name = "txtApellido";
            this.txtApellido.PasswordChar = '\0';
            this.txtApellido.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.txtApellido.SelectedText = "";
            this.txtApellido.SelectionLength = 0;
            this.txtApellido.SelectionStart = 0;
            this.txtApellido.ShortcutsEnabled = true;
            this.txtApellido.Size = new System.Drawing.Size(189, 23);
            this.txtApellido.TabIndex = 50;
            this.txtApellido.UseSelectable = true;
            this.txtApellido.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.txtApellido.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            // 
            // txtUsername
            // 
            this.txtUsername.Anchor = System.Windows.Forms.AnchorStyles.None;
            // 
            // 
            // 
            this.txtUsername.CustomButton.Image = null;
            this.txtUsername.CustomButton.Location = new System.Drawing.Point(167, 1);
            this.txtUsername.CustomButton.Margin = new System.Windows.Forms.Padding(4);
            this.txtUsername.CustomButton.Name = "";
            this.txtUsername.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.txtUsername.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.txtUsername.CustomButton.TabIndex = 1;
            this.txtUsername.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.txtUsername.CustomButton.UseSelectable = true;
            this.txtUsername.CustomButton.Visible = false;
            this.txtUsername.Lines = new string[0];
            this.txtUsername.Location = new System.Drawing.Point(166, 210);
            this.txtUsername.MaxLength = 32767;
            this.txtUsername.Name = "txtUsername";
            this.txtUsername.PasswordChar = '\0';
            this.txtUsername.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.txtUsername.SelectedText = "";
            this.txtUsername.SelectionLength = 0;
            this.txtUsername.SelectionStart = 0;
            this.txtUsername.ShortcutsEnabled = true;
            this.txtUsername.Size = new System.Drawing.Size(189, 23);
            this.txtUsername.TabIndex = 59;
            this.txtUsername.UseSelectable = true;
            this.txtUsername.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.txtUsername.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            // 
            // lblUsername
            // 
            this.lblUsername.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lblUsername.Location = new System.Drawing.Point(23, 210);
            this.lblUsername.Name = "lblUsername";
            this.lblUsername.Size = new System.Drawing.Size(127, 19);
            this.lblUsername.TabIndex = 60;
            this.lblUsername.Tag = "username";
            this.lblUsername.Text = "Nombre de Usuario";
            this.lblUsername.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.lblUsername.WrapToLine = true;
            // 
            // cbRol
            // 
            this.cbRol.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.cbRol.FormattingEnabled = true;
            this.cbRol.ItemHeight = 23;
            this.cbRol.Location = new System.Drawing.Point(166, 240);
            this.cbRol.Name = "cbRol";
            this.cbRol.Size = new System.Drawing.Size(189, 29);
            this.cbRol.TabIndex = 61;
            this.cbRol.UseSelectable = true;
            // 
            // lblRol
            // 
            this.lblRol.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lblRol.Location = new System.Drawing.Point(94, 246);
            this.lblRol.Name = "lblRol";
            this.lblRol.Size = new System.Drawing.Size(56, 19);
            this.lblRol.TabIndex = 63;
            this.lblRol.Tag = "role";
            this.lblRol.Text = "Rol";
            this.lblRol.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // EmpleadoAltaModificacion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(408, 313);
            this.Controls.Add(this.lblRol);
            this.Controls.Add(this.cbRol);
            this.Controls.Add(this.txtUsername);
            this.Controls.Add(this.lblUsername);
            this.Controls.Add(this.txtTelefono);
            this.Controls.Add(this.lblTelefono);
            this.Controls.Add(this.btnAccion);
            this.Controls.Add(this.txtMail);
            this.Controls.Add(this.lblMail);
            this.Controls.Add(this.lblDNI);
            this.Controls.Add(this.txtNombre);
            this.Controls.Add(this.txtDNI);
            this.Controls.Add(this.lblNombre);
            this.Controls.Add(this.lblApellido);
            this.Controls.Add(this.txtApellido);
            this.Name = "EmpleadoAltaModificacion";
            this.Text = "EmpleadoAltaModificacion";
            this.Load += new System.EventHandler(this.EmpleadoAltaModificacion_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private MetroTextBox txtTelefono;
        private MetroLabel lblTelefono;
        private MetroButton btnAccion;
        private MetroTextBox txtMail;
        private MetroLabel lblMail;
        private MetroLabel lblDNI;
        private MetroTextBox txtNombre;
        private MetroTextBox txtDNI;
        private MetroLabel lblNombre;
        private MetroLabel lblApellido;
        private MetroTextBox txtApellido;
        private MetroTextBox txtUsername;
        private MetroLabel lblUsername;
        private MetroComboBox cbRol;
        private MetroLabel lblRol;
    }
}