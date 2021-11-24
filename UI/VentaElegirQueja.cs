using System;
using System.Collections.Generic;
using BLL;
using EE;

namespace UI
{
    public partial class VentaElegirQueja : UpdatableForm
    {
        private readonly VentaEe _venta;
        private readonly List<string> _quejas = new List<string> { "El producto llegó en mal estado", "El producto no fue el deseado" };

        public VentaElegirQueja(VentaEe venta)
        {
            _venta = venta;
            InitializeComponent();
            cbQuejas.DataSource = _quejas;
            Show();
        }

        private void btnAsignarQueja_Click(object sender, EventArgs e)
        {
            switch (cbQuejas.SelectedIndex)
            {
                case 0:
                    new VentaQuejaElegirProducto(_venta, "Perdida");
                    break;
                case 1:
                    new VentaQuejaElegirProducto(_venta, "Devolucion");
                    break;
            }
        }
    }
}
