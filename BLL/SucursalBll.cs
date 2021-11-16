using System.Collections.Generic;
using DAL;
using EE;
using Security;

namespace BLL
{
    public class SucursalBll
    {
        private static SucursalDal _dal = new SucursalDal();

        public static void Actualizar(SucursalEe sucursal)
        {
            _dal.Actualizar(sucursal);
            BitacoraManager.AgregarMensajeControl("Sucursal actualizado: ", sucursal);

            Dv.ActualizarDv();
        }

        public static void Eliminar(SucursalEe sucursal)
        {
            _dal.Borrar(sucursal.Id);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Sucursal Eliminado ", sucursal);
        }

        public static int Crear(SucursalEe sucursal)
        {
            if (_dal.ObtenerSucursalPorNombre(sucursal.Nombre) != null)
            {
                return 0;
            }

            sucursal.Id = _dal.Crear(sucursal);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Sucursal creado: ", sucursal);

            return sucursal.Id;
        }

        public static List<SucursalEe> ObtenerActivos(string name = null)
        {
            return _dal.ObtenerActivos(name);
        }

        public static SucursalEe Obtener(int id)
        {
            return _dal.Obtener(id);
        }

        public static List<SucursalEe> ObtenerSucursalesDeUsuario(UsuarioEe user)
        {
            return _dal.Obtener(user);
        }

        public static int AsignarEmpleadoConSucursal(UsuarioEe user, SucursalEe depo)
        {
            if (!_dal.ObtenerAsignacionEmpleadoConSucursal(user, depo))
            {
                return _dal.AsignarEmpleadoConSucursal(user, depo);
            }

            return 0;
        }

        public static bool DesasignarEmpleadoConSucursal(UsuarioEe user, SucursalEe depo)
        {
            return _dal.DesasignarEmpleadoConSucursal(user, depo);
        }

    }
}
