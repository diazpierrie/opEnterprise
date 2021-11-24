using DAL;
using EE;
using Security;
using System.Collections.Generic;

namespace BLL
{
    public class ProveedorBll
    {
        private static ProveedorDal _dal = new ProveedorDal();

        public static void Actualizar(ProveedorEe proveedor)
        {
            _dal.Actualizar(proveedor);

            BitacoraManager.AgregarMensajeControl("Proveedor actualizado: ", proveedor);

            Dv.ActualizarDv();
        }

        public static void Eliminar(ProveedorEe proveedor)
        {
            _dal.Eliminar(proveedor.Id);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Proveedor eliminado ", proveedor);
        }

        public static int Crear(ProveedorEe proveedor)
        {
            proveedor.Id = _dal.Crear(proveedor);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Proveedor creado: ", proveedor);

            return proveedor.Id;
        }

        public static List<ProveedorEe> Obtener(string name = null)
        {
            return _dal.Obtener(name);
        }

        public static ProveedorEe Obtener(int id)
        {
            return _dal.Obtener(id);
        }

        public static bool Restaurar(ProveedorEe proveedorAntes, ProveedorEe proveedorDespues)
        {
            return _dal.Restaurar(proveedorAntes.Id, proveedorDespues);
        }
    }
}