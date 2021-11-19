using System;

namespace EE
{
    public class EnvioSucursalEe : IdentityEe
    {
        public VentaEe Venta { get; set; }
        public DireccionEe Direccion { get; set; }
        public SucursalEe Sucursal { get; set; }
        public DateTime FechaSalida { get; set; }
        public DateTime FechaLlegada { get; set; }
        public int EstadoEnvio { get; set; }
    }
}
