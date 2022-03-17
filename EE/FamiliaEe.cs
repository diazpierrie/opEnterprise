using System.Collections.Generic;
using System.Linq;

namespace EE
{
    public class FamiliaEe : RolEe
    {
        public List<RolEe> Patentes;

        public override bool TieneRol(string rol)
        {
            return Patentes.Cast<PatenteEe>().Any(patente => patente.TieneRol(rol));
        }
    }
}