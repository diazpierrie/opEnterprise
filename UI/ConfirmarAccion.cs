using BLL;
using EE;
using System;

namespace UI
{
    public partial class ConfirmarAccion : UpdatableForm
    {
        private readonly string _texto;
        public bool Respuesta { get; set; }
        public VentaEe Venta;

        public ConfirmarAccion(string texto)
        {
            _texto = texto;
            InitializeComponent();
            CambiarTexto();
        }

        private void CambiarTexto()
        {
            lblPregunta.Text = _texto;
        }

        private void btnSi_Click(object sender, EventArgs e)
        {
            Respuesta = true;
        }

        private void btnNo_Click(object sender, EventArgs e)
        {
            Respuesta = false;
        }
    }
}