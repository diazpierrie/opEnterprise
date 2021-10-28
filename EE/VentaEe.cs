using System;

namespace EE
{
    public class VentaEe : IdentityEe
    {
        public DateTime Fecha { get; set; }
        public double Monto { get; set; }
        public bool Estado { get; set; }
        public CompradorEe Comprador { get; set; }
        public EmpleadoSucursalEe Empleado { get; set; }
    }
}
