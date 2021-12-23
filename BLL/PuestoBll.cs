using DAL;
using EE;
using Security;
using System.Collections.Generic;
using System.Linq;

namespace BLL
{
    public class PuestoBll
    {
        private static readonly PuestoDal Dao = new PuestoDal();

        public static List<PuestoEe> Obtener()
        {
            return Dao.Obtener();
        }

        public static PuestoEe Obtener(int id)
        {
            return Dao.Obtener(id).ElementAt(0);
        }

        public static void Crear(PuestoEe puesto)
        {
            Dao.Crear(puesto);

            BitacoraManager.AgregarMensajeControl("Puesto creado: ", puesto);
        }

        public static void Actualizar(PuestoEe puesto)
        {
            Dao.Actualizar(puesto);

            BitacoraManager.AgregarMensajeControl("Puesto actualizado: ", puesto);
        }

        public static void Borrar(int id)
        {
            Dao.Borrar(id);

            BitacoraManager.AgregarMensajeControl("Puesto borrado: ", new PuestoEe { Id = id });
        }

        public static PuestoEe Obtener(UsuarioEe us)
        {
            return us.Puesto ?? (us.Puesto = Dao.Obtener(us));
        }
    }
}