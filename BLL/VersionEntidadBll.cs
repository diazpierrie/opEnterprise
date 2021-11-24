using DAL;
using EE;
using System.Collections.Generic;

namespace BLL
{
    public class VersionEntidadBll
    {
        private static VersionEntidadDal _dal = new VersionEntidadDal();

        public static List<VersionEntidadEe> Obtener(string name, int id)
        {
            return _dal.Obtener(name, id);
        }
    }
}