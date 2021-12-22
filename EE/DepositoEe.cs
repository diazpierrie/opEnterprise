namespace EE
{
    public class DepositoEe : EntidadFiscalEe
    {
        public override string ToString()
        {
            return Sesion.ObtenerSesion().Idioma.Textos["deposit"] + " " + Nombre;
        }
    }
}