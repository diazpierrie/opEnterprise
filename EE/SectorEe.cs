using System.Collections.Generic;

namespace EE
{
    public class SectorEe : IdentityEe
    {
        public string Nombre { get; set; }
        public List<KeyValuePair<PuestoEe, UsuarioEe>> Puestos = new List<KeyValuePair<PuestoEe, UsuarioEe>>();
        public UsuarioEe Jefe;

        public override string ToString()
        {
            return Nombre;
        }
    }
}