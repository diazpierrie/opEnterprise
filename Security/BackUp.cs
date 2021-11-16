﻿using System;
using DAL;
using EE;

namespace Security
{
    public static class BackUp
    {
        private static BackupDal _dao = new BackupDal();

        public static bool RealizarBackUp(UsuarioEe usuarioLoggeado)
        {
            if (!_dao.BackUp()) return false;

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
            if (!_dao.Restore(nombreArchivo)) return false;

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
