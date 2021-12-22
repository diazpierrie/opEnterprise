using BLL;
using EE;
using MetroFramework;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Windows.Forms;
using Security;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class ProveedorRestaurar : UpdatableForm
    {
        private readonly List<ProveedorEe> _listaProveedor = new List<ProveedorEe>();
        private readonly ProveedorEe _proveedor;
        private readonly ProveedorHome _proveedorHome;

        public ProveedorRestaurar(ProveedorHome proveedorHome, ProveedorEe proveedor)
        {
            AllControls = Program.GetAllControls(this);
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

            _proveedorHome = proveedorHome;
            _proveedor = proveedor;
            InitializeComponent();
            var listaVersiones = VersionEntidadBll.Obtener("proveedor", _proveedor.Id);

            if (listaVersiones.Count == 0)
            {
                MetroMessageBox.Show(_proveedorHome, Sesion.ObtenerSesion().Idioma.Textos["vendor_no_versions"],
                    Sesion.ObtenerSesion().Idioma.Textos["error"], MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            foreach (var version in listaVersiones)
            {
                _listaProveedor.Add(JsonConvert.DeserializeObject<ProveedorEe>(version.Objeto));
            }

            gridVersiones.DataSource = _listaProveedor;

            gridVersiones.Columns["id"].Visible = false;
            gridVersiones.Columns["activo"].Visible = false;

            gridVersiones.Columns["nombre"].DisplayIndex = 0;
            gridVersiones.Columns["direccion"].DisplayIndex = 1;
            gridVersiones.Columns["codigoPostal"].DisplayIndex = 2;
            gridVersiones.Columns["mail"].DisplayIndex = 3;
            gridVersiones.Columns["telefono"].DisplayIndex = 4;
            gridVersiones.Columns["CantidadErrores"].DisplayIndex = 5;

            gridVersiones.Columns["nombre"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["name"];
            gridVersiones.Columns["direccion"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["address"];
            gridVersiones.Columns["codigoPostal"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["zipcode"];
            gridVersiones.Columns["mail"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["mail"];
            gridVersiones.Columns["telefono"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["telephone"];
            gridVersiones.Columns["CantidadErrores"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["amount_errors"];

            Show();
        }

        private void btnRestaurar_Click(object sender, EventArgs e)
        {
            ProveedorBll.Restaurar(_proveedor, (ProveedorEe)gridVersiones.SelectedRows[0].DataBoundItem);
            _proveedorHome.ActualizarGrid();
            Close();
        }
    }
}