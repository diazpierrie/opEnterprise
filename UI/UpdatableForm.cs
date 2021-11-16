using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;
using EE;
using MetroFramework.Forms;

namespace UI
{
    public class UpdatableForm : MetroForm, IIUpdatable
    {
        protected List<Control> AllControls = new List<Control>();

        public virtual void ActualizarTextos()
        {
            if (Tag != null && Text != "" && Sesion.ObtenerSesion().Idioma.Textos.ContainsKey(Tag.ToString()))
            {
                Text = Sesion.ObtenerSesion().Idioma.Textos[Tag.ToString()];
            }

            foreach (var ctrl in from ctrl in AllControls where ctrl.Tag != null && ctrl.Tag.ToString() != "" let asd = ctrl.Tag.ToString() select ctrl)
            {
                ctrl.Text = Sesion.ObtenerSesion().Idioma.Textos[ctrl.Tag.ToString()];
            }

            Refresh();
        }

        private void InitializeComponent()
        {
            var resources = new ComponentResourceManager(typeof(UpdatableForm));
            SuspendLayout();
            // 
            // UpdatableForm
            // 
            ClientSize = new Size(300, 300);
            Icon = ((Icon)(resources.GetObject("this.Icon")));
            Name = "UpdatableForm";
            Load += UpdatableForm_Load;
            ResumeLayout(false);

        }

        private void UpdatableForm_Load(object sender, EventArgs e)
        {
        }
    }
}
