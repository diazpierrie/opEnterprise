using System.Collections.Generic;
using System.Linq;

namespace EE
{
    public class FamiliaEe : PermisoEe
    {
        public List<PermisoEe> Patentes;

        public override bool TienePermiso(string permiso)
        {
            return Patentes.Cast<PatenteEe>().Any(patente => patente.TienePermiso(permiso));
        }
    }
}