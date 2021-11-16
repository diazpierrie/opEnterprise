using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using EE;

namespace DAL
{
    public class NotificacionDal : ConnectionDal
    {
        public List<NotificacionEe> Obtener(UsuarioEe us)
        {
            try
            {
                var strQuery = $"SELECT id, fecha_creacion, leido, texto FROM notificaciones WHERE usuario_id = {us.Id} AND leido = 0";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var notificaciones = new List<NotificacionEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        notificaciones.Add(CastDto(data));
                    }
                }

                Conn.Close();
                return notificaciones;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public int ObtenerCantidad(UsuarioEe us)
        {
            try
            {
                var strQuery = $"SELECT count(id) as cantidad FROM notificaciones WHERE usuario_id = {us.Id} AND leido = 0";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var count = 0;

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        count = int.Parse(data["cantidad"].ToString());
                    }
                }

                Conn.Close();
                return count;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return 0;
            }
        }

        public int Crear(NotificacionEe notif)
        {
            string[] columns = { "usuario_id", "fecha_creacion", "leido", "texto" };
            string[] values = { notif.Usuario.Id.ToString(), DateTime.Now.ToString(CultureInfo.InvariantCulture), "0", notif.Texto };
            Insert("notificaciones", columns, values);

            return GetLastid("notificaciones");
        }

        public bool LeerTodas(UsuarioEe us)
        {
            var query = new SqlCommand("UPDATE notificaciones SET leido = 1 WHERE usuario_id = @id", Conn);
            query.Parameters.AddWithValue("@id", us.Id);

            return ExecuteQuery(query);
        }

        public NotificacionEe CastDto(SqlDataReader data)
        {
            var result = new NotificacionEe
            {
                Id = Convert.ToInt32(data["id"]),
                FechaCreacion = DateTime.Parse(data["fecha_creacion"].ToString()),
                Leido = int.Parse(data["leido"].ToString()) != 0,
                Texto = data["texto"].ToString()
            };

            return result;
        }
    }
}
