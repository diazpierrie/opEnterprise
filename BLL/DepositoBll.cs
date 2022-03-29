using DAL;
using EE;
using Security;
using System.Collections.Generic;

namespace BLL
{
    public static class DepositoBll
    {
        private static readonly DepositoDal Dal = new DepositoDal();

        public static void Actualizar(DepositoEe deposito)
        {
            Dal.Actualizar(deposito);
            BitacoraManager.AgregarMensajeControl("Deposito actualizado: ", deposito);

            Dv.ActualizarDv();
        }

        public static void Eliminar(DepositoEe deposito)
        {
            Dal.Borrar(deposito.Id);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Deposito Eliminado ", deposito);
        }

        public static int Crear(DepositoEe deposito)
        {
            if (Dal.ObtenerDepositoPorNombre(deposito.Nombre) != null)
            {
                return 0;
            }

            deposito.Id = Dal.Crear(deposito);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Deposito creado: ", deposito);

            return deposito.Id;
        }

        public static List<DepositoEe> ObtenerActivos(string name = null)
        {
            return Dal.ObtenerActivos(name);
        }

        public static DepositoEe Obtener(int id)
        {
            return Dal.Obtener(id);
        }

        public static List<DepositoEe> ObtenerDepositosDeUsuario(UsuarioEe user)
        {
            return Dal.Obtener(user);
        }

        public static int AsignarEmpleadoConDeposito(UsuarioEe user, DepositoEe depo)
        {
            if (!Dal.ObtenerAsignacionEmpleadoConDeposito(user, depo))
            {
                return Dal.AsignarEmpleadoConDeposito(user, depo);
            }

            return 0;
        }

        public static bool DesasignarEmpleadoConDeposito(UsuarioEe user, DepositoEe depo)
        {
            return Dal.DesasignarEmpleadoConDeposito(user, depo);
        }
    }
}