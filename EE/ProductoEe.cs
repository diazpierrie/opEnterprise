using System;

// ReSharper disable NonReadonlyMemberInGetHashCode

namespace EE
{
    public class ProductoEe : IdentityEe
    {
        public string Nombre { get; set; }
        public string Codigo { get; set; }
        public DateTime FechaCreacion { get; set; }
        public int Cantidad { get; set; }
        public double Precio { get; set; }
        public double Costo { get; set; }
        public double TotalProducto { get; set; }
        public bool Activo { get; set; }

        public override string ToString()
        {
            return Nombre;
        }

        protected bool Equals(ProductoEe other)
        {
            return Nombre == other.Nombre && Codigo == other.Codigo && FechaCreacion.Equals(other.FechaCreacion) && Cantidad == other.Cantidad && Precio.Equals(other.Precio) && Costo.Equals(other.Costo) && Activo == other.Activo;
        }

        public override int GetHashCode()
        {
            unchecked
            {
                var hashCode = Nombre?.GetHashCode() ?? 0;
                hashCode = (hashCode * 397) ^ (Codigo?.GetHashCode() ?? 0);
                hashCode = (hashCode * 397) ^ FechaCreacion.GetHashCode();
                hashCode = (hashCode * 397) ^ Cantidad;
                hashCode = (hashCode * 397) ^ Precio.GetHashCode();
                hashCode = (hashCode * 397) ^ Costo.GetHashCode();
                hashCode = (hashCode * 397) ^ Activo.GetHashCode();
                return hashCode;
            }
        }
    }
}