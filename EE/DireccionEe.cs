namespace EE
{
    public class DireccionEe : IdentityEe
    {
        public CompradorEe Comprador { get; set; }
        public string Calle { get; set; }
        public string Localidad { get; set; }
        public string Provincia { get; set; }
        public string Pais { get; set; }
        public string CodigoPostal { get; set; }

        public override string ToString()
        {
            return $"{Calle} - {Localidad} - {Provincia} - {Pais}";
        }
    }
}