namespace EE
{
    public sealed class Sesion
    {
        public UsuarioEe Usuario { get; set; }
        public IdiomaEe Idioma { get; set; }
        public SucursalEe Sucursal { get; set; }
        public DepositoEe Deposito { get; set; }
        private static Sesion _sesion;

        private Sesion()
        {
            Idioma = new IdiomaEe();
            Usuario = new UsuarioEe();
            Sucursal = new SucursalEe();
            Deposito = new DepositoEe();
        }

        public static Sesion ObtenerSesion()
        {
            return _sesion ?? (_sesion = new Sesion());
        }
    }
}