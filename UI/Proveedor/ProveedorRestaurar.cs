using BLL;
using EE;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using Security;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class ProveedorRestaurar : UpdatableForm
    {
        private readonly List<ProveedorEe> _listaProveedor = new List<ProveedorEe>();
        private readonly ProveedorEe _proveedor;
        private readonly ProveedorHome _proveedorHome;

        public ProveedorRestaurar(ProveedorHome proveedorHome, ProveedorEe proveedor,
            List<VersionEntidadEe> listaVersiones)
        {
            AllControls = Program.GetAllControls(this);
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

            _proveedorHome = proveedorHome;
            _proveedor = proveedor;
            InitializeComponent();

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
        }

        private void btnRestaurar_Click(object sender, EventArgs e)
        {
            ProveedorBll.Restaurar(_proveedor, (ProveedorEe)gridVersiones.SelectedRows[0].DataBoundItem);
            _proveedorHome.ActualizarGrid();
            Close();
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}