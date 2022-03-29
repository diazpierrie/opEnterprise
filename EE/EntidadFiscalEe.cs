namespace EE
{
    public class EntidadFiscalEe : IdentityEe
    {
        public string Nombre { get; set; }
        public string Direccion { get; set; }
        public string Mail { get; set; }
        public string Telefono { get; set; }
        public int CodigoPostal { get; set; }
        public bool Activo { get; set; }

        public override string ToString()
        {
            return GetType().Name + Nombre;
        }

        protected bool Equals(EntidadFiscalEe other)
        {
            return Nombre == other.Nombre && Direccion == other.Direccion && Mail == other.Mail && Telefono == other.Telefono && CodigoPostal == other.CodigoPostal && Activo == other.Activo;
        }

        public override bool Equals(object obj)
        {
            if (obj is null) return false;
            if (ReferenceEquals(this, obj)) return true;
            return obj.GetType() == GetType() && Equals((EntidadFiscalEe)obj);
        }

        public override int GetHashCode()
        {
            unchecked
            {
                var hashCode = Nombre?.GetHashCode() ?? 0;
                hashCode = (hashCode * 397) ^ (Direccion?.GetHashCode() ?? 0);
                hashCode = (hashCode * 397) ^ (Mail?.GetHashCode() ?? 0);
                hashCode = (hashCode * 397) ^ (Telefono?.GetHashCode() ?? 0);
                hashCode = (hashCode * 397) ^ CodigoPostal;
                hashCode = (hashCode * 397) ^ Activo.GetHashCode();
                return hashCode;
            }
        }
    }
}