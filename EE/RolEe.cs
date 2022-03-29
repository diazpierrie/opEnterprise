namespace EE
{
    public abstract class RolEe
    {
        public int Id { get; set; }
        public string Nombre { get; set; }

        public abstract bool TieneRol(string rol);

        public override string ToString()
        {
            return Nombre;
        }
    }
}