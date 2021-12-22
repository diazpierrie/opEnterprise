using System;
using System.Collections.Generic;
using System.Windows.Forms;
using BLL;
using EE;
using MetroFramework;
using Security;

namespace UI
{
    public partial class QuejaElegir : UpdatableForm
    {
        private readonly VentaEe _venta;
        private readonly QuejaCrear _quejaCrear;
        private readonly List<string> _quejas = new List<string> { Sesion.ObtenerSesion().Idioma.Textos["product_bad_condition"], Sesion.ObtenerSesion().Idioma.Textos["product_not_desired"] };

        public QuejaElegir(VentaEe venta, QuejaCrear quejaCrear)
        {
            _venta = venta;
            _quejaCrear = quejaCrear;
            InitializeComponent();

            AllControls = Program.GetAllControls(this);
            AllControls.Add(lblQueja);
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

            cbQuejas.DataSource = _quejas;
            if (VentaBll.ObtenerDetallesAgrupados(venta).Count != 0)
            {
                Show();
            }
            else
            {
                MetroMessageBox.Show(this, Sesion.ObtenerSesion().Idioma.Textos["sale_no_products"], Sesion.ObtenerSesion().Idioma.Textos["error"], MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        public void ActualizarEstadoVentas()
        {
            _quejaCrear.ActualizarGrid();
        }
        
        private void btnAsignarQueja_Click(object sender, EventArgs e)
        {
            switch (cbQuejas.SelectedIndex)
            {
                case 0:
                    var unused1 = new QuejaElegirProductos(_venta, Sesion.ObtenerSesion().Idioma.Textos["loss"], this);
                    break;
                case 1:
                    var unused = new QuejaElegirProductos(_venta, Sesion.ObtenerSesion().Idioma.Textos["devolution"], this);
                    break;
            }
        }

        
    }
}
