namespace EE
{
    public class TipoEntregaEe : IdentityEe
    {
        public string Descripcion { get; set; }

        public override string ToString()
        {
            return Descripcion;
        }
    }
}
