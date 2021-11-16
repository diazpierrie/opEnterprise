using System;

namespace EE
{
    public class RenovacionDepositoEe : IdentityEe
    {
        public int Cantidad { get; set; }
        public bool Estado { get; set; }
        public DateTime Fecha { get; set; }
        public DepositoEe Deposito { get; set; }
        public ProductoEe Producto { get; set; }
        public ProveedorEe Proveedor { get; set; }
    }
}
