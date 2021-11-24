using DAL;
using EE;
using Security;
using System.Collections.Generic;

namespace BLL
{
    public class CompradorBll
    {
        private static CompradorDal _dao = new CompradorDal();

        public static CompradorEe BuscarComprador(int id)
        {
            return _dao.Obtener(id);
        }

        public static List<CompradorEe> Obtener(string name = null)
        {
            return _dao.Obtener(name);
        }

        public static int Crear(CompradorEe obj)
        {
            obj.Id = _dao.Crear(obj);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Nuevo Comprador", obj);

            return obj.Id;
        }
    }
}