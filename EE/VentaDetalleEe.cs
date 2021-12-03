// ReSharper disable NonReadonlyMemberInGetHashCode
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

        protected bool Equals(VentaDetalleEe other)
        {
            return Equals(Venta, other.Venta) && Equals(Producto, other.Producto) && Costo.Equals(other.Costo) && Precio.Equals(other.Precio) && Cantidad == other.Cantidad && TotalDetalle.Equals(other.TotalDetalle);
        }

        public override int GetHashCode()
        {
            unchecked
            {
                var hashCode = Venta != null ? Venta.GetHashCode() : 0;
                hashCode = (hashCode * 397) ^ (Producto != null ? Producto.GetHashCode() : 0);
                hashCode = (hashCode * 397) ^ Costo.GetHashCode();
                hashCode = (hashCode * 397) ^ Precio.GetHashCode();
                hashCode = (hashCode * 397) ^ Cantidad;
                hashCode = (hashCode * 397) ^ TotalDetalle.GetHashCode();
                return hashCode;
            }
        }

        public override string ToString()
        {
            return $"{Producto.Nombre} - Cantidad: {Cantidad} - Total: ${TotalDetalle}";
        }
    }
}