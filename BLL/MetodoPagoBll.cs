using System.Collections.Generic;
using DAL;
using EE;

namespace BLL
{
    public class MetodoPagoBll
    {
        private static readonly MetodoPagoDal Dal = new MetodoPagoDal();

        public static List<MetodoPagoEe> Obtener()
        {
            return Dal.Obtener();
        }


    }
}
