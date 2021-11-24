using DAL;
using EE;
using System.Collections.Generic;

namespace BLL
{
    public class NotificacionBll
    {
        private static NotificacionDal _dal = new NotificacionDal();

        public static List<NotificacionEe> Obtener(UsuarioEe us)
        {
            return _dal.Obtener(us);
        }

        public static int ObtenerCantidad(UsuarioEe us)
        {
            return _dal.ObtenerCantidad(us);
        }

        public static void Enviar(NotificacionEe not)
        {
            _dal.Crear(not);
        }

        public static void LeerTodas(UsuarioEe us)
        {
            _dal.LeerTodas(us);
        }
    }
}