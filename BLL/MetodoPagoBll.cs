using DAL;
using EE;
using System.Collections.Generic;

namespace BLL
{
    public static class MetodoPagoBll
    {
        private static readonly MetodoPagoDal Dal = new MetodoPagoDal();

        public static List<MetodoPagoEe> Obtener()
        {
            return Dal.Obtener();
        }
    }
}