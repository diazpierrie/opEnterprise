using DAL;
using EE;
using Security;
using System.Collections.Generic;

namespace BLL
{
    public static class UsuarioBll
    {
        private static readonly UsuarioDal Dal = new UsuarioDal();

        public static void Actualizar(UsuarioEe usuario)
        {
            Dal.Actualizar(usuario);
            RolManager.ModificarFamilia(usuario, RolManager.ObtenerFamiliaPorUsuario(usuario));

            BitacoraManager.AgregarMensajeControl("Usuario actualizado: ", usuario);

            Dv.ActualizarDv();
        }

        public static void Eliminar(UsuarioEe usuario)
        {
            Dal.Eliminar(usuario.Id);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Usuario Eliminado ", usuario);
        }

        public static int Crear(UsuarioEe usuario)
        {
            if (Dal.ObtenerPorNombreUsuario(usuario.NombreUsuario) != null)
            {
                return 0;
            }

            usuario.Id = Dal.Crear(usuario, Encriptador.Encriptar("123456"));
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Usuario creado: ", usuario);

            return usuario.Id;
        }

        public static List<UsuarioEe> ObtenerActivos(string name = null)
        {
            return Dal.ObtenerActivos(name);
        }

        public static UsuarioEe Obtener(int id)
        {
            return Dal.Obtener(id);
        }

        public static List<UsuarioEe> Obtener()
        {
            return Dal.Obtener();
        }

        public static void DesbloquearUsuario(UsuarioEe selectedEmpleado)
        {
            Dal.ResetearIntentosFallidos(selectedEmpleado.NombreUsuario);
        }
    }
}