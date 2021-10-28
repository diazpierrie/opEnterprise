using System;

namespace EE
{
    public class ReposicionEe : IdentityEe
    {
        public bool Estado { get; set; }
        public DateTime Fecha { get; set; }
        public ProductoEe Producto { get; set; }
        public SucursalEe Sucursal { get; set; }
    }
}
