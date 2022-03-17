using DAL;
using EE;
using System.Collections.Generic;

namespace Security
{
    public static class RolManager
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

        public static List<RolEe> ObtenerPatentes(FamiliaEe familiaEe)
        {
            if (familiaEe.Patentes != null) return familiaEe.Patentes;

            familiaEe.Patentes = new List<RolEe>();
            familiaEe.Patentes = ObtenerPorFamilia(familiaEe.Id);
            return familiaEe.Patentes;
        }

        public static List<PatenteEe> ObtenerPatentes()
        {
            return DalPatente.Obtener();
        }
        
        public static RolEe ObtenerPatente(int id)
        {
            return DalPatente.Obtener(id)[0];
        }

        public static List<RolEe> ObtenerPorFamilia(int id)
        {
            return DalPatente.ObtenerPorFamilia(id);
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

        public static bool VerSiFamiliaExiste(int id, string nombre)
        {
            return DalFamilia.VerSiFamiliaExiste(id, nombre);
        }

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

        public static FamiliaEe ObtenerFamilia(UsuarioEe usuarioEe)
        {
            if (usuarioEe.Rol == null)
            {
                usuarioEe.Rol = DalFamilia.Obtener(usuarioEe);
            }
            return (FamiliaEe)usuarioEe.Rol;
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
            return usuarioEe.Rol.TieneRol(patenteNombre);
        }

        public static bool ModificarFamilia(UsuarioEe usuarioEe, FamiliaEe newFamilia)
        {
            DalFamilia.ModificarFamilia(usuarioEe.Id, newFamilia.Id);
            Dv.ActualizarDv();
            return true;
        }
    }
}