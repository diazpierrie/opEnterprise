using System;

namespace EE
{
    public class EnvioDepositoEe : IdentityEe
    {
        public VentaEe Venta { get; set; }
        public DireccionEe Direccion { get; set; }
        public DepositoEe Deposito { get; set; }
        public DateTime FechaSalida { get; set; }
        public DateTime FechaLlegada { get; set; }
        public EstadoEe Estado { get; set; }
    }
}