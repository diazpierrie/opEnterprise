namespace EE
{
    public class PatenteEe : RolEe
    {
        public override bool TieneRol(string rol)
        {
            return Nombre.Equals(rol);
        }
    }
}