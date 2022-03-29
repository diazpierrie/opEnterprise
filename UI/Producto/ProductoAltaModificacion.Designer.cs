
using System.ComponentModel;
using MetroFramework.Controls;

namespace UI
{
    partial class ProductoAltaModificacion
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
            this.lblMail = new MetroFramework.Controls.MetroLabel();
            this.lblCodigoPostal = new MetroFramework.Controls.MetroLabel();
            this.txtNombre = new MetroFramework.Controls.MetroTextBox();
            this.txtPrecio = new MetroFramework.Controls.MetroTextBox();
            this.lblNombre = new MetroFramework.Controls.MetroLabel();
            this.lblCodigo = new MetroFramework.Controls.MetroLabel();
            this.txtCodigo = new MetroFramework.Controls.MetroTextBox();
            this.txtCosto = new MetroFramework.Controls.MetroTextBox();
            this.btnAccion = new MetroFramework.Controls.MetroButton();
            this.SuspendLayout();
            // 
            // lblMail
            // 
            this.lblMail.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lblMail.Location = new System.Drawing.Point(13, 154);
            this.lblMail.Name = "lblMail";
            this.lblMail.Size = new System.Drawing.Size(137, 19);
            this.lblMail.TabIndex = 43;
            this.lblMail.Tag = "cost";
            this.lblMail.Text = "Costo";
            this.lblMail.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.lblMail.WrapToLine = true;
            // 
            // lblCodigoPostal
            // 
            this.lblCodigoPostal.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lblCodigoPostal.Location = new System.Drawing.Point(13, 124);
            this.lblCodigoPostal.Name = "lblCodigoPostal";
            this.lblCodigoPostal.Size = new System.Drawing.Size(137, 19);
            this.lblCodigoPostal.TabIndex = 41;
            this.lblCodigoPostal.Tag = "price";
            this.lblCodigoPostal.Text = "Precio";
            this.lblCodigoPostal.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.lblCodigoPostal.WrapToLine = true;
            // 
            // txtNombre
            // 
            this.txtNombre.Anchor = System.Windows.Forms.AnchorStyles.None;
            // 
            // 
            // 
            this.txtNombre.CustomButton.Image = null;
            this.txtNombre.CustomButton.Location = new System.Drawing.Point(177, 1);
            this.txtNombre.CustomButton.Margin = new System.Windows.Forms.Padding(4);
            this.txtNombre.CustomButton.Name = "";
            this.txtNombre.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.txtNombre.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.txtNombre.CustomButton.TabIndex = 1;
            this.txtNombre.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.txtNombre.CustomButton.UseSelectable = true;
            this.txtNombre.CustomButton.Visible = false;
            this.txtNombre.Lines = new string[0];
            this.txtNombre.Location = new System.Drawing.Point(156, 66);
            this.txtNombre.MaxLength = 32767;
            this.txtNombre.Name = "txtNombre";
            this.txtNombre.PasswordChar = '\0';
            this.txtNombre.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.txtNombre.SelectedText = "";
            this.txtNombre.SelectionLength = 0;
            this.txtNombre.SelectionStart = 0;
            this.txtNombre.ShortcutsEnabled = true;
            this.txtNombre.Size = new System.Drawing.Size(199, 23);
            this.txtNombre.TabIndex = 36;
            this.txtNombre.UseSelectable = true;
            this.txtNombre.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.txtNombre.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            // 
            // txtPrecio
            // 
            this.txtPrecio.Anchor = System.Windows.Forms.AnchorStyles.None;
            // 
            // 
            // 
            this.txtPrecio.CustomButton.Image = null;
            this.txtPrecio.CustomButton.Location = new System.Drawing.Point(177, 1);
            this.txtPrecio.CustomButton.Margin = new System.Windows.Forms.Padding(4);
            this.txtPrecio.CustomButton.Name = "";
            this.txtPrecio.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.txtPrecio.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.txtPrecio.CustomButton.TabIndex = 1;
            this.txtPrecio.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.txtPrecio.CustomButton.UseSelectable = true;
            this.txtPrecio.CustomButton.Visible = false;
            this.txtPrecio.Lines = new string[0];
            this.txtPrecio.Location = new System.Drawing.Point(156, 124);
            this.txtPrecio.MaxLength = 32767;
            this.txtPrecio.Name = "txtPrecio";
            this.txtPrecio.PasswordChar = '\0';
            this.txtPrecio.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.txtPrecio.SelectedText = "";
            this.txtPrecio.SelectionLength = 0;
            this.txtPrecio.SelectionStart = 0;
            this.txtPrecio.ShortcutsEnabled = true;
            this.txtPrecio.Size = new System.Drawing.Size(199, 23);
            this.txtPrecio.TabIndex = 40;
            this.txtPrecio.UseSelectable = true;
            this.txtPrecio.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.txtPrecio.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            // 
            // lblNombre
            // 
            this.lblNombre.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lblNombre.Location = new System.Drawing.Point(13, 66);
            this.lblNombre.Name = "lblNombre";
            this.lblNombre.Size = new System.Drawing.Size(137, 19);
            this.lblNombre.TabIndex = 37;
            this.lblNombre.Tag = "name";
            this.lblNombre.Text = "Nombre";
            this.lblNombre.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.lblNombre.WrapToLine = true;
            // 
            // lblCodigo
            // 
            this.lblCodigo.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.lblCodigo.Location = new System.Drawing.Point(13, 95);
            this.lblCodigo.Name = "lblCodigo";
            this.lblCodigo.Size = new System.Drawing.Size(137, 19);
            this.lblCodigo.TabIndex = 39;
            this.lblCodigo.Tag = "code";
            this.lblCodigo.Text = "Codigo";
            this.lblCodigo.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.lblCodigo.WrapToLine = true;
            // 
            // txtCodigo
            // 
            this.txtCodigo.Anchor = System.Windows.Forms.AnchorStyles.None;
            // 
            // 
            // 
            this.txtCodigo.CustomButton.Image = null;
            this.txtCodigo.CustomButton.Location = new System.Drawing.Point(177, 1);
            this.txtCodigo.CustomButton.Margin = new System.Windows.Forms.Padding(4);
            this.txtCodigo.CustomButton.Name = "";
            this.txtCodigo.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.txtCodigo.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.txtCodigo.CustomButton.TabIndex = 1;
            this.txtCodigo.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.txtCodigo.CustomButton.UseSelectable = true;
            this.txtCodigo.CustomButton.Visible = false;
            this.txtCodigo.Lines = new string[0];
            this.txtCodigo.Location = new System.Drawing.Point(156, 95);
            this.txtCodigo.MaxLength = 32767;
            this.txtCodigo.Name = "txtCodigo";
            this.txtCodigo.PasswordChar = '\0';
            this.txtCodigo.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.txtCodigo.SelectedText = "";
            this.txtCodigo.SelectionLength = 0;
            this.txtCodigo.SelectionStart = 0;
            this.txtCodigo.ShortcutsEnabled = true;
            this.txtCodigo.Size = new System.Drawing.Size(199, 23);
            this.txtCodigo.TabIndex = 38;
            this.txtCodigo.UseSelectable = true;
            this.txtCodigo.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.txtCodigo.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            // 
            // txtCosto
            // 
            this.txtCosto.Anchor = System.Windows.Forms.AnchorStyles.None;
            // 
            // 
            // 
            this.txtCosto.CustomButton.Image = null;
            this.txtCosto.CustomButton.Location = new System.Drawing.Point(177, 1);
            this.txtCosto.CustomButton.Margin = new System.Windows.Forms.Padding(4);
            this.txtCosto.CustomButton.Name = "";
            this.txtCosto.CustomButton.Size = new System.Drawing.Size(21, 21);
            this.txtCosto.CustomButton.Style = MetroFramework.MetroColorStyle.Blue;
            this.txtCosto.CustomButton.TabIndex = 1;
            this.txtCosto.CustomButton.Theme = MetroFramework.MetroThemeStyle.Light;
            this.txtCosto.CustomButton.UseSelectable = true;
            this.txtCosto.CustomButton.Visible = false;
            this.txtCosto.Lines = new string[0];
            this.txtCosto.Location = new System.Drawing.Point(156, 153);
            this.txtCosto.MaxLength = 32767;
            this.txtCosto.Name = "txtCosto";
            this.txtCosto.PasswordChar = '\0';
            this.txtCosto.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.txtCosto.SelectedText = "";
            this.txtCosto.SelectionLength = 0;
            this.txtCosto.SelectionStart = 0;
            this.txtCosto.ShortcutsEnabled = true;
            this.txtCosto.Size = new System.Drawing.Size(199, 23);
            this.txtCosto.TabIndex = 44;
            this.txtCosto.UseSelectable = true;
            this.txtCosto.WaterMarkColor = System.Drawing.Color.FromArgb(((int)(((byte)(109)))), ((int)(((byte)(109)))), ((int)(((byte)(109)))));
            this.txtCosto.WaterMarkFont = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Pixel);
            // 
            // btnAccion
            // 
            this.btnAccion.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnAccion.Location = new System.Drawing.Point(271, 182);
            this.btnAccion.Name = "btnAccion";
            this.btnAccion.Size = new System.Drawing.Size(84, 23);
            this.btnAccion.TabIndex = 45;
            this.btnAccion.Text = "Crear";
            this.btnAccion.UseSelectable = true;
            this.btnAccion.Click += new System.EventHandler(this.BtnAccion_Click);
            // 
            // ProductoAltaModificacion
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.ClientSize = new System.Drawing.Size(378, 221);
            this.Controls.Add(this.btnAccion);
            this.Controls.Add(this.txtCosto);
            this.Controls.Add(this.lblMail);
            this.Controls.Add(this.lblCodigoPostal);
            this.Controls.Add(this.txtNombre);
            this.Controls.Add(this.txtPrecio);
            this.Controls.Add(this.lblNombre);
            this.Controls.Add(this.lblCodigo);
            this.Controls.Add(this.txtCodigo);
            this.Name = "ProductoAltaModificacion";
            this.Text = "Crear Proveedor";
            this.Load += new System.EventHandler(this.ProductoCrear_Load);
            this.ResumeLayout(false);

        }

        #endregion
        private MetroLabel lblMail;
        private MetroLabel lblCodigoPostal;
        private MetroTextBox txtNombre;
        private MetroTextBox txtPrecio;
        private MetroLabel lblNombre;
        private MetroLabel lblCodigo;
        private MetroTextBox txtCodigo;
        private MetroTextBox txtCosto;
        private MetroButton btnAccion;
    }
}