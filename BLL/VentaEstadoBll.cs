using DAL;
using EE;
using System.Collections.Generic;

namespace BLL
{
    public static class VentaEstadoBll
    {
        private static readonly VentaEstadoDal Dal = new VentaEstadoDal();

        public static List<EstadoEe> Obtener()
        {
            return Dal.Obtener();
        }
    }
}