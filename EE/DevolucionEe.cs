namespace EE
{
     public class DevolucionEe : IdentityEe
     {
         public string Detalle { get; set; }
        public CompradorEe Comprador { get; set; }
        public ProductoEe Producto { get; set; }
    }
}
