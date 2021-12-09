using System;
using System.Collections.Generic;
using BLL;
using EE;
using Newtonsoft.Json;
// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class ProveedorRestaurar : UpdatableForm
    {
        private readonly ProveedorHome _proveedorHome;
        private readonly ProveedorEe _proveedor;
        private readonly List<ProveedorEe> _listaProveedor = new List<ProveedorEe>();


        public ProveedorRestaurar(ProveedorHome proveedorHome, ProveedorEe proveedor)
        {
            _proveedorHome = proveedorHome;
            _proveedor = proveedor;
            InitializeComponent();
            var listaVersiones = VersionEntidadBll.Obtener("proveedor", _proveedor.Id);

            if (listaVersiones.Count == 0)
            {
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
