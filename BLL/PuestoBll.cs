using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using EE;
using Security;

namespace BLL
{
    public class PuestoBll
    {
        static PuestoDal _dao = new PuestoDal();

        public static List<PuestoEe> Obtener()
        {
            return _dao.Obtener();
        }

        public static PuestoEe Obtener(int id)
        {
            return _dao.Obtener(id).ElementAt(0);
        }

        public static void Crear(PuestoEe puesto)
        {
            _dao.Crear(puesto);

            BitacoraManager.AgregarMensajeControl("Puesto creado: ", puesto);
        }

        public static void Actualizar(PuestoEe puesto)
        {
            _dao.Actualizar(puesto);

            BitacoraManager.AgregarMensajeControl("Puesto actualizado: ", puesto);
        }

        public static void Borrar(int id)
        {
            _dao.Borrar(id);

            BitacoraManager.AgregarMensajeControl("Puesto borrado: ", new PuestoEe { Id = id });
        }

        public static PuestoEe Obtener(UsuarioEe us)
        {
            return us.Puesto ?? (us.Puesto = _dao.Obtener(us));
        }

	}
}
