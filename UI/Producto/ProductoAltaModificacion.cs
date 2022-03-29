using BLL;
using EE;
using Security;
using System;
using System.Globalization;

namespace UI
{
    public partial class ProductoAltaModificacion : UpdatableForm
    {
        private readonly ProductoEe _producto = new ProductoEe();
        private readonly ProductoHome _homeForm;

        private readonly bool _crear;

        public ProductoAltaModificacion(ProductoHome homeForm)
        {
            _homeForm = homeForm;

            _crear = true;
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            btnAccion.Text = Sesion.ObtenerSesion().Idioma.Textos["create"];
            CambiarTitulo(Sesion.ObtenerSesion().Idioma.Textos["create"] + " " + Sesion.ObtenerSesion().Idioma.Textos["product"]);
        }

        public ProductoAltaModificacion(ProductoHome homeForm, ProductoEe producto)
        {
            _homeForm = homeForm;
            _producto = producto;

            _crear = false;
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            btnAccion.Text = Sesion.ObtenerSesion().Idioma.Textos["modify"];
            CambiarTitulo(Sesion.ObtenerSesion().Idioma.Textos["modify"] + " " + Sesion.ObtenerSesion().Idioma.Textos["product"]);

            txtNombre.Text = _producto.Nombre;
            txtPrecio.Text = _producto.Precio.ToString(CultureInfo.InvariantCulture);
            txtCodigo.Text = _producto.Codigo;
            txtCosto.Text = _producto.Costo.ToString(CultureInfo.InvariantCulture);
        }

        private void BtnAccion_Click(object sender, EventArgs e)
        {
            if (_crear)
            {
                var producto = new ProductoEe
                {
                    Nombre = txtNombre.Text,
                    Precio = double.Parse(txtPrecio.Text),
                    Codigo = txtCodigo.Text,
                    Costo = double.Parse(txtCosto.Text),
                };

                ProductoBll.Crear(producto);
            }
            else
            {
                _producto.Nombre = txtNombre.Text;
                _producto.Precio = double.Parse(txtPrecio.Text);
                _producto.Codigo = txtCodigo.Text;
                _producto.Costo = double.Parse(txtCosto.Text);

                ProductoBll.Actualizar(_producto);
            }

            _homeForm.ActualizarGrid();
            Close();
        }

        private void ProductoCrear_Load(object sender, EventArgs e)
        {
            AllControls = Program.GetAllControls(this);

            AllControls.Add(lblCodigo);
            AllControls.Add(lblCodigoPostal);
            AllControls.Add(lblNombre);
            AllControls.Add(lblMail);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);
        }

        private void CambiarTitulo(string titulo)
        {
            Text = titulo;
        }
    }
}