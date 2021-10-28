namespace EE
{
    public class PuestoEe : IdentityEe
    {
        public string Nombre { get; set; }

        public override string ToString()
        {
            return Nombre;
        }
    }
}
