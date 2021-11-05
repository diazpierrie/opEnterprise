namespace EE
{
    public class VentaEstadoEe : IdentityEe
    {
        public string Nombre { get; set; }

        public override string ToString()
        {
            return Nombre;
        }
    }
}
