using System;

namespace EE
{
    public class PersonaEe : IdentityEe
    {
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Mail { get; set; }
        public int Dni { get; set; }
        public string Telefono { get; set; }
        public DateTime FechaCreacion { get; set; }
        public bool Activo { get; set; }
    }
}