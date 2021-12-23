using DAL;
using EE;
using Security;
using System.Collections.Generic;

namespace BLL
{
    public class ProductoBll
    {
        private static readonly ProductoDal Dal = new ProductoDal();

        public static void Actualizar(ProductoEe producto)
        {
            Dal.Actualizar(producto);
            BitacoraManager.AgregarMensajeControl("Producto actualizado: ", producto);

            Dv.ActualizarDv();
        }

        public static int Crear(ProductoEe sucursal)
        {
            if (Dal.Obtener(sucursal.Id) != null)
            {
                return 0;
            }

            sucursal.Id = Dal.Crear(sucursal);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Producto creado: ", sucursal);

            return sucursal.Id;
        }

        public static void Eliminar(ProductoEe producto)
        {
            Dal.Borrar(producto.Id);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Producto Eliminado ", producto);
        }
        public static ProductoEe Obtener(int id)
        {
            return Dal.Obtener(id);
        }

        public static List<ProductoEe> ObtenerActivos()
        {
            return Dal.ObtenerActivos();
        }

        public static List<ProductoEdificioEe> ObtenerDeposito(DepositoEe deposito)
        {
            return Dal.ObtenerDeposito(deposito);
        }

        public static List<ProductoEe> ObtenerPorNombre(string name = null)
        {
            return name == null ? null : Dal.ObtenerActivos(name);
        }

        public static List<ProductoEdificioEe> ObtenerPorSucursal(SucursalEe sucursal)
        {
            return Dal.ObtenerPorSucursal(sucursal);
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
        public static IList<ProductoEdificioEe> ObtenerTodosDeposito()
        {
            return Dal.ObtenerTodosDeposito();
        }
    }
}