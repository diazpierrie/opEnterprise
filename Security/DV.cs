using DAL;
using EE;
using System;
using System.Collections.Generic;
using System.Text;

namespace Security
{
    public static class Dv
    {
        private static readonly List<string> Errores = new List<string>();
        private static readonly DvDal Dao = new DvDal();

        public static bool VerificarDvh(string tabla)
        {
            var rows = Dao.VerificarDvh(tabla);

            if (rows.Count == 0)
            {
                return true;
            }

            var errorMsg = Sesion.ObtenerSesion().Idioma.Textos["dvh_table"] + tabla;
            BitacoraManager.AgregarMensaje(new BitacoraMensajeEe
            {
                Titulo = "Error DVH en BD",
                Descripcion = errorMsg,
                Tipo = Tipo.Error,
                Fecha = DateTime.Now,
                Usuario = Sesion.ObtenerSesion().Usuario
            });
            Errores.Add(errorMsg);

            foreach (var row in rows)
            {
                errorMsg = Sesion.ObtenerSesion().Idioma.Textos["error_row"] + row;
                Errores.Add(errorMsg);
                BitacoraManager.AgregarMensaje(new BitacoraMensajeEe
                {
                    Titulo = "Error DVV en BD",
                    Descripcion = errorMsg,
                    Tipo = Tipo.Error,
                    Fecha = DateTime.Now,
                    Usuario = Sesion.ObtenerSesion().Usuario
                });
            }

            return false;
        }

        public static bool VerificarDv()
        {
            var ok = true;

            foreach (var tabla in Dao.ObtenerTablas())
            {
                if (!Dao.VerificarDvv(tabla))
                {
                    ok = false;
                    var errorMsg = Sesion.ObtenerSesion().Idioma.Textos["dvv_table"] + tabla;
                    Errores.Add(errorMsg);

                    BitacoraManager.AgregarMensaje(new BitacoraMensajeEe
                    {
                        Titulo = "Error DVV en BD",
                        Descripcion = errorMsg,
                        Tipo = Tipo.Error,
                        Fecha = DateTime.Now,
                        Usuario = Sesion.ObtenerSesion().Usuario
                    });
                }
                if (!VerificarDvh(tabla))
                {
                    ok = false;
                }
            }

            return ok;
        }

        public static string ObtenerErrores()
        {
            var result = new StringBuilder();
            foreach (var error in Errores)
            {
                result.Append(error + "\n");
            }

            return result.ToString();
        }

        public static void ActualizarDv()
        {
            try
            {
                BorrarErrores();

                foreach (var tabla in Dao.ObtenerTablas())
                {
                    Dao.ActualizarDvh(tabla);
                    Dao.ActualizarDvv(tabla);
                }

                BitacoraManager.AgregarMensaje(new BitacoraMensajeEe
                {
                    Titulo = "Digitos verificadores",
                    Descripcion = "Los Digitos verificadores se han actualizado",
                    Tipo = Tipo.Info,
                    Usuario = Sesion.ObtenerSesion().Usuario
                });
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
        }

        private static void BorrarErrores()
        {
            Errores.Clear();
        }
    }
}