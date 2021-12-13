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

        public static int Crear(ProveedorEe proveedor)
        {
            proveedor.Id = _dal.Crear(proveedor);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Proveedor creado: ", proveedor);

            return proveedor.Id;
        }

        public static void Eliminar(ProveedorEe proveedor)
        {
            _dal.Eliminar(proveedor.Id);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Proveedor eliminado ", proveedor);
        }

        public static List<ProveedorEe> Obtener(string name = null)
        {
            return _dal.Obtener(name);
        }

        public static ProveedorEe Obtener(int id)
        {
            return _dal.Obtener(id);
        }

        public static List<PenalizacionMotivoEe> ObtenerMotivosPenalizacion()
        {
            return _dal.ObtenerMotivosPenalizacion();
        }

        public static List<PenalizacionProveedorEe> ObtenerPenalizaciones(ProveedorEe selectedProveedor)
        {
            return _dal.ObtenerPenalizaciones(selectedProveedor);
        }

        public static int Penalizar(ProveedorEe proveedor, int idMotivo)
        {
            return _dal.Penalizar(proveedor, idMotivo);
        }

        public static bool Restaurar(ProveedorEe proveedorAntes, ProveedorEe proveedorDespues)
        {
            return _dal.Restaurar(proveedorAntes.Id, proveedorDespues);
        }
    }
}