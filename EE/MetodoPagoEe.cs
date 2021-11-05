namespace EE
{
    public class MetodoPagoEe : IdentityEe
    {
        public string Nombre { get; set; }

        public override string ToString()
        {
            return Nombre;
        }
    }
}
