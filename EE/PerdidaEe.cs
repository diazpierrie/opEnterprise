using System;

namespace EE
{
    public class PerdidaEe : IdentityEe
    {
        public SucursalEe Sucursal { get; set; }
        public UsuarioEe Usuario { get; set; }
        public DateTime Fecha { get; set; }
        public double Total { get; set; }
    }
}
