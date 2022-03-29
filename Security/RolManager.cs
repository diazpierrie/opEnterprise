using DAL;
using EE;
using System.Collections.Generic;

namespace Security
{
    public static class RolManager
    {
        private static readonly FamiliaDal DalFamilia = new FamiliaDal();
        private static readonly PatenteDal DalPatente = new PatenteDal();

        public static void Actualizar(FamiliaEe familiaEe, List<RolEe> newPatentes)
        {
            DalFamilia.Actualizar(familiaEe);
            BorrarRelaciones(familiaEe);
            familiaEe.Patentes.Clear();
            foreach (var rolEe in newPatentes)
            {
                DalPatente.CrearRelacion(familiaEe.Id, rolEe.Id);
                familiaEe.Patentes.Add(rolEe);
            }

            BitacoraManager.AgregarMensajeControl("FamiliaEe actualizada: ", familiaEe);

            Dv.ActualizarDv();
        }

        public static void Borrar(FamiliaEe familiaEe)
        {
            BorrarRelaciones(familiaEe);
            DalFamilia.Borrar(familiaEe.Id);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Familia borrada: ", familiaEe);
        }

        public static void BorrarRelaciones(FamiliaEe familiaEe)
        {
            DalFamilia.BorrarRelaciones(familiaEe.Id);
        }

        public static void Crear(FamiliaEe familiaEe)
        {
            familiaEe.Id = DalFamilia.Crear(familiaEe);

            foreach (var rolEe in familiaEe.Patentes)
            {
                DalPatente.CrearRelacion(familiaEe.Id, rolEe.Id);
            }

            BitacoraManager.AgregarMensajeControl("Familia creada: ", familiaEe);

            Dv.ActualizarDv();
        }

        public static bool ModificarFamilia(UsuarioEe usuarioEe, FamiliaEe newFamilia)
        {
            DalFamilia.ModificarFamilia(usuarioEe.Id, newFamilia.Id);
            Dv.ActualizarDv();
            return true;
        }

        public static List<FamiliaEe> ObtenerFamilia(string nombre = null)
        {
            return DalFamilia.Obtener(nombre);
        }

        public static FamiliaEe ObtenerFamiliaPorUsuario(UsuarioEe usuarioEe)
        {
            if (usuarioEe.Rol == null)
            {
                usuarioEe.Rol = DalFamilia.ObtenerPorUsuario(usuarioEe);
            }
            return (FamiliaEe)usuarioEe.Rol;
        }

        public static FamiliaEe ObtenerFamiliaPorId(int id)
        {
            return DalFamilia.ObtenerPorId(id);
        }

        public static RolEe ObtenerPatentePorId(int id)
        {
            return DalPatente.Obtener(id)[0];
        }

        public static List<RolEe> ObtenerPatentesPorFamilia(FamiliaEe familiaEe)
        {
            if (familiaEe.Patentes != null) return familiaEe.Patentes;

            familiaEe.Patentes = new List<RolEe>();
            familiaEe.Patentes = ObtenerRolesPorFamiliaId(familiaEe.Id);
            return familiaEe.Patentes;
        }

        public static List<PatenteEe> ObtenerPatentes()
        {
            return DalPatente.Obtener();
        }
        public static List<RolEe> ObtenerRolesPorFamiliaId(int id)
        {
            return DalPatente.ObtenerRolesPorFamiliaId(id);
        }
        public static bool VerificarPatente(UsuarioEe usuarioEe, string patenteNombre)
        {
            ObtenerPatentesPorFamilia(ObtenerFamiliaPorUsuario(usuarioEe));
            return usuarioEe.Rol.TieneRol(patenteNombre);
        }

        public static bool VerSiFamiliaExiste(int id, string nombre)
        {
            return DalFamilia.VerSiFamiliaExiste(id, nombre);
        }
    }
}