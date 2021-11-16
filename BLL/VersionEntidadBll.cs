using System.Collections.Generic;
using DAL;
using EE;

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
