using System;

namespace EE
{
    public class ProductoEe : IdentityEe
    {
        public string Nombre{ get; set; }
        public string Codigo { get; set; }
        public DateTime FechaCreacion { get; set; }
        public int Cantidad { get; set; }
        public double Precio { get; set; }
        public double Costo { get; set; }
        public bool Activo { get; set; }

        public override string ToString()
        {
            return Nombre;
        }
    }
}