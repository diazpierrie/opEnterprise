using System.ComponentModel;
using MetroFramework.Controls;

namespace UI.Sucursal
{
    partial class SucursalAltaModificacion
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
            this.txtNombre = new MetroFramework.Controls.MetroTextBox();
            this.lblNombre = new MetroFramework.Controls.MetroLabel();
            this.lblDireccion = new MetroFramework.Controls.MetroLabel();
            this.txtDireccion = new MetroFramework.Controls.MetroTextBox();
            this.txtCodigoPostal = new MetroFramework.Controls.MetroTextBox();
            this.lblCodigoPostal = new MetroFramework.Controls.MetroLabel();
            this.SuspendLayout();
            // 
            // txtTelefono
            // 
            this.txtTelefono.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
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
            this.txtTelefono.Location = new System.Drawing.Point(166, 150);
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
            this.lblTelefono.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblTelefono.Location = new System.Drawing.Point(23, 151);
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
            this.btnAccion.Location = new System.Drawing.Point(271, 208);
            this.btnAccion.Name = "btnAccion";
            this.btnAccion.Size = new System.Drawing.Size(84, 23);
            this.btnAccion.TabIndex = 56;
            this.btnAccion.Text = "Crear";
            this.btnAccion.UseSelectable = true;
            this.btnAccion.Click += new System.EventHandler(this.BtnAccion_Click);
            // 
            // txtMail
            // 
            this.txtMail.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
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
            this.txtMail.Location = new System.Drawing.Point(166, 121);
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
            this.lblMail.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblMail.Location = new System.Drawing.Point(23, 122);
            this.lblMail.Name = "lblMail";
            this.lblMail.Size = new System.Drawing.Size(127, 19);
            this.lblMail.TabIndex = 54;
            this.lblMail.Tag = "mail";
            this.lblMail.Text = "Mail";
            this.lblMail.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.lblMail.WrapToLine = true;
            // 
            // txtNombre
            // 
            this.txtNombre.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
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
            // lblNombre
            // 
            this.lblNombre.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblNombre.Location = new System.Drawing.Point(23, 63);
            this.lblNombre.Name = "lblNombre";
            this.lblNombre.Size = new System.Drawing.Size(127, 19);
            this.lblNombre.TabIndex = 49;
            this.lblNombre.Tag = "name";
            this.lblNombre.Text = "Nombre";
            this.lblNombre.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.lblNombre.WrapToLine = true;
            // 
            // lblDireccion
            // 
            this.lblDireccion.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblDireccion.Location = new System.Drawing.Point(23, 92);
            this.lblDireccion.Name = "lblDireccion";
            this.lblDireccion.Size = new System.Drawing.Size(127, 19);
            this.lblDireccion.TabIndex = 51;
            this.lblDireccion.Tag = "address";
            this.lblDireccion.Text = "Direccion";
            this.lblDireccion.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.lblDireccion.WrapToLine = true;
            // 
            // txtDireccion
            // 
            this.txtDireccion.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            // 
            // 
            // 
            this.txtDireccion.CustomButton.Image = null;
            this.txtDireccion.CustomButton.Location = new System.Drawing.Point(167, 1);
            this.txtDireccion.CustomButton.Margin = new System.Windows.Forms.Padding(4);
            this.txtDireccion.CustomButton.Name = "";
            this.txtDireccion.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.txtDireccion.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.txtDireccion.CustomButton.TabIndex = 1;
            this.txtDireccion.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.txtDireccion.CustomButton.UseSelectable = true;
            this.txtDireccion.CustomButton.Visible = false;
            this.txtDireccion.Lines = new string[0];
            this.txtDireccion.Location = new System.Drawing.Point(166, 92);
            this.txtDireccion.MaxLength = 32767;
            this.txtDireccion.Name = "txtDireccion";
            this.txtDireccion.PasswordChar = '\0';
            this.txtDireccion.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.txtDireccion.SelectedText = "";
            this.txtDireccion.SelectionLength = 0;
            this.txtDireccion.SelectionStart = 0;
            this.txtDireccion.ShortcutsEnabled = true;
            this.txtDireccion.Size = new System.Drawing.Size(189, 23);
            this.txtDireccion.TabIndex = 50;
            this.txtDireccion.UseSelectable = true;
            this.txtDireccion.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.txtDireccion.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            // 
            // txtCodigoPostal
            // 
            this.txtCodigoPostal.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            // 
            // 
            // 
            this.txtCodigoPostal.CustomButton.Image = null;
            this.txtCodigoPostal.CustomButton.Location = new System.Drawing.Point(167, 1);
            this.txtCodigoPostal.CustomButton.Margin = new System.Windows.Forms.Padding(4);
            this.txtCodigoPostal.CustomButton.Name = "";
            this.txtCodigoPostal.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.txtCodigoPostal.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.txtCodigoPostal.CustomButton.TabIndex = 1;
            this.txtCodigoPostal.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.txtCodigoPostal.CustomButton.UseSelectable = true;
            this.txtCodigoPostal.CustomButton.Visible = false;
            this.txtCodigoPostal.Lines = new string[0];
            this.txtCodigoPostal.Location = new System.Drawing.Point(166, 179);
            this.txtCodigoPostal.MaxLength = 32767;
            this.txtCodigoPostal.Name = "txtCodigoPostal";
            this.txtCodigoPostal.PasswordChar = '\0';
            this.txtCodigoPostal.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.txtCodigoPostal.SelectedText = "";
            this.txtCodigoPostal.SelectionLength = 0;
            this.txtCodigoPostal.SelectionStart = 0;
            this.txtCodigoPostal.ShortcutsEnabled = true;
            this.txtCodigoPostal.Size = new System.Drawing.Size(189, 23);
            this.txtCodigoPostal.TabIndex = 59;
            this.txtCodigoPostal.UseSelectable = true;
            this.txtCodigoPostal.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.txtCodigoPostal.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            // 
            // lblCodigoPostal
            // 
            this.lblCodigoPostal.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblCodigoPostal.Location = new System.Drawing.Point(23, 179);
            this.lblCodigoPostal.Name = "lblCodigoPostal";
            this.lblCodigoPostal.Size = new System.Drawing.Size(127, 19);
            this.lblCodigoPostal.TabIndex = 60;
            this.lblCodigoPostal.Tag = "zipcode";
            this.lblCodigoPostal.Text = "Codigo Postal";
            this.lblCodigoPostal.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.lblCodigoPostal.WrapToLine = true;
            // 
            // SucursalAltaModificacion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(408, 251);
            this.Controls.Add(this.txtCodigoPostal);
            this.Controls.Add(this.lblCodigoPostal);
            this.Controls.Add(this.txtTelefono);
            this.Controls.Add(this.lblTelefono);
            this.Controls.Add(this.btnAccion);
            this.Controls.Add(this.txtMail);
            this.Controls.Add(this.lblMail);
            this.Controls.Add(this.txtNombre);
            this.Controls.Add(this.lblNombre);
            this.Controls.Add(this.lblDireccion);
            this.Controls.Add(this.txtDireccion);
            this.Name = "SucursalAltaModificacion";
            this.Text = "SucursalAltaModificacion";
            this.Load += new System.EventHandler(this.EmpleadoAltaModificacion_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private MetroTextBox txtTelefono;
        private MetroLabel lblTelefono;
        private MetroButton btnAccion;
        private MetroTextBox txtMail;
        private MetroLabel lblMail;
        private MetroTextBox txtNombre;
        private MetroLabel lblNombre;
        private MetroLabel lblDireccion;
        private MetroTextBox txtDireccion;
        private MetroTextBox txtCodigoPostal;
        private MetroLabel lblCodigoPostal;
    }
}