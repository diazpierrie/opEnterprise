namespace EE
{
    public class PenalizacionMotivoEe : IdentityEe
    {
        public string Descripcion { get; set; }

        public override string ToString()
        {
            return Descripcion;
        }
    }
}