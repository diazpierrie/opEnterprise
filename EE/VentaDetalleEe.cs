namespace EE
{
    public class VentaDetalleEe : IdentityEe
    {
        public VentaEe Venta { get; set; }
        public ProductoEe Producto { get; set; }
        public double Costo { get; set; }
        public double Precio { get; set; }
        public int Cantidad { get; set; }
        public double TotalDetalle { get; set; }

        public override bool Equals(object obj)
        {
            var p = obj as VentaDetalleEe;
            if (p == null)
                return false;

            return (Producto.Id == p.Producto.Id) && (Venta.Id == p.Venta.Id);
        }
    }
}
