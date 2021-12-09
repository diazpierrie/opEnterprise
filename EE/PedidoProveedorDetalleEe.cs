namespace EE
{
    public class PedidoProveedorDetalleEe : IdentityEe
    {
        public PedidoProveedorEe Pedido { get; set; }
        public ProductoEe Producto { get; set; }
        public int Cantidad { get; set; }
    }
}