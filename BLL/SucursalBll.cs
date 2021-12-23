using DAL;
using EE;
using Security;
using System.Collections.Generic;

namespace BLL
{
    public class SucursalBll
    {
        private static readonly SucursalDal Dal = new SucursalDal();

        public static void Actualizar(SucursalEe sucursal)
        {
            Dal.Actualizar(sucursal);
            BitacoraManager.AgregarMensajeControl("Sucursal actualizado: ", sucursal);

            Dv.ActualizarDv();
        }

        public static void Eliminar(SucursalEe sucursal)
        {
            Dal.Borrar(sucursal.Id);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Sucursal Eliminado ", sucursal);
        }

        public static int Crear(SucursalEe sucursal)
        {
            if (Dal.ObtenerSucursalPorNombre(sucursal.Nombre) != null)
            {
                return 0;
            }

            sucursal.Id = Dal.Crear(sucursal);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Sucursal creado: ", sucursal);

            return sucursal.Id;
        }

        public static List<SucursalEe> ObtenerActivos(string name = null)
        {
            return Dal.ObtenerActivos(name);
        }

        public static SucursalEe Obtener(int id)
        {
            return Dal.Obtener(id);
        }

        public static List<SucursalEe> ObtenerSucursalesDeUsuario(UsuarioEe user)
        {
            return Dal.Obtener(user);
        }

        public static int AsignarEmpleadoConSucursal(UsuarioEe user, SucursalEe depo)
        {
            if (!Dal.ObtenerAsignacionEmpleadoConSucursal(user, depo))
            {
                return Dal.AsignarEmpleadoConSucursal(user, depo);
            }

            return 0;
        }

        public static bool DesasignarEmpleadoConSucursal(UsuarioEe user, SucursalEe depo)
        {
            return Dal.DesasignarEmpleadoConSucursal(user, depo);
        }
    }
}