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

        public override bool Equals(object obj)
        {
            if (obj == null) return false;
            var other = (VentaDetalleEe) obj;
            return Equals(Venta, other.Venta) && Equals(Producto, other.Producto) && Costo.Equals(other.Costo) && Precio.Equals(other.Precio) && Cantidad == other.Cantidad && TotalDetalle.Equals(other.TotalDetalle);
        }

        public override int GetHashCode()
        {
            unchecked
            {
                var hashCode = Venta?.GetHashCode() ?? 0;
                hashCode = (hashCode * 397) ^ (Producto?.GetHashCode() ?? 0);
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