using System;
using System.Globalization;

namespace EE
{
    public class VentaEe : IdentityEe
    {
        public UsuarioEe Empleado { get; set; }
        public CompradorEe Comprador { get; set; }
        public SucursalEe Sucursal { get; set; }
        public MetodoPagoEe MetodoPago { get; set; }
        public TipoEntregaEe TipoEntrega { get; set; }
        public EstadoEe Estado { get; set; }
        public DateTime Fecha { get; set; }
        public double Total { get; set; }

        protected bool Equals(VentaEe other)
        {
            return Equals(Empleado, other.Empleado) && Equals(Comprador, other.Comprador) && Equals(Sucursal, other.Sucursal) && Equals(MetodoPago, other.MetodoPago) && Equals(TipoEntrega, other.TipoEntrega) && Equals(Estado, other.Estado) && Fecha.Equals(other.Fecha) && Total.Equals(other.Total);
        }

        public override int GetHashCode()
        {
            unchecked
            {
                // ReSharper disable once NonReadonlyMemberInGetHashCode
                var hashCode = Empleado?.GetHashCode() ?? 0;
                hashCode = (hashCode * 397) ^ (Comprador?.GetHashCode() ?? 0);
                hashCode = (hashCode * 397) ^ (Sucursal?.GetHashCode() ?? 0);
                hashCode = (hashCode * 397) ^ (MetodoPago?.GetHashCode() ?? 0);
                hashCode = (hashCode * 397) ^ (TipoEntrega?.GetHashCode() ?? 0);
                hashCode = (hashCode * 397) ^ (Estado?.GetHashCode() ?? 0);
                hashCode = (hashCode * 397) ^ Fecha.GetHashCode();
                hashCode = (hashCode * 397) ^ Total.GetHashCode();
                return hashCode;
            }
        }

        public override string ToString()
        {
            return $"{Comprador.NombreCompleto} - {Total.ToString(CultureInfo.InvariantCulture)}";
        }
    }
}