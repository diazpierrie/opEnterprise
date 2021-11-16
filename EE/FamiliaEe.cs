using System.Collections.Generic;

namespace EE
{
    public class FamiliaEe : PermisoEe
    {
        public List<PermisoEe> Patentes;

        public override bool TienePermiso(string permiso)
        {
            foreach (var permisoEe in Patentes)
            {
                var patente = (PatenteEe)permisoEe;
                if (patente.TienePermiso(permiso))
                {
                    return true;
                }
            }

            return false;
        }
    }
}
