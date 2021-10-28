using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using EE;

namespace DAL
{
    public class IdiomaDal : ConnectionDal
    {

        public Dictionary<string, string> ObtenerTextos(int idiomaid)
        {
            try
            {
                var query = new SqlCommand("SELECT c.tag, c.texto FROM control c JOIN idioma i ON i.id = c.idIdioma WHERE i.id = @idioma", Conn);
                query.Parameters.AddWithValue("@idioma", idiomaid);

                Conn.Open();
                var data = query.ExecuteReader();

                var result = new Dictionary<string, string>();
                while (data.Read())
                {
                    result.Add(data["tag"].ToString() ?? string.Empty, data["texto"].ToString());
                }
                Conn.Close();

                return result;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public IdiomaEe CargarDefault()
        {
            try
            {
                var query = new SqlCommand("SELECT TOP 1 id, nombre FROM idioma i", Conn);

                Conn.Open();
                var data = query.ExecuteReader();

                var result = new IdiomaEe();
                while (data.Read())
                {
                    result = CastDto(data);
                }
                Conn.Close();

                return result;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public List<IdiomaEe> Obtener()
        {
            try
            {
                var query = new SqlCommand("SELECT id, nombre FROM idioma i", Conn);

                Conn.Open();
                var data = query.ExecuteReader();

                var result = new List<IdiomaEe>();
                while (data.Read())
                {
                    result.Add(CastDto(data));
                }
                Conn.Close();

                return result;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public List<IdiomaEe> Obtener(int id)
        {
            try
            {
                var query = new SqlCommand("SELECT id, nombre FROM idioma WHERE id = @id", Conn);
                query.Parameters.AddWithValue("@id", id);

                Conn.Open();
                var data = query.ExecuteReader();

                var result = new List<IdiomaEe>();
                while (data.Read())
                {
                    result.Add(CastDto(data));
                }
                Conn.Close();

                return result;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public IdiomaEe CastDto(SqlDataReader data)
        {
            var result = new IdiomaEe()
            {
                Id = Convert.ToInt32(data["id"]),
                Nombre = data["Nombre"].ToString()
            };

            return result;
        }
    }
}
