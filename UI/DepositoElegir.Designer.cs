
namespace UI
{
    partial class DepositoElegir
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

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
            this.cbDepositos = new MetroFramework.Controls.MetroComboBox();
            this.btnElegir = new MetroFramework.Controls.MetroButton();
            this.btnLogOut = new MetroFramework.Controls.MetroButton();
            this.SuspendLayout();
            // 
            // cbDepositos
            // 
            this.cbDepositos.FormattingEnabled = true;
            this.cbDepositos.ItemHeight = 23;
            this.cbDepositos.Location = new System.Drawing.Point(54, 94);
            this.cbDepositos.Name = "cbDepositos";
            this.cbDepositos.Size = new System.Drawing.Size(304, 29);
            this.cbDepositos.TabIndex = 0;
            this.cbDepositos.UseSelectable = true;
            // 
            // btnElegir
            // 
            this.btnElegir.Location = new System.Drawing.Point(217, 130);
            this.btnElegir.Name = "btnElegir";
            this.btnElegir.Size = new System.Drawing.Size(140, 23);
            this.btnElegir.TabIndex = 1;
            this.btnElegir.Tag = "choose";
            this.btnElegir.Text = "Elegir";
            this.btnElegir.UseSelectable = true;
            this.btnElegir.Click += new System.EventHandler(this.btnElegir_Click);
            // 
            // btnLogOut
            // 
            this.btnLogOut.Location = new System.Drawing.Point(54, 130);
            this.btnLogOut.Name = "btnLogOut";
            this.btnLogOut.Size = new System.Drawing.Size(157, 23);
            this.btnLogOut.TabIndex = 2;
            this.btnLogOut.Tag = "close";
            this.btnLogOut.Text = "Cerrar";
            this.btnLogOut.UseSelectable = true;
            this.btnLogOut.Click += new System.EventHandler(this.btnLogOut_Click);
            // 
            // DepositoElegir
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(427, 191);
            this.Controls.Add(this.btnLogOut);
            this.Controls.Add(this.btnElegir);
            this.Controls.Add(this.cbDepositos);
            this.Name = "DepositoElegir";
            this.Text = "DepositoElegir";
            this.ResumeLayout(false);

        }

        #endregion

        private MetroFramework.Controls.MetroComboBox cbDepositos;
        private MetroFramework.Controls.MetroButton btnElegir;
        private MetroFramework.Controls.MetroButton btnLogOut;
    }
}