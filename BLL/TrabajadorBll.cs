using System.Collections.Generic;
using DAL;
using EE;
using Security;

namespace BLL {
	public static class TrabajadorManager {
		static UsuarioDal _dao = new UsuarioDal();

		public static SectorEe ObtenerSector(UsuarioEe us) {
			if(us.Sector == null) {
				us.Sector = SectorManager.Obtener(us);
			}
			return us.Sector;
		}

		public static List<SectorEe> ObtenerSectorJefes(UsuarioEe us) {
			var sectorDao = new SectorDal();
			return sectorDao.ObtenerPorJefeid(us.Id);
		}

		public static int Crear(UsuarioEe us) {
			if (UsuarioManager.Crear(us) == 0) {
				return 0;
			}

			_dao.AgregarPuesto(us);

			Dv.ActualizarDv();
			return us.Id;
		}

		public static void Actualizar(UsuarioEe us) {
			UsuarioManager.Actualizar(us);
			_dao.AgregarPuesto(us);

            Dv.ActualizarDv();
		}

	}
}
