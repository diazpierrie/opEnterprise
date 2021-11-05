using System.Collections.Generic;
using DAL;
using EE;

namespace BLL
{
    public static class VentaEstadoBll
    {
        private static readonly VentaEstadoDal Dal = new VentaEstadoDal();

        public static List<VentaEstadoEe> Obtener()
        {
            return Dal.Obtener();
        }
    }
}
