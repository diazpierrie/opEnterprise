using System;
using System.Collections.Generic;
using System.Linq;
using EE;

namespace UI
{
    public class UpdatableForm : MetroFramework.Forms.MetroForm, IIUpdatable
    {
        protected List<System.Windows.Forms.Control> AllControls = new List<System.Windows.Forms.Control>();

        public virtual void ActualizarTextos()
        {
            if (this.Tag != null && this.Text != "" && Sesion.ObtenerSesion().Idioma.Textos.ContainsKey(this.Tag.ToString() ?? string.Empty))
            {
                this.Text = Sesion.ObtenerSesion().Idioma.Textos[this.Tag.ToString() ?? string.Empty];
            }

            foreach (var ctrl in from ctrl in AllControls where ctrl.Tag != null && ctrl.Tag.ToString() != "" let asd = ctrl.Tag.ToString() select ctrl)
            {
                ctrl.Text = Sesion.ObtenerSesion().Idioma.Textos[ctrl.Tag.ToString() ?? string.Empty];
            }

            this.Refresh();
        }

        private void InitializeComponent()
        {
            var resources = new System.ComponentModel.ComponentResourceManager(typeof(UpdatableForm));
            this.SuspendLayout();
            // 
            // UpdatableForm
            // 
            this.ClientSize = new System.Drawing.Size(300, 300);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("this.Icon")));
            this.Name = "UpdatableForm";
            this.Load += new System.EventHandler(this.UpdatableForm_Load);
            this.ResumeLayout(false);

        }

        private void UpdatableForm_Load(object sender, EventArgs e)
        {
        }
    }
}
