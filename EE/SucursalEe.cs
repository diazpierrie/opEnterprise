namespace EE
{
    public class SucursalEe : EntidadFiscalEe
    {
        public override string ToString()
        {
            return Sesion.ObtenerSesion().Idioma.Textos["branch"] + " " + Nombre;
        }
    }
}