using System;

namespace EE
{
    public class BitacoraMensajeEe
    {
        public int Id { get; set; }
        public DateTime Fecha { get; set; }
        public string Titulo { get; set; }
        public string Descripcion { get; set; }
        public Tipo Tipo { get; set; }
        public UsuarioEe Usuario { get; set; }
    }

    public enum Tipo
    {
        Info,
        Error,
        Warning,
        Control
    }
}