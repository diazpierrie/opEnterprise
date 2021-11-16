using System.Collections.Generic;
using DAL;
using EE;

namespace Security
{
    public static class IdiomaManager
    {
        private static IdiomaDal _dao = new IdiomaDal();

        public static void Cambiar(IdiomaEe sesionidioma, int idiomaid)
        {
            var newidioma = _dao.Obtener(idiomaid)[0];

            sesionidioma.Id = newidioma.Id;
            sesionidioma.Nombre = newidioma.Nombre;
            sesionidioma.Textos = _dao.ObtenerTextos(newidioma.Id);

            foreach (var form in sesionidioma.Forms)
            {
                form.ActualizarTextos();
            }
        }

        public static void Cambiar(IdiomaEe idioma, int idiomaid, IIUpdatable form)
        {
            var newidioma = _dao.Obtener(idiomaid)[0];

            idioma.Id = newidioma.Id;
            idioma.Nombre = newidioma.Nombre;
            idioma.Textos = _dao.ObtenerTextos(newidioma.Id);
            form.ActualizarTextos();
        }

        public static void Cargar(IdiomaEe idioma)
        {
            idioma.Textos = _dao.ObtenerTextos(idioma.Id);
        }

        public static List<IdiomaEe> Obtener()
        {
            return _dao.Obtener();
        }

        public static List<IdiomaEe> Obtener(int id)
        {
            return _dao.Obtener(id);
        }

        public static void CargarDefault()
        {
            Sesion.ObtenerSesion().Idioma = _dao.CargarDefault();
        }

        public static int Crear()
        {
            var idiomaId = _dao.Crear();
            _dao.CrearControles(idiomaId);
            return idiomaId;
        }

        public static List<ControlEe> ObtenerControles(int idiomaId)
        {
            return _dao.ObtenerControles(idiomaId);
        }

        public static void ActualizarControles(List<ControlEe> controlesModificados)
        {
            _dao.ActualizarControles(controlesModificados);
        }

        public static void ActualizarIdioma(IdiomaEe idioma, string nombreNuevo)
        {
            _dao.ActualizarIdioma(idioma, nombreNuevo);
        }

        public static void Eliminar(IdiomaEe idioma)
        {
            _dao.EliminarIdioma(idioma.Id);
            //_dao.EliminarControlesIdioma(idioma.Id);

            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Idioma eliminado: ", idioma);
        }

    }
}
