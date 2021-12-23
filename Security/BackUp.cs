using DAL;
using EE;
using System;

namespace Security
{
    public static class BackUp
    {
        private static readonly BackupDal Dao = new BackupDal();

        public static bool RealizarBackUp(UsuarioEe usuarioLoggeado)
        {
            if (!Dao.BackUp()) return false;

            BitacoraManager.AgregarMensaje(new BitacoraMensajeEe
            {
                Titulo = "BackUp",
                Descripcion = "Se ha realizado un backUp",
                Tipo = Tipo.Info,
                Fecha = DateTime.Now,
                Usuario = usuarioLoggeado
            });

            return true;
        }

        public static bool RealizarRestore(string nombreArchivo, UsuarioEe usuarioLoggeado)
        {
            if (!Dao.Restore(nombreArchivo)) return false;

            BitacoraManager.AgregarMensaje(new BitacoraMensajeEe
            {
                Titulo = "Restore",
                Descripcion = "Se ha realizado un restore",
                Tipo = Tipo.Info,
                Fecha = DateTime.Now,
                Usuario = usuarioLoggeado
            });

            return true;
        }
    }
}