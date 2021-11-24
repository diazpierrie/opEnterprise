namespace EE
{
    public class PedidoEstadoEe : IdentityEe
    {
        public string Nombre { get; set; }

        public override string ToString()
        {
            return Nombre;
        }
    }
}