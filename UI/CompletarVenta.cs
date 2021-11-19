using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using BLL;
using EE;
using static System.DateTime;
using static EE.Sesion;

namespace UI
{
    public partial class CompletarVenta : UpdatableForm
    {
        private readonly VentaHome _ventahome;
        private CompradorEe _cliente;
        private double _total;

        public CompletarVenta(VentaHome ventahome)
        {
            _ventahome = ventahome;
            InitializeComponent();
            txtCliente.Enabled = false;
            cbMetodoPago.DataSource = MetodoPagoBll.Obtener();
            cbCuotas.DataSource = new List<string>
            {
                string.Format("1 cuota de ${0:##.##}", _ventahome.Total),
                string.Format("3 cuotas de ${0:##.##}", _ventahome.Total / 3),
                string.Format("6 cuotas de ${0:##.##}", _ventahome.Total / 6),
                string.Format("12 cuotas de ${0:##.##}", _ventahome.Total / 12)
            };

            cbMetodoEntrega.DataSource = EnvioBll.ObtenerTiposEntrega();
            cbDirecciones.Text = "Seleccione a un cliente";
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
            cbDirecciones.DataSource = DireccionBll.ObtenerDireccionesDeUsuario(_cliente);
            ActualizarDirecciones();
        }

        private void btnRealizarVenta_Click(object sender, EventArgs e)
        {

            var ventaNueva = new VentaEe
            {
                Comprador = _cliente,
                Sucursal = ObtenerSesion().Sucursal,
                Empleado = ObtenerSesion().Usuario,
                Fecha = Now,
                MetodoPago = (MetodoPagoEe) cbMetodoPago.SelectedItem,
                TipoEntrega = (TipoEntregaEe) cbMetodoEntrega.SelectedItem,
                Estado = new VentaEstadoEe(){Id = 1, Nombre = "Iniciado" },
                Total = _total
            };

            VentaBll.Crear(ventaNueva, _ventahome.ProductosAAsignar.ToList());

            if (cbMetodoEntrega.SelectedValue.ToString() != "Retiro en Local")
            {
                EnvioBll.CrearDeSucursal(new EnvioSucursalEe
                {
                    Venta = ventaNueva,
                    Direccion = (DireccionEe) cbDirecciones.SelectedItem,
                    Sucursal = ObtenerSesion().Sucursal,
                    FechaSalida = Now,
                    FechaLlegada = new DateTime(),
                    EstadoEnvio = 1
                });
            }

            Close();
            _ventahome.Close();
        }

        private void cbMetodoPago_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (cbMetodoPago.SelectedValue.ToString())
            {
                case "Efectivo":
                    _total = _ventahome.Total * 0.95;
                    btnRealizarVenta.Location = new Point(233, 214);
                    lblCuotas.Visible = false;
                    cbCuotas.Visible = false;
                    lblTotal.Text = $@"Total: ${_total:##.##} (Descuento del 5%)";
                    break;
                case "Debito":
                    _total = _ventahome.Total;
                    btnRealizarVenta.Location = new Point(233, 214);
                    lblCuotas.Visible = false;
                    cbCuotas.Visible = false;
                    lblTotal.Text = $@"Total: ${_total:##.##}";
                    break;
                case "Credito":
                    _total = _ventahome.Total;
                    btnRealizarVenta.Location = new Point(233, 249);
                    cbCuotas.SelectedIndex = 0;
                    lblCuotas.Visible = true;
                    cbCuotas.Visible = true;
                    lblTotal.Text = $@"Total: ${_total:##.##}";
                    break;
            }
        }

        private void cbMetodoEntrega_SelectedIndexChanged(object sender, EventArgs e)
        {
            ActualizarDirecciones();
        }

        private void ActualizarDirecciones()
        {
            if (cbMetodoEntrega.SelectedValue.ToString() == "Retiro en Local")
            {
                cbDirecciones.Text = null;
                cbDirecciones.Enabled = false;
            }
            else
            {
                cbDirecciones.Enabled = true;
                if (cbDirecciones.DataSource != null)
                {
                    cbDirecciones.SelectedIndex = 0;
                }

            }
        }
    }
}
