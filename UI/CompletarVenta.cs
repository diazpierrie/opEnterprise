using System;
using System.Linq;
using BLL;
using EE;

namespace UI
{
    public partial class CompletarVenta : UpdatableForm
    {
        private readonly VentaHome _ventahome;
        private CompradorEe _cliente;
        public CompletarVenta(VentaHome ventahome)
        {
            _ventahome = ventahome;
            InitializeComponent();
            txtCliente.Enabled = false;
            cbMetodoPago.DataSource = MetodoPagoBll.Obtener();
        }

        private void btnBuscarCliente_Click(object sender, EventArgs e)
        {
            var buscarCliente = new ClienteBuscar(this);
            buscarCliente.Show();
        }

        public void AsignarCliente(CompradorEe cliente)
        {
            _cliente = cliente;
            txtCliente.Text = _cliente.ToString();
        }

        private void btnRealizarVenta_Click(object sender, EventArgs e)
        {
            VentaBll.Crear(new VentaEe
            {
                Comprador = _cliente,
                Sucursal = Sesion.ObtenerSesion().Sucursal,
                Empleado = Sesion.ObtenerSesion().Usuario,
                Fecha = DateTime.Now,
                MetodoPago = (MetodoPagoEe)cbMetodoPago.SelectedItem,
                Total = _ventahome.Total
            },
                _ventahome.Productos.ToList());

            Close();
            _ventahome.Close();
        }
    }
}
