using System;

namespace EE
{
    public class ReclamoEe : IdentityEe
    {

        public DateTime Fecha { get; set; }
        public string Medidas { get; set; }
        public string Motivo { get; set; }
        public SucursalEe Sucursal { get; set; }
    }
}
