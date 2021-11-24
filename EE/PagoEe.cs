using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EE
{
    public class PagoEe : IdentityEe
    {
        public VentaEe Venta { get; set; }
        public double MontoCobrado { get; set; }
        public double Vuelto { get; set; }
    }
}
