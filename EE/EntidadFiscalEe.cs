namespace EE
{
    public class EntidadFiscalEe : IdentityEe
    {
        public string Nombre { get; set; }
        public string Direccion { get; set; }
        public string Mail { get; set; }
        public string Telefono { get; set; }
        public int CodigoPostal { get; set; }
        public bool Activo { get; set; }

    }
}