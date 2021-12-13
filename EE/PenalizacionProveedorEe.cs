using System;

namespace EE
{
    public class PenalizacionProveedorEe : IdentityEe
    {
        public string Descripcion { get; set; }

        public DateTime Fecha { get; set; }

        public override string ToString()
        {
            return Descripcion;
        }
    }
}