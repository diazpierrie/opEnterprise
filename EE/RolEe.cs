namespace EE
{
    public abstract class RolEe
    {
        public int Id;
        public string Nombre;

        public abstract bool TieneRol(string rol);

        public override string ToString()
        {
            return Nombre;
        }
    }
}