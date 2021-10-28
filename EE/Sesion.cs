namespace EE
{
    public class Sesion
    {
        public UsuarioEe Usuario;
        public IdiomaEe Idioma;
        private static Sesion _sesion;

        private Sesion()
        {
            Idioma = new IdiomaEe();
            Usuario = new UsuarioEe();
        }

        public static Sesion ObtenerSesion()
        {
            if (_sesion == null)
            {
                _sesion = new Sesion();
            }
            return _sesion;
        }
	}
}
