using DAL;
using EE;
using System.Collections.Generic;
using System.Linq;

namespace Security
{
    public static class IdiomaManager
    {
        private static readonly IdiomaDal Dao = new IdiomaDal();

        public static void Cambiar(IdiomaEe sesionidioma, int idiomaid)
        {
            var newidioma = Dao.Obtener(idiomaid)[0];

            sesionidioma.Id = newidioma.Id;
            sesionidioma.Nombre = newidioma.Nombre;
            sesionidioma.Textos = Dao.ObtenerTextos(newidioma.Id);

            var textosDefault = Dao.ObtenerTextos(1);

            foreach (var dicc in textosDefault.Where(dicc => sesionidioma.Textos[dicc.Key] == string.Empty))
            {
                sesionidioma.Textos[dicc.Key] = textosDefault[dicc.Key];
            }

            foreach (var form in sesionidioma.Forms)
            {
                form.ActualizarTextos();
            }
        }

        public static void Cambiar(IdiomaEe idioma, int idiomaid, IIUpdatable form)
        {
            var newidioma = Dao.Obtener(idiomaid)[0];

            idioma.Id = newidioma.Id;
            idioma.Nombre = newidioma.Nombre;
            idioma.Textos = Dao.ObtenerTextos(newidioma.Id);
            form.ActualizarTextos();
        }

        public static void Cargar(IdiomaEe idioma)
        {
            idioma.Textos = Dao.ObtenerTextos(idioma.Id);
        }

        public static List<IdiomaEe> Obtener()
        {
            return Dao.ObtenerActivos();
        }

        public static List<IdiomaEe> ObtenerCompletos()
        {
            return Dao.ObtenerCompletos();
        }

        public static void CargarDefault()
        {
            Sesion.ObtenerSesion().Idioma = Dao.CargarDefault();
        }

        public static int Crear()
        {
            var idiomaId = Dao.Crear();
            Dao.CrearControles(idiomaId);
            return idiomaId;
        }

        public static List<ControlEe> ObtenerControles(int idiomaId)
        {
            return Dao.ObtenerControles(idiomaId);
        }

        public static void ActualizarControles(List<ControlEe> controlesModificados)
        {
            Dao.ActualizarControles(controlesModificados);
        }

        public static void ActualizarIdioma(IdiomaEe idioma, string nombreNuevo)
        {
            Dao.ActualizarIdioma(idioma, nombreNuevo);
        }

        public static void Eliminar(IdiomaEe idioma)
        {
            Dao.EliminarIdioma(idioma.Id);
            //_dao.EliminarControlesIdioma(idioma.Id);

            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Idioma eliminado: ", idioma);
        }
    }
}