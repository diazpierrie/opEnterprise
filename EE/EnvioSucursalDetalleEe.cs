namespace EE
{
    public class EnvioSucursalDetalleEe : IdentityEe
    {
        public VentaDetalleEe VentaDetalle { get; set; }
        public SucursalEe Sucursal { get; set; }
        public int Cantidad { get; set; }
    }
}