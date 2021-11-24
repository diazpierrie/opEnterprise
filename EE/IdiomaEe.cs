using System.Collections.Generic;

namespace EE
{
    public class IdiomaEe : IdentityEe
    {
        private string _nombre;

        public string Nombre
        {
            get => _nombre;
            set => _nombre = value ?? "Castellano";
        }

        public List<IIUpdatable> Forms = new List<IIUpdatable>();
        public Dictionary<string, string> Textos = new Dictionary<string, string>();

        public override string ToString()
        {
            return Nombre;
        }
    }
}