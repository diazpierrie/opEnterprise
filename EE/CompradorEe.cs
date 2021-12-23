namespace EE
{
    public class CompradorEe : PersonaEe
    {
        public bool EsSocio { get; set; }
        public string NombreCompleto
        {
            get { return $"{Apellido}, {Nombre}"; }
        }

        public override string ToString()
        {
            return $"{Apellido}, {Nombre} - {Dni}";
        }
    }
}