using DAL;
using EE;
using System.Collections.Generic;

namespace BLL
{
    public static class VersionEntidadBll
    {
        private static readonly VersionEntidadDal Dal = new VersionEntidadDal();

        public static List<VersionEntidadEe> Obtener(string name, int id)
        {
            return Dal.Obtener(name, id);
        }
    }
}