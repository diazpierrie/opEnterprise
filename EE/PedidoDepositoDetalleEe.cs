namespace EE
{
    public class PedidoDepositoDetalleEe : IdentityEe
    {
        public PedidoDepositoEe Pedido { get; set; }
        public DepositoEe Deposito { get; set; }
        public ProductoEe Producto { get; set; }
        public double Costo { get; set; }
        public int Cantidad { get; set; }
        public int CantidadAIngresar { get; set; }
    }
}