namespace EE
{
    public class EnvioDetalleEe : IdentityEe
    {
        public VentaDetalleEe VentaDetalle { get; set; }
        public EntidadFiscalEe Edificio { get; set; }

        public override string ToString()
        {
            return $"{VentaDetalle.Producto.Nombre} - Cantidad: {VentaDetalle.Cantidad} - Total: ${VentaDetalle.TotalDetalle}";
        }
    }
}