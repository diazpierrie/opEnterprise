using DAL;
using EE;
using Security;
using System.Collections.Generic;

namespace BLL
{
    public static class DireccionBll
    {
        private static readonly DireccionDal Dal = new DireccionDal();

        public static void Actualizar(DireccionEe direccion)
        {
            Dal.Actualizar(direccion);
            BitacoraManager.AgregarMensajeControl("Direccion actualizada: ", direccion);

            Dv.ActualizarDv();
        }

        public static void Eliminar(DireccionEe direccion)
        {
            Dal.Borrar(direccion.Id);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Direccion eliminada: ", direccion);
        }

        public static int Crear(DireccionEe direccion)
        {
            if (Dal.ObtenerSucursalPorCalle(direccion.Calle) != null)
            {
                return 0;
            }

            direccion.Id = Dal.Crear(direccion);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Direccion creada: ", direccion);

            return direccion.Id;
        }

        public static DireccionEe Obtener(int id)
        {
            return Dal.Obtener(id);
        }

        public static List<DireccionEe> ObtenerDireccionesDeUsuario(CompradorEe comprador)
        {
            return Dal.Obtener(comprador);
        }
    }
}