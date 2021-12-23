using DAL;
using EE;
using Security;
using System.Collections.Generic;

namespace BLL
{
    public class ProveedorBll
    {
        private static readonly ProveedorDal Dal = new ProveedorDal();

        public static void Actualizar(ProveedorEe proveedor)
        {
            Dal.Actualizar(proveedor);

            BitacoraManager.AgregarMensajeControl("Proveedor actualizado: ", proveedor);

            Dv.ActualizarDv();
        }

        public static int Crear(ProveedorEe proveedor)
        {
            proveedor.Id = Dal.Crear(proveedor);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Proveedor creado: ", proveedor);

            return proveedor.Id;
        }

        public static void Eliminar(ProveedorEe proveedor)
        {
            Dal.Eliminar(proveedor.Id);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Proveedor eliminado ", proveedor);
        }

        public static List<ProveedorEe> Obtener(string name = null)
        {
            return Dal.Obtener(name);
        }

        public static ProveedorEe Obtener(int id)
        {
            return Dal.Obtener(id);
        }

        public static List<PenalizacionMotivoEe> ObtenerMotivosPenalizacion()
        {
            return Dal.ObtenerMotivosPenalizacion();
        }

        public static List<PenalizacionProveedorEe> ObtenerPenalizaciones(ProveedorEe selectedProveedor)
        {
            return Dal.ObtenerPenalizaciones(selectedProveedor);
        }

        public static int Penalizar(ProveedorEe proveedor, int idMotivo)
        {
            return Dal.Penalizar(proveedor, idMotivo);
        }

        public static bool Restaurar(ProveedorEe proveedorAntes, ProveedorEe proveedorDespues)
        {
            return Dal.Restaurar(proveedorAntes.Id, proveedorDespues);
        }
    }
}