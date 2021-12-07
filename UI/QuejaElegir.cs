using System;
using System.Collections.Generic;
using BLL;
using EE;
using MetroFramework;

namespace UI
{
    public partial class QuejaElegir : UpdatableForm
    {
        private readonly VentaEe _venta;
        private readonly QuejaCrear _quejaCrear;
        private readonly List<string> _quejas = new List<string> { "El producto llegó en mal estado", "El producto no fue el deseado" };

        public QuejaElegir(VentaEe venta, QuejaCrear quejaCrear)
        {
            _venta = venta;
            _quejaCrear = quejaCrear;
            InitializeComponent();
            cbQuejas.DataSource = _quejas;
            if (VentaBll.ObtenerDetallesAgrupados(venta).Count != 0)
            {
                Show();
            }
            else
            {
                MetroMessageBox.Show(this, "Esta venta no contiene productos", "Venta sin productos");
            }
        }

        public void ActualizarEstadoVentas()
        {
            _quejaCrear.ActualizarGrid();
        }
        
        private void btnAsignarQueja_Click(object sender, EventArgs e)
        {
            switch (cbQuejas.SelectedIndex)
            {
                case 0:
                    var unused1 = new QuejaElegirProductos(_venta, "Perdida", this);
                    break;
                case 1:
                    var unused = new QuejaElegirProductos(_venta, "Devolucion", this);
                    break;
            }
        }

        
    }
}
