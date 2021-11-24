using DAL;
using EE;
using Security;
using System;
using System.Collections.Generic;

namespace BLL
{
    public class UsuarioBll
    {
        private static UsuarioDal _dal = new UsuarioDal();

        public static void Actualizar(UsuarioEe usuario)
        {
            _dal.Actualizar(usuario);
            PermisosManager.ModificarFamilia(usuario, PermisosManager.ObtenerFamilia(usuario));

            BitacoraManager.AgregarMensajeControl("Usuario actualizado: ", usuario);

            Dv.ActualizarDv();
        }

        public static void Eliminar(UsuarioEe usuario)
        {
            _dal.Eliminar(usuario.Id);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Usuario Eliminado ", usuario);
        }

        public static int Crear(UsuarioEe usuario)
        {
            if (_dal.ObtenerPorNombreUsuario(usuario.NombreUsuario) != null)
            {
                return 0;
            }

            usuario.Id = _dal.Crear(usuario, Encriptador.Encriptar("123456"), PermisosManager.ObtenerFamilia(usuario));
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Usuario creado: ", usuario);

            return usuario.Id;
        }

        public static bool ActualizarPassword(UsuarioEe usuario, string oldPass, string newPass)
        {
            if (_dal.ObtenerPasswordPorid(usuario.Id).Equals(Encriptador.Encriptar(oldPass)))
            {
                _dal.ActualizarPassword(usuario.Id, Encriptador.Encriptar(newPass));

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
            return _dal.Obtener(name);
        }

        public static List<UsuarioEe> ObtenerActivos(string name = null)
        {
            return _dal.ObtenerActivos(name);
        }

        public static UsuarioEe Obtener(int id)
        {
            return _dal.Obtener(id);
        }
    }
}