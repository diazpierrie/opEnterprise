using DAL;
using EE;
using System.Collections.Generic;

namespace BLL
{
    public static class PedidoEstadoBll
    {
        private static readonly PedidoEstadoDal Dal = new PedidoEstadoDal();

        public static List<PedidoEstadoEe> Obtener()
        {
            return Dal.Obtener();
        }

        public static PedidoEstadoEe Obtener(int id)
        {
            return Dal.Obtener(id);
        }
    }
}