using DAL;
using EE;
using System.Threading;

namespace Security
{
    public static class SesionManager
    {
        private static readonly UsuarioDal Dao = new UsuarioDal();

        public static bool IniciarSesion(string nombreUsuario, string password)
        {
            var user = Dao.Login(nombreUsuario, Encriptador.Encriptar(password));

            if (user == null)
            {
                var intentosFallidos = Dao.SumarIntentoFallido(nombreUsuario);

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

            Dao.ResetearIntentosFallidos(nombreUsuario);
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