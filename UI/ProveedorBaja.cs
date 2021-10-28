using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
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
            this.Close();
        }

        private void btnNo_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
