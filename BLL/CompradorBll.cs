using DAL;
using EE;
using Security;
using System.Collections.Generic;

namespace BLL
{
    public class CompradorBll
    {
        private static readonly CompradorDal Dao = new CompradorDal();

        public static CompradorEe BuscarComprador(int id)
        {
            return Dao.Obtener(id);
        }

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
    }
}