namespace EE
{
    public class CuotaEe : IdentityEe
    {
        public VentaEe Venta { get; set; }
        public double MontoCuota { get; set; }
        public bool FuePago { get; set; }
    }
}