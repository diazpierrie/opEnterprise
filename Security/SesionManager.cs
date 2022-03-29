using DAL;
using EE;
using System.Threading;

namespace Security
{
    public static class SesionManager
    {
        private static readonly UsuarioDal Dao = new UsuarioDal();

        public static bool VerificarBloqueo(string nombreUsuario)
        {
            var intentoFallido = Dao.SumarIntentoFallido(nombreUsuario);

            return intentoFallido >= 3;
        }

        public static bool IniciarSesion(string nombreUsuario, string password)
        {
            var user = Dao.Login(nombreUsuario, Encriptador.Encriptar(password));

            if (user == null)
            {
                var intentosFallidos = Dao.SumarIntentoFallido(nombreUsuario);

                if (intentosFallidos < 3) return false;

                Dao.BloquearUsuario(nombreUsuario);
                BitacoraManager.AgregarMensaje(new BitacoraMensajeEe
                {
                    Titulo = "Intentos fallidos",
                    Descripcion = $"{nombreUsuario} ha bloqueado la cuenta",
                    Tipo = Tipo.Warning,
                    Usuario = null
                });
                Dv.ActualizarDv();
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
    }
}