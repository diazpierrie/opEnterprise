using DAL;
using EE;
using System.Collections.Generic;

namespace BLL
{
    public class NotificacionBll
    {
        private static readonly NotificacionDal Dal = new NotificacionDal();

        public static List<NotificacionEe> Obtener(UsuarioEe us)
        {
            return Dal.Obtener(us);
        }

        public static int ObtenerCantidad(UsuarioEe us)
        {
            return Dal.ObtenerCantidad(us);
        }

        public static void Enviar(NotificacionEe not)
        {
            Dal.Crear(not);
        }

        public static void LeerTodas(UsuarioEe us)
        {
            Dal.LeerTodas(us);
        }
    }
}