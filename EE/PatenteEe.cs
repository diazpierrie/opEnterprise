namespace EE
{
    public class PatenteEe : PermisoEe
    {

        public override bool TienePermiso(string permiso)
        {
            return Nombre.Equals(permiso);
        }
    }
}
