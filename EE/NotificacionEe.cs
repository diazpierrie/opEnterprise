using System;

namespace EE
{
    public class NotificacionEe : IdentityEe
    {
        public DateTime FechaCreacion { get; set; }
        public bool Leido { get; set; }
        public string Texto { get; set; }
        public UsuarioEe Usuario { get; set; }

        public NotificacionEe(string texto, UsuarioEe usuario)
        {
            Texto = texto;
            Usuario = usuario;
        }

        public NotificacionEe() { }
    }
}