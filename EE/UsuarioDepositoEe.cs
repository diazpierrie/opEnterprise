using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EE
{
    public class UsuarioDepositoEe : IdentityEe
    {
        public int IdUsuario { get; set; }
        public int IdDeposito{ get; set; }
    }
}
