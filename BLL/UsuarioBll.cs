using DAL;
using EE;
using Security;
using System;
using System.Collections.Generic;

namespace BLL
{
    public class UsuarioBll
    {
        private static readonly UsuarioDal Dal = new UsuarioDal();

        public static void Actualizar(UsuarioEe usuario)
        {
            Dal.Actualizar(usuario);
            PermisosManager.ModificarFamilia(usuario, PermisosManager.ObtenerFamilia(usuario));

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

            usuario.Id = Dal.Crear(usuario, Encriptador.Encriptar("123456"), PermisosManager.ObtenerFamilia(usuario));
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Usuario creado: ", usuario);

            return usuario.Id;
        }

        public static bool ActualizarPassword(UsuarioEe usuario, string oldPass, string newPass)
        {
            if (Dal.ObtenerPasswordPorid(usuario.Id).Equals(Encriptador.Encriptar(oldPass)))
            {
                Dal.ActualizarPassword(usuario.Id, Encriptador.Encriptar(newPass));

                BitacoraManager.AgregarMensaje(new BitacoraMensajeEe
                {
                    Titulo = "Cambio de password",
                    Descripcion = "Se ha realizado el cambio de contrasena del usuario: " + usuario.Id,
                    Tipo = Tipo.Info,
                    Fecha = DateTime.Now,
                    Usuario = Sesion.ObtenerSesion().Usuario
                });

                Dv.ActualizarDv();
                return true;
            }

            return false;
        }

        public static List<UsuarioEe> Obtener(string name = null)
        {
            return Dal.Obtener(name);
        }

        public static List<UsuarioEe> ObtenerActivos(string name = null)
        {
            return Dal.ObtenerActivos(name);
        }

        public static UsuarioEe Obtener(int id)
        {
            return Dal.Obtener(id);
        }
    }
}