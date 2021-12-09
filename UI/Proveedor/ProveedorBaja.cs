using System;
using BLL;
using EE;

namespace UI
{
    public partial class ProveedorBaja : UpdatableForm
    {
        public ProveedorEe Proveedor;
        private readonly ProveedorHome _homeForm;

        public ProveedorBaja(ProveedorHome homeForm, ProveedorEe proveedor)
        {
            InitializeComponent();
            Proveedor = proveedor;
            lblPregunta.Text = $@"¿Está seguro que desea eliminar el proveedor {Proveedor.Nombre}?";
            _homeForm = homeForm;
        }

        private void btnSi_Click(object sender, EventArgs e)
        {
            ProveedorBll.Eliminar(Proveedor);
            _homeForm.ActualizarGrid();
            Close();
        }

        private void btnNo_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
