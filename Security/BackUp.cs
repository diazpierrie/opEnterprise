using System;
using DAL;
using EE;

namespace Security {
    public static class BackUp {
		static BackupDal _dao = new BackupDal();

        public static bool RealizarBackUp(UsuarioEe usuarioLoggeado) {
			if(_dao.BackUp()) {
				BitacoraManager.AgregarMensaje(new BitacoraMensajeEe {
					Titulo = "BackUp", 
					Descripcion = "Se ha realizado un backUp", 
					Tipo = Tipo.Info, 
					Fecha = DateTime.Now,
					Usuario = usuarioLoggeado
				});

				return true;
			}

			return false;
		}

		public static bool RealizarRestore(string nombreArchivo, UsuarioEe usuarioLoggeado) {
			if (_dao.Restore(nombreArchivo)) {
				BitacoraManager.AgregarMensaje(new BitacoraMensajeEe {
					Titulo = "Restore",
					Descripcion = "Se ha realizado un restore",
					Tipo = Tipo.Info,
					Fecha = DateTime.Now,
					Usuario = usuarioLoggeado
				});

				return true;
			}

			return false;
		}
	}
}
