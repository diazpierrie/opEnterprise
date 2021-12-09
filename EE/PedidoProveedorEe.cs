using System;

namespace EE
{
    public class PedidoProveedorEe : IdentityEe
    {
        public UsuarioEe Empleado { get; set; }
        public ProveedorEe Proveedor { get; set; }
        public DepositoEe Deposito { get; set; }
        public PedidoEstadoEe Estado { get; set; }
        public DateTime FechaPedido { get; set; }
        public DateTime FechaRecepcion { get; set; }
        public double Total { get; set; }
    }
}