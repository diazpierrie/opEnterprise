using System;

namespace EE
{
    public class BitacoraMensajeEe
    {
        public int Id;
        public DateTime Fecha;
        public string Titulo;
        public string Descripcion;
        public Tipo Tipo;
        public UsuarioEe Usuario;
    }

    public enum Tipo
    {
        Info,
        Error,
        Warning,
        Control
    }
}