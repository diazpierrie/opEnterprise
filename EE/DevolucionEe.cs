using System;

namespace EE
{
    public class DevolucionEe : IdentityEe
    {
        public SucursalEe Sucursal { get; set; }
        public UsuarioEe Usuario { get; set; }
        public DateTime Fecha { get; set; }
    }
}
