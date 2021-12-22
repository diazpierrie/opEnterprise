using BLL;
using EE;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Windows.Forms;
using MetroFramework;
using Security;
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
            AllControls = Program.GetAllControls(this);
            AllControls.Add(lblTotal);
            AllControls.Add(lblCliente);
            AllControls.Add(lblCuotas);
            AllControls.Add(lblDireccion);
            AllControls.Add(lblMetodoEntrega);
            AllControls.Add(lblMetodoPago);
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);
            txtCliente.Enabled = false;
            _total = ventahome.Total;
            cbMetodoPago.DataSource = MetodoPagoBll.Obtener();

            var metodosEntrega = EnvioBll.ObtenerTiposEntrega();

            var boolContains = ventahome.ProductosAAsignar.All(x => Equals(x.Edificio, ObtenerSesion().Sucursal));
            if (!boolContains)
            {
                metodosEntrega.RemoveAll(x=> x.Descripcion == ObtenerSesion().Idioma.Textos["branch_takeaway"]);
            }
            else
            {
                btnEnvioLocal.Visible = false;
            }

            metodosEntrega.FirstOrDefault(x => x.Descripcion == ObtenerSesion().Idioma.Textos["delivery_city"]).Descripcion += " ($250)";
            metodosEntrega.FirstOrDefault(x => x.Descripcion == ObtenerSesion().Idioma.Textos["delivery_province"]).Descripcion += " ($400)";
            metodosEntrega.FirstOrDefault(x => x.Descripcion == ObtenerSesion().Idioma.Textos["delivery_country"]).Descripcion += " ($800)";

            cbMetodoEntrega.DataSource = metodosEntrega;
            cbDirecciones.Text = ObtenerSesion().Idioma.Textos["select_client"];
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
                Estado = new EstadoEe() { Id = 1, Nombre = ObtenerSesion().Idioma.Textos["initiated"] },
                Total = _total
            };

            if (VentaBll.Crear(ventaNueva, (DireccionEe)cbDirecciones.SelectedItem, Ventahome.ProductosAAsignar.ToList(), ProductosRetiroLocal) != 0)
            {
                MetroMessageBox.Show(this, Sesion.ObtenerSesion().Idioma.Textos["success_sale"],
                    Sesion.ObtenerSesion().Idioma.Textos["success"], MessageBoxButtons.OK, MessageBoxIcon.Question);
            }

            Close();
            Ventahome.Close();
        }

        private void cbMetodoPago_SelectedIndexChanged(object sender, EventArgs e)
        {
            CalcularTotal();
        }

        private void CalcularTotal()
        {
            _total = Ventahome.Total;

            if (cbMetodoEntrega.Text.Contains(ObtenerSesion().Idioma.Textos["delivery_city"]))
            {
                _total += 250;
            }
            else if (cbMetodoEntrega.Text.Contains(ObtenerSesion().Idioma.Textos["delivery_province"]))
            {
                _total += 400;
            }
            else if (cbMetodoEntrega.Text.Contains(ObtenerSesion().Idioma.Textos["delivery_country"]))
            {
                _total += 800;
            }

            if (cbMetodoPago.SelectedValue.ToString() == ObtenerSesion().Idioma.Textos["cash"])
            {
                _total *= 0.95;
                btnRealizarVenta.Location = new Point(233, 214);
                lblCuotas.Visible = false;
                cbCuotas.Visible = false;
                lblTotal.Text = ObtenerSesion().Idioma.Textos["total"] + @": $" + $@"{_total:##.##}" + @" (" +
                                ObtenerSesion().Idioma.Textos["discount"] + @" 5%)";
            }
            else if (cbMetodoPago.SelectedValue.ToString() == ObtenerSesion().Idioma.Textos["debit"])
            {
                btnRealizarVenta.Location = new Point(233, 214);
                lblCuotas.Visible = false;
                cbCuotas.Visible = false;
                lblTotal.Text = ObtenerSesion().Idioma.Textos["total"] + @": $" + $@"{_total:##.##}";
            }
            else if (cbMetodoPago.SelectedValue.ToString() == ObtenerSesion().Idioma.Textos["credit"])
            {
                btnRealizarVenta.Location = new Point(233, 249);
                cbCuotas.SelectedIndex = 0;
                lblCuotas.Visible = true;
                cbCuotas.Visible = true;
                lblTotal.Text = ObtenerSesion().Idioma.Textos["total"] + @": $" + $@"{_total:##.##}";
            }

            cbCuotas.DataSource = new List<string>
            {
                "1 " + ObtenerSesion().Idioma.Textos["installment"] + " - " + $"${_total:##.##}",
                "3 " + ObtenerSesion().Idioma.Textos["installments"] + " - " + $"${_total / 3:##.##}",
                "6 " + ObtenerSesion().Idioma.Textos["installments"] + " - " + $"${_total / 6:##.##}",
                "12 " + ObtenerSesion().Idioma.Textos["installments"] + " - " + $"${_total / 12:##.##}"
            };
        }

        private void cbMetodoEntrega_SelectedIndexChanged(object sender, EventArgs e)
        {
            ActualizarDirecciones();
            CalcularTotal();
        }

        private void ActualizarDirecciones()
        {
            if (cbMetodoEntrega.SelectedValue.ToString() == ObtenerSesion().Idioma.Textos["branch_takeaway"] || cbDirecciones.Items.Count == 0)
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