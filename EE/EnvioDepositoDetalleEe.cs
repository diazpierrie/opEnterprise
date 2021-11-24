namespace EE
{
    public class EnvioDepositoDetalleEe : IdentityEe
    {
        public VentaDetalleEe VentaDetalle { get; set; }
        public DepositoEe Deposito { get; set; }
        public int Cantidad { get; set; }
    }
}
