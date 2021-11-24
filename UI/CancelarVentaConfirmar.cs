using BLL;
using EE;
using System;

namespace UI
{
    public partial class CancelarVentaConfirmar : UpdatableForm
    {
        public VentaEe Venta;
        private readonly CancelarVenta _cancelarVentaForm;

        public CancelarVentaConfirmar(CancelarVenta cancelarVentaForm, VentaEe venta)
        {
            InitializeComponent();
            _cancelarVentaForm = cancelarVentaForm;
            Venta = venta;
            lblPregunta.Text = $@"¿Está seguro que desea cancelar la venta realizada por {Venta.Empleado}?";
        }

        private void btnSi_Click(object sender, EventArgs e)
        {
            VentaBll.Cancelar(Venta);
            _cancelarVentaForm.ActualizarGrid();
            Close();
        }

        private void btnNo_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}