using System.Threading;
using DAL;
using EE;

namespace Security
{
    public static class SesionManager
    {
        private static UsuarioDal _dao = new UsuarioDal();

        public static bool IniciarSesion(string nombreUsuario, string password)
        {
            var user = _dao.Login(nombreUsuario, Encriptador.Encriptar(password));

            if (user == null)
            {
                var intentosFallidos = _dao.SumarIntentoFallido(nombreUsuario);

                if (intentosFallidos >= 5)
                {
                    BitacoraManager.AgregarMensaje(new BitacoraMensajeEe
                    {
                        Titulo = "Intentos fallidos",
                        Descripcion = $"{nombreUsuario} ha intentado iniciar sesion {intentosFallidos} veces",
                        Tipo = Tipo.Warning,
                        Usuario = null
                    });
                }
                return false;
            }

            _dao.ResetearIntentosFallidos(nombreUsuario);
            Sesion.ObtenerSesion().Usuario = user;
            return true;
        }

        public static bool CerrarSesion()
        {
            Dv.ActualizarDv();
            Thread.Sleep(2000);
            Sesion.ObtenerSesion().Usuario = null;
            return true;
        }

        public static bool EstaLoggeado()
        {
            return Sesion.ObtenerSesion().Usuario != null;
        }
    }
}
