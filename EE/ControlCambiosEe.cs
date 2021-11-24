using System;

namespace EE
{
    public class ControlCambiosEe
    {
        public int Id;
        public DateTime Fecha;
        public string Titulo;
        public string Descripcion;
        public TipoControl Tipo;
        public UsuarioEe Usuario;
    }

    public enum TipoControl
    {
        Creacion,
        Modificacion,
        Borrado
    }
}