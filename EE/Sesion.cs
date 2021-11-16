namespace EE
{
    public class Sesion
    {
        public UsuarioEe Usuario;
        public IdiomaEe Idioma;
        public SucursalEe Sucursal;
        public DepositoEe Deposito;
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
