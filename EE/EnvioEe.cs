using System;

namespace EE
{
    public class EnvioEe : IdentityEe
    {
        public VentaEe Venta { get; set; }
        public DireccionEe Direccion { get; set; }
        public EntidadFiscalEe Edificio { get; set; }
        public DateTime FechaSalida { get; set; }
        public DateTime FechaLlegada { get; set; }
        public EstadoEe Estado { get; set; }
    }
}