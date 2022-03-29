using BLL;
using EE;
using System;

namespace UI
{
    public partial class ProveedorBaja : UpdatableForm
    {
        private ProveedorEe Proveedor { get; }
        private readonly ProveedorHome _homeForm;

        public ProveedorBaja(ProveedorHome homeForm, ProveedorEe proveedor)
        {
            InitializeComponent();
            Proveedor = proveedor;
            lblPregunta.Text = $"¿Está seguro que desea eliminar el proveedor {Proveedor.Nombre}?";
            _homeForm = homeForm;
        }

        private void BtnSi_Click(object sender, EventArgs e)
        {
            ProveedorBll.Eliminar(Proveedor);
            _homeForm.ActualizarGrid();
            Close();
        }

        private void BtnNo_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}