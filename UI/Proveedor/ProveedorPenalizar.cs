using System;
using System.Collections.Generic;
using BLL;
using EE;
using MetroFramework;

namespace UI
{
    public partial class ProveedorPenalizar : UpdatableForm
    {
        private readonly ProveedorEe _proveedor;
        private readonly ProveedorHome _proveedorHome;
        private readonly List<PenalizacionMotivoEe> _motivos;

        public ProveedorPenalizar(ProveedorHome proveedorHome, ProveedorEe proveedor)
        {
            _proveedor = proveedor;
            _proveedorHome = proveedorHome;
            InitializeComponent();
            _motivos = ProveedorBll.ObtenerMotivosPenalizacion();
            cbMotivos.DataSource = _motivos;
        }

        public void ActualizarEstadoVentas()
        {
            _proveedorHome.ActualizarGrid();
        }
        
        private void btnAsignarQueja_Click(object sender, EventArgs e)
        {
            switch (cbMotivos.SelectedIndex)
            { //TODO: Terminar penalizacion de proveedor
                case 0:
                    var unused1 = new QuejaElegirProductos(_proveedor, "Perdida", this);
                    break;
                case 1:
                    var unused = new QuejaElegirProductos(_proveedor, "Devolucion", this);
                    break;
            }
        }

        
    }
}
