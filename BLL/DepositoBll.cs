using System;
using System.Collections.Generic;
using DAL;
using EE;
using Security;

namespace BLL
{
    public class DepositoBll
    {
        static DepositoDal _dal = new DepositoDal();

        public static void Actualizar(DepositoEe deposito)
        {
            _dal.Actualizar(deposito);
            BitacoraManager.AgregarMensajeControl("Deposito actualizado: ", deposito);

            Dv.ActualizarDv();
        }

        public static void Eliminar(DepositoEe deposito)
        {
            _dal.Borrar(deposito.Id);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Deposito Eliminado ", deposito);
        }

        public static int Crear(DepositoEe deposito)
        {
            if (_dal.ObtenerDepositoPorNombre(deposito.Nombre) != null)
            {
                return 0;
            }

            deposito.Id = _dal.Crear(deposito);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Deposito creado: ", deposito);

            return deposito.Id;
        }
        

        public static List<DepositoEe> ObtenerActivos(string name = null)
        {
            return _dal.ObtenerActivos(name);
        }

        public static DepositoEe Obtener(int id)
        {
            return _dal.Obtener(id);
        }

        public static List<DepositoEe> ObtenerDepositosDeUsuario(UsuarioEe user)
        {
            return _dal.Obtener(user);
        }

        public static int AsignarEmpleadoConDeposito(UsuarioEe user, DepositoEe depo)
        {
            if (!_dal.ObtenerAsignacionEmpleadoConDeposito(user, depo))
            {
                return _dal.AsignarEmpleadoConDeposito(user, depo);
            }
            else
            {
                return 0;
            }
        }

        public static bool DesasignarEmpleadoConDeposito(UsuarioEe user, DepositoEe depo)
        {
            return _dal.DesasignarEmpleadoConDeposito(user, depo);
        }

    }
}
