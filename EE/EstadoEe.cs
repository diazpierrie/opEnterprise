namespace EE
{
    public class EstadoEe : IdentityEe
    {
        public string Nombre { get; set; }

        public override string ToString()
        {
            return Nombre;
        }
    }
}