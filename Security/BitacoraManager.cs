using DAL;
using EE;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;

namespace Security
{
    public static class BitacoraManager
    {
        private static BitacoraDal _dao = new BitacoraDal();

        public static List<BitacoraMensajeEe> Obtener(DateTime desde, DateTime hasta, string tipo = null)
        {
            return _dao.Obtener(desde, hasta, tipo);
        }

        public static int AgregarMensaje(BitacoraMensajeEe mensaje)
        {
            return _dao.AgregarMensaje(mensaje);
        }

        public static int AgregarMensajeControl(string title, object obj)
        {
            return _dao.AgregarMensaje(new BitacoraMensajeEe
            {
                Usuario = Sesion.ObtenerSesion().Usuario,
                Tipo = Tipo.Control,
                Titulo = title,
                Descripcion = JsonConvert.SerializeObject(obj)
            });
        }

        public static string FormatJson(string json)
        {
            var result = json;
            try
            {
                dynamic parsedJson = JsonConvert.DeserializeObject(json);
                if (parsedJson != null) result = JsonConvert.SerializeObject(parsedJson, Formatting.Indented);
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
            }

            return result;
        }
    }
}