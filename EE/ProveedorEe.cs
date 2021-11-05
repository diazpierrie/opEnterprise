namespace EE
{
    public class ProveedorEe : EntidadFiscalEe
    {
        public int CantidadErrores { get; set; }
        public override string ToString()
        {
            return Nombre;
        }
    }
}
