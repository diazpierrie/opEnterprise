using System;

namespace EE {
    public class UsuarioEe : PersonaEe {
        public string NombreUsuario { get; set; }
        public int Dni { get; set; }
        public string Mail { get; set; }
        public new DateTime FechaCreacion { get; set; }
        public bool Bloqueado { get; set; }
        public PermisoEe Permiso { get; set; }
        public SectorEe Sector { get; set; }
        public PuestoEe Puesto { get; set; }


public string NombreCompleto { get { return $"{Apellido}, {Nombre}"; } }
	}
}
