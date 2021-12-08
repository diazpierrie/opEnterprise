using DAL;
using EE;
using Security;
using System.Collections.Generic;

namespace BLL
{
    public class ProductoBll
    {
        private static ProductoDal _dal = new ProductoDal();

        public static void Actualizar(ProductoEe producto)
        {
            _dal.Actualizar(producto);
            BitacoraManager.AgregarMensajeControl("Sucursal actualizado: ", producto);

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
            //if (_dal.ObtenerSucursalPorCalle(sucursal.Nombre) != null)
            //{
            //    return 0;
            //}

            //sucursal.Id = _dal.Crear(sucursal);
            //Dv.ActualizarDv();

            //BitacoraManager.AgregarMensajeControl("Sucursal creado: ", sucursal);

            return sucursal.Id;
        }

        public static List<ProductoEdificioEe> ObtenerPorSucursal(SucursalEe sucursal)
        {
            return _dal.ObtenerPorSucursal(sucursal);
        }

        public static ProductoEe Obtener(int id)
        {
            return _dal.Obtener(id);
        }

        public static List<ProductoEe> ObtenerActivos()
        {
            return _dal.ObtenerActivos();
        }

        //public static List<SucursalEe> ObtenerSucursalesDeUsuario(UsuarioEe user)
        //{
        //    return _dal.Obtener(user);
        //}

        //public static int AsignarEmpleadoConSucursal(UsuarioEe user, SucursalEe depo)
        //{
        //    if (!_dal.ObtenerAsignacionEmpleadoConSucursal(user, depo))
        //    {
        //        return _dal.AsignarEmpleadoConSucursal(user, depo);
        //    }
        //    else
        //    {
        //        return 0;
        //    }
        //}

        //public static bool DesasignarEmpleadoConSucursal(UsuarioEe user, SucursalEe depo)
        //{
        //    return _dal.DesasignarEmpleadoConSucursal(user, depo);
        //}

        public static List<ProductoEe> ObtenerPorNombre(string name = null)
        {
            return name == null ? null : _dal.ObtenerActivos(name);
        }

        public static IList<ProductoEdificioEe> ObtenerTodosDeposito()
        {
            return _dal.ObtenerTodosDeposito();
        }
    }
}