namespace EE
{
    public class CompradorEe : PersonaEe
    {
        public bool EsSocio { get; set; }
        public string NombreCompleto => $"{Apellido}, {Nombre}";

        public override string ToString()
        {
            return $"{Apellido}, {Nombre} - {Dni}";
        }
    }
}