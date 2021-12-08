using BLL;
using EE;
using System;

namespace UI
{
    public partial class VentaConfirmarCancelacion : UpdatableForm
    {
        public VentaEe Venta;
        private readonly VentaCancelar _ventaCancelarForm;

        public VentaConfirmarCancelacion(VentaCancelar ventaCancelarForm, VentaEe venta)
        {
            InitializeComponent();
            _ventaCancelarForm = ventaCancelarForm;
            Venta = venta;
        }

        private void btnSi_Click(object sender, EventArgs e)
        {
            VentaBll.Cancelar(Venta);
            _ventaCancelarForm.ActualizarGrid();
            Close();
        }

        private void btnNo_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}