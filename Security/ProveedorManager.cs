using System.Collections.Generic;
using DAL;
using EE;

namespace Security
{
    public static class ProveedorManager
    {
        static ProveedorDal _dal = new ProveedorDal();

        public static void Actualizar(ProveedorEe proveedor)
        {
            _dal.Actualizar(proveedor);

            BitacoraManager.AgregarMensajeControl("Proveedor Actualizado: ", proveedor);

            Dv.ActualizarDv();
        }

        public static void Eliminar(ProveedorEe proveedor)
        {
            _dal.Eliminar(proveedor.Id);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Proveedor Eliminado ", proveedor);
        }

        public static int Crear(ProveedorEe proveedor)
        {
            proveedor.Id = _dal.Crear(proveedor);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Proveedor Creado: ", proveedor);

            return proveedor.Id;
        }

        public static List<ProveedorEe> Obtener(string name = "")
        {
            return _dal.Obtener(name);
        }


        public static ProveedorEe Obtener(int id)
        {
            return _dal.Obtener(id);
        }
    }

}
