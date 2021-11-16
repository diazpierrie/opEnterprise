namespace EE
{
    public abstract class PermisoEe
    {
        public int Id;
        public string Nombre;

        public abstract bool TienePermiso(string permiso);

        public override string ToString()
        {
            return Nombre;
        }
    }
}
