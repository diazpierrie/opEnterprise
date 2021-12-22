using System;
using System.Collections.Generic;

namespace EE
{
    public class UsuarioEe : PersonaEe
    {
        public string NombreUsuario { get; set; }
        public new DateTime FechaCreacion { get; set; }
        public PermisoEe Permiso { get; set; }
        public PuestoEe Puesto { get; set; }
        public List<DepositoEe> Depositos { get; set; }
        public List<SucursalEe> Sucursales { get; set; }
        public bool Bloqueado { set; get; }

        public string NombreCompleto => $"{Apellido}, {Nombre}";

        public override string ToString()
        {
            return NombreCompleto;
        }
    }
}