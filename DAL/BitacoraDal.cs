using EE;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;

namespace DAL
{
    public class BitacoraDal : ConnectionDal
    {
        public int AgregarMensaje(BitacoraMensajeEe mensaje)
        {
            string[] columns = { "fecha", "Titulo", "Descripcion", "tipo", "idUsuario" };
            var userid = mensaje.Usuario?.Id ?? 0;
            string[] values = { DateTime.Now.ToString(CultureInfo.InvariantCulture), mensaje.Titulo, mensaje.Descripcion, mensaje.Tipo.ToString(), userid.ToString() };
            return Insert("bitacora", columns, values);
        }

        public List<BitacoraMensajeEe> Obtener(DateTime desde, DateTime hasta, string tipo = null)
        {
            try
            {
                var consultaSql = $"SELECT id, fecha, titulo, Descripcion, tipo, idUsuario FROM bitacora WHERE fecha BETWEEN '{desde:yyyy-MM-dd}' AND '{hasta:yyyy-MM-dd} 23:59:59'";

                if (tipo != null)
                {
                    consultaSql += $" AND tipo LIKE '%{tipo}%'";
                }

                var query = new SqlCommand(consultaSql, Conn);
                Conn.Open();
                var data = query.ExecuteReader();

                var mensajes = new List<BitacoraMensajeEe>();
                while (data.Read())
                {
                    mensajes.Add(CastDto(data));
                }
                Conn.Close();

                return mensajes;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return new List<BitacoraMensajeEe>();
            }
        }

        private static BitacoraMensajeEe CastDto(SqlDataReader data)
        {
            var result = new BitacoraMensajeEe
            {
                Id = Convert.ToInt32(data["id"]),
                Fecha = Convert.ToDateTime(data["fecha"].ToString()),
                Titulo = data["Titulo"].ToString(),
                Descripcion = data["Descripcion"].ToString()
            };
            switch (data["tipo"].ToString())
            {
                case "Error":
                    result.Tipo = Tipo.Error;
                    break;

                case "Info":
                    result.Tipo = Tipo.Info;
                    break;

                case "Warning":
                    result.Tipo = Tipo.Warning;
                    break;

                case "Control":
                    result.Tipo = Tipo.Control;
                    break;

                default:
                    result.Tipo = Tipo.Info;
                    break;
            }
            result.Usuario = new UsuarioEe
            {
                Id = Convert.ToInt32(data["idUsuario"])
            };

            return result;
        }
    }
}