using DAL;
using EE;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Security
{
    public static class Dv
    {
        private static List<string> _errores = new List<string>();
        private static DvDal _dao = new DvDal();

        public static bool VerificarDvh(string tabla)
        {
            var rows = _dao.VerificarDvh(tabla);

            if (rows.Count == 0)
            {
                return true;
            }

            var errorMsg = Sesion.ObtenerSesion().Idioma.Textos["dvh_table"] + tabla;
            _errores.Add(errorMsg);

            foreach (var row in rows)
            {
                errorMsg = Sesion.ObtenerSesion().Idioma.Textos["error_row"] + row;
                _errores.Add(errorMsg);
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

            foreach (var tabla in _dao.ObtenerTablas())
            {
                if (!_dao.VerificarDvv(tabla))
                {
                    ok = false;
                    var errorMsg = Sesion.ObtenerSesion().Idioma.Textos["dvv_table"] + tabla;
                    _errores.Add(errorMsg);

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
            foreach (var error in _errores)
            {
                result.Append(error + "\n");
            }

            return result.ToString();
        }

        public static async void ActualizarDv()
        {
            await Task.Run(() =>
            {
                try
                {
                    BorrarErrores();

                    foreach (var tabla in _dao.ObtenerTablas())
                    {
                        _dao.ActualizarDvh(tabla);
                        _dao.ActualizarDvv(tabla);
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
            });
        }

        //public static void ActualizarDv()
        //{
        //        try
        //        {
        //            BorrarErrores();

        //            foreach (var tabla in _dao.ObtenerTablas())
        //            {
        //                _dao.ActualizarDvh(tabla);
        //                _dao.ActualizarDvv(tabla);
        //            }

        //            BitacoraManager.AgregarMensaje(new BitacoraMensajeEe
        //            {
        //                Titulo = "Digitos verificadores",
        //                Descripcion = "Los Digitos verificadores se han actualizado",
        //                Tipo = Tipo.Info,
        //                Usuario = Sesion.ObtenerSesion().Usuario
        //            });
        //        }
        //        catch (Exception ex)
        //        {
        //            Console.WriteLine(ex);
        //        }
        //}

        private static void BorrarErrores()
        {
            _errores.Clear();
        }
    }
}