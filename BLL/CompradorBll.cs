using DAL;
using EE;
using Security;
using System.Collections.Generic;

namespace BLL
{
    public static class CompradorBll
    {
        private static readonly CompradorDal Dao = new CompradorDal();

        public static List<CompradorEe> Obtener(string name = null)
        {
            return Dao.Obtener(name);
        }

        public static int Crear(CompradorEe obj)
        {
            obj.Id = Dao.Crear(obj);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Nuevo Comprador", obj);

            return obj.Id;
        }

        public static bool PromoverASocio(CompradorEe cliente)
        {
            return Dao.PromoverASocio(cliente.Id);
        }
    }
}