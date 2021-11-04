using System;

namespace EE
{
    public class VentaDetalleEe : IdentityEe
    {
        public VentaEe Venta { get; set; }
        public ProductoEe Producto { get; set; }
        public double Costo { get; set; }
        public double Precio { get; set; }
        public int Cantidad { get; set; }
    }
}
