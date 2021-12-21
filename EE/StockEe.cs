namespace EE
{
    public class StockEe : IdentityEe
    {
        public EntidadFiscalEe Edificio { get; set; }
        public ProductoEe Producto { get; set; }
        public int Cantidad { get; set; }
    }
}