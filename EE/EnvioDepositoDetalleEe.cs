namespace EE
{
    public class EnvioDepositoDetalleEe : IdentityEe
    {
        public VentaDetalleEe VentaDetalle { get; set; }
        public DepositoEe Deposito { get; set; }

        public override string ToString()
        {
            return $"{VentaDetalle.Producto.Nombre} - Cantidad: {VentaDetalle.Cantidad} - Total: ${VentaDetalle.TotalDetalle}";
        }
    }
}