namespace EE
{
    public class ProductoEdificioEe : ProductoEe
    {
        public EntidadFiscalEe Edificio { get; set; }
        public int CantidadAComprar { get; set; }
        public int CantidadARetirar { get; set; }
    }
}