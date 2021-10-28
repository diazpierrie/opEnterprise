namespace EE
{
    public class ProductoEe : IdentityEe
    {
        public string Nombre{ get; set; }
        public double Precio{ get; set; }
        public DevolucionEe Devolucion{ get; set; }
        public RenovacionDepositoEe RenovacionDeposito{ get; set; }
        public SucursalEe Sucursal{ get; set; }
    }
}