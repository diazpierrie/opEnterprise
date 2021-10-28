using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using EE;

namespace DAL
{
    public class BitacoraDal : ConnectionDal
    {
        public int AgregarMensaje(BitacoraMensajeEe mensaje)
        {
            string[] columns = { "fecha", "Titulo", "Descripcion", "tipo", "Usuario_id" };
            var userid = mensaje.Usuario != null ? mensaje.Usuario.Id : 0;
            string[] values = { DateTime.Now.ToString(CultureInfo.InvariantCulture), mensaje.Titulo, mensaje.Descripcion, mensaje.Tipo.ToString(), userid.ToString() };
            return Insert("bitacora", columns, values);
        }

        public List<BitacoraMensajeEe> Obtener(DateTime desde, DateTime hasta, string tipo = null)
        {
            try
            {
                var consultaSql = $"SELECT id, fecha, Titulo, Descripcion, tipo, Usuario_id FROM bitacora WHERE fecha BETWEEN '{desde.ToString("yyyy-MM-dd")}' AND '{hasta.ToString("yyyy-MM-dd")}  23:59:59'";

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
                return null;
            }
        }

        public BitacoraMensajeEe CastDto(SqlDataReader data)
        {
            var result = new BitacoraMensajeEe();
            result.Id = Convert.ToInt32(data["id"]);
            result.Fecha = Convert.ToDateTime(data["fecha"].ToString());
            result.Titulo = data["Titulo"].ToString();
            result.Descripcion = data["Descripcion"].ToString();
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
            result.Usuario = new UsuarioEe()
            {
                Id = Convert.ToInt32(data["Usuario_id"])
            };

            return result;
        }
    }
}

