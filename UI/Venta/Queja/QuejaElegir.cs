using EE;
using Security;
using System;
using System.Collections.Generic;

namespace UI
{
    public partial class QuejaElegir : UpdatableForm
    {
        private readonly VentaEe _venta;
        public readonly QuejaCrear QuejaCrear;
        private readonly List<VentaDetalleEe> _obtenerDetallesAgrupados;
        private readonly List<string> _quejas = new List<string> { Sesion.ObtenerSesion().Idioma.Textos["product_bad_condition"], Sesion.ObtenerSesion().Idioma.Textos["product_not_desired"] };

        public QuejaElegir(VentaEe venta, QuejaCrear quejaCrear, List<VentaDetalleEe> obtenerDetallesAgrupados)
        {
            _venta = venta;
            QuejaCrear = quejaCrear;
            _obtenerDetallesAgrupados = obtenerDetallesAgrupados;
            InitializeComponent();

            AllControls = Program.GetAllControls(this);
            AllControls.Add(lblQueja);
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

            cbQuejas.DataSource = _quejas;
        }

        public void ActualizarEstadoVentas()
        {
            QuejaCrear.ActualizarGrid();
        }

        private void BtnAsignarQueja_Click(object sender, EventArgs e)
        {
            var productos = _obtenerDetallesAgrupados;

            if (productos.Count == 0)
            {
                return;
            }

            string motivo = null;

            switch (cbQuejas.SelectedIndex)
            {
                case 0:
                     motivo = Sesion.ObtenerSesion().Idioma.Textos["loss"];
                    break;

                case 1:
                     motivo = Sesion.ObtenerSesion().Idioma.Textos["devolution"];
                    break;
            }

            var quejaElegirProductos = new QuejaElegirProductos(_venta, motivo, this, productos);
            quejaElegirProductos.Show();
        }
    }
}