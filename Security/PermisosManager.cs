using DAL;
using EE;
using System.Collections.Generic;

namespace Security
{
    public static class PermisosManager
    {
        private static readonly FamiliaDal DalFamilia = new FamiliaDal();
        private static readonly PatenteDal DalPatente = new PatenteDal();

        public static List<FamiliaEe> ObtenerFamilia(string nombre = null)
        {
            return DalFamilia.Obtener(nombre);
        }

        public static FamiliaEe ObtenerFamilia(int id)
        {
            return DalFamilia.Obtener(id);
        }

        public static List<PermisoEe> ObtenerPatentes(FamiliaEe familiaEe)
        {
            if (familiaEe.Patentes == null)
            {
                familiaEe.Patentes = new List<PermisoEe>();
                familiaEe.Patentes = ObtenerPorFamilia(familiaEe.Id);
            }
            return familiaEe.Patentes;
        }

        public static List<PatenteEe> ObtenerPatentes()
        {
            return DalPatente.Obtener();
        }

        public static PermisoEe ObtenerPatente(int id)
        {
            return DalPatente.Obtener(id)[0];
        }

        public static List<PermisoEe> ObtenerPorFamilia(int id)
        {
            return DalPatente.ObtenerPorFamilia(id);
        }

        public static void Crear(FamiliaEe familiaEe)
        {
            foreach (var permisoEe in familiaEe.Patentes)
            {
                DalPatente.CrearRelacion(familiaEe.Id, permisoEe.Id);
            }

            BitacoraManager.AgregarMensajeControl("FamiliaEe creada: ", familiaEe);

            Dv.ActualizarDv();
        }

        public static bool VerSiFamiliaExiste(int id, string nombre)
        {
            return DalFamilia.VerSiFamiliaExiste(id, nombre);
        }

        public static void Actualizar(FamiliaEe familiaEe, List<PermisoEe> newPatentes)
        {
            DalFamilia.Actualizar(familiaEe);
            BorrarRelaciones(familiaEe);
            familiaEe.Patentes.Clear();
            foreach (var permisoEe in newPatentes)
            {
                DalPatente.CrearRelacion(familiaEe.Id, permisoEe.Id);
                familiaEe.Patentes.Add(permisoEe);
            }

            BitacoraManager.AgregarMensajeControl("FamiliaEe actualizada: ", familiaEe);

            Dv.ActualizarDv();
        }

        public static FamiliaEe ObtenerFamilia(UsuarioEe usuarioEe)
        {
            if (usuarioEe.Permiso == null)
            {
                usuarioEe.Permiso = DalFamilia.Obtener(usuarioEe);
            }
            return (FamiliaEe)usuarioEe.Permiso;
        }

        public static void Borrar(FamiliaEe familiaEe)
        {
            DalFamilia.Borrar(familiaEe.Id);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Familia borrada: ", familiaEe);
        }

        public static void BorrarRelaciones(FamiliaEe familiaEe)
        {
            DalFamilia.BorrarRelaciones(familiaEe.Id);
        }

        public static bool VerificarPatente(UsuarioEe usuarioEe, string patenteNombre)
        {
            ObtenerPatentes(ObtenerFamilia(usuarioEe));
            return usuarioEe.Permiso.TienePermiso(patenteNombre);
        }

        public static bool ModificarFamilia(UsuarioEe usuarioEe, FamiliaEe newFamilia)
        {
            DalFamilia.ModificarFamilia(usuarioEe.Id, newFamilia.Id);
            Dv.ActualizarDv();
            return true;
        }
    }
}