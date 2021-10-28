using System;

namespace EE
{
    public class EnvioEe : IdentityEe
    {
        public string Direccion { get; set; }
        public bool Estado{ get; set; }
        public DateTime FechaDeSalida{ get; set; }
        public DateTime FechaLlegada{ get; set; }
        public EmpleadoDepositoEe EmpleadoDeposito { get; set; }
        public VentaEe Venta{ get; set; }
    }
}
