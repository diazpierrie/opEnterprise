namespace EE
{
    public class EnvioSucursalDetalleEe : IdentityEe
    {
        public VentaDetalleEe VentaDetalle { get; set; }
        public SucursalEe Sucursal { get; set; }

        public override string ToString()
        {
            return $"{VentaDetalle.Producto.Nombre} - Cantidad: {VentaDetalle.Cantidad} - Total: ${VentaDetalle.TotalDetalle}";
        }
    }
}