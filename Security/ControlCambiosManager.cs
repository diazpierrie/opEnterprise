using DAL;
using EE;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;

namespace Security
{
    public static class ControlCambiosManager
    {
        private static readonly BitacoraDal Dao = new BitacoraDal();

        public static List<BitacoraMensajeEe> Obtener(DateTime desde, DateTime hasta, string tipo = null)
        {
            return Dao.Obtener(desde, hasta, tipo);
        }

        public static int AgregarMensaje(BitacoraMensajeEe mensaje)
        {
            return Dao.AgregarMensaje(mensaje);
        }

        public static int AgregarMensajeControl(string title, object obj)
        {
            return Dao.AgregarMensaje(new BitacoraMensajeEe
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