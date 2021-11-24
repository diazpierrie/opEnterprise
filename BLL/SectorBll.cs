using DAL;
using EE;
using Security;
using System.Collections.Generic;

namespace BLL
{
    public static class SectorManager
    {
        private static readonly SectorDal Dal = new SectorDal();

        public static List<KeyValuePair<PuestoEe, UsuarioEe>> ObtenerPuestos(SectorEe sec)
        {
            if (sec.Puestos == null || sec.Puestos.Count == 0)
            {
                sec.Puestos = Dal.ObtenerPuestos(sec.Id);
            }
            return sec.Puestos;
        }

        public static SectorEe Obtener(int id)
        {
            return Dal.Obtener(id);
        }

        public static SectorEe Obtener(UsuarioEe us)
        {
            if (us.Sector == null)
            {
                us.Sector = Dal.Obtener(us);
            }
            return us.Sector;
        }

        public static void Crear(SectorEe sec)
        {
            Dal.Crear(sec);

            if (sec.Jefe != null)
            {
                var jefeFamilia = PermisosManager.ObtenerFamilia("Jefe");

                if (jefeFamilia.Count > 0)
                {
                    PermisosManager.ModificarFamilia(sec.Jefe, jefeFamilia[0]);
                }
            }

            BitacoraManager.AgregarMensajeControl("Sector creado: ", sec);
        }

        public static void Actualizar(SectorEe sec)
        {
            Dal.Actualizar(sec);

            BitacoraManager.AgregarMensajeControl("Sector actualizado: ", sec);
        }

        public static void Borrar(int id)
        {
            Dal.Borrar(id);

            BitacoraManager.AgregarMensajeControl("SectorEe borrado: ", new SectorEe { Id = id });
        }

        public static List<SectorEe> Obtener(string name = null)
        {
            return Dal.Obtener(name);
        }

        public static List<UsuarioEe> ObtenerTrabajadores(SectorEe sec)
        {
            return Dal.ObtenerTrabajadores(sec.Id);
        }

        public static bool VerSiExiste(string nombre)
        {
            return Dal.VerSiExiste(nombre);
        }
    }
}