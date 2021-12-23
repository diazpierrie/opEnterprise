using DAL;
using EE;
using System.Collections.Generic;

namespace Security
{
    public static class ProveedorManager
    {
        private static readonly ProveedorDal Dal = new ProveedorDal();

        public static void Actualizar(ProveedorEe proveedor)
        {
            Dal.Actualizar(proveedor);

            BitacoraManager.AgregarMensajeControl("Proveedor Actualizado: ", proveedor);

            Dv.ActualizarDv();
        }

        public static void Eliminar(ProveedorEe proveedor)
        {
            Dal.Eliminar(proveedor.Id);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Proveedor Eliminado ", proveedor);
        }

        public static int Crear(ProveedorEe proveedor)
        {
            proveedor.Id = Dal.Crear(proveedor);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Proveedor Creado: ", proveedor);

            return proveedor.Id;
        }

        public static List<ProveedorEe> Obtener(string name = "")
        {
            return Dal.Obtener(name);
        }

        public static ProveedorEe Obtener(int id)
        {
            return Dal.Obtener(id);
        }
    }
}