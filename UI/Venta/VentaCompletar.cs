using BLL;
using EE;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using static EE.Sesion;
using static System.DateTime;

namespace UI
{
    public partial class VentaCompletar : UpdatableForm
    {
        public readonly VentaHome Ventahome;
        private CompradorEe _cliente;
        private double _total;
        public readonly BindingList<ProductoEdificioEe> ProductosRetiroLocal = new BindingList<ProductoEdificioEe>();

        public VentaCompletar(VentaHome ventahome)
        {
            Ventahome = ventahome;
            InitializeComponent();
            txtCliente.Enabled = false;
            cbMetodoPago.DataSource = MetodoPagoBll.Obtener();
            cbCuotas.DataSource = new List<string>
            {
                $"1 cuota de ${Ventahome.Total:##.##}",
                $"3 cuotas de ${Ventahome.Total / 3:##.##}",
                $"6 cuotas de ${Ventahome.Total / 6:##.##}",
                $"12 cuotas de ${Ventahome.Total / 12:##.##}"
            };

            var metodosEntrega = EnvioBll.ObtenerTiposEntrega();

            var boolContains = ventahome.ProductosAAsignar.All(x => Equals(x.Edificio, ObtenerSesion().Sucursal));
            if (!boolContains)
            {
                metodosEntrega.RemoveAt(0);
            }
            else
            {
                btnEnvioLocal.Visible = false;
            }

            cbMetodoEntrega.DataSource = metodosEntrega;
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
                MetodoPago = (MetodoPagoEe)cbMetodoPago.SelectedItem,
                TipoEntrega = (TipoEntregaEe)cbMetodoEntrega.SelectedItem,
                Estado = new EstadoEe() { Id = 1, Nombre = "Iniciado" },
                Total = _total
            };

            VentaBll.Crear(ventaNueva, (DireccionEe)cbDirecciones.SelectedItem, Ventahome.ProductosAAsignar.ToList(), ProductosRetiroLocal);

            Close();
            Ventahome.Close();
        }

        private void cbMetodoPago_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (cbMetodoPago.SelectedValue.ToString())
            {
                case "Efectivo":
                    _total = Ventahome.Total * 0.95;
                    btnRealizarVenta.Location = new Point(233, 214);
                    lblCuotas.Visible = false;
                    cbCuotas.Visible = false;
                    lblTotal.Text = $@"Total: ${_total:##.##} (Descuento del 5%)";
                    break;

                case "Debito":
                    _total = Ventahome.Total;
                    btnRealizarVenta.Location = new Point(233, 214);
                    lblCuotas.Visible = false;
                    cbCuotas.Visible = false;
                    lblTotal.Text = $@"Total: ${_total:##.##}";
                    break;

                case "Credito":
                    _total = Ventahome.Total;
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
            if (cbMetodoEntrega.SelectedValue.ToString() == "Retiro en Local" || cbDirecciones.Items.Count == 0)
            {
                cbDirecciones.Text = null;
                cbDirecciones.Enabled = false;
            }
            else
            {
                cbDirecciones.Enabled = true;
                if (cbDirecciones.DataSource != null && cbDirecciones.Items.Count != 0)
                {
                    cbDirecciones.SelectedIndex = 0;
                }
            }
        }

        private void btnEnvioLocal_Click(object sender, EventArgs e)
        {
            var agregarProducto = new RetiroLocalAgregar(this);
            agregarProducto.Show();
        }
    }
}