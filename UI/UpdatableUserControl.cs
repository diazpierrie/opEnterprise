using EE;
using MetroFramework.Controls;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;

namespace UI
{
    public class UpdatableUserControl : MetroUserControl, IIUpdatable
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
    }
}