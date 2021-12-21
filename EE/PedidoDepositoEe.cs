using System;

namespace EE
{
    public class PedidoDepositoEe : IdentityEe
    {
        public UsuarioEe Empleado { get; set; }
        public SucursalEe Sucursal { get; set; }
        public DateTime FechaPedido { get; set; }
        public DateTime FechaRecepcion { get; set; }
        public PedidoEstadoEe Estado { get; set; }
    }
}