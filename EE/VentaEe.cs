using System;

namespace EE
{
    public class VentaEe : IdentityEe
    {
        public UsuarioEe Empleado { get; set; }
        public CompradorEe Comprador { get; set; }
        public SucursalEe Sucursal { get; set; }
        public MetodoPagoEe MetodoPago { get; set; }
        public TipoEntregaEe TipoEntrega { get; set; }
        public VentaEstadoEe Estado { get; set; }
        public DateTime Fecha { get; set; }
        public double Total { get; set; }

        public override bool Equals(object obj)
        {
            var p = obj as VentaEe;
            if (p == null)
                return false;

            return this.Id.Equals(p.Id);
        }
    }
}
