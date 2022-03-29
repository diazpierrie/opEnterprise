using EE;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace DAL
{
    public class IdiomaDal : ConnectionDal
    {
        public bool ActualizarControles(List<ControlEe> controlesModificados)
        {
            var result = false;
            foreach (var query in controlesModificados.Select(control => new SqlCommand($"UPDATE control SET texto = '{control.Texto}' WHERE id = {control.Id} ", Conn)))
            {
                result = ExecuteQuery(query);
            }

            return result;
        }

        public bool ActualizarIdioma(IdiomaEe idioma, string nombreNuevo)
        {
            var query = new SqlCommand($"UPDATE idioma SET nombre = '{nombreNuevo}' WHERE id = {idioma.Id} ", Conn);
            query.Parameters.AddWithValue("@id", idioma.Id);

            return ExecuteQuery(query);
        }

        public IdiomaEe CargarDefault()
        {
            try
            {
                var query = new SqlCommand("SELECT TOP 1 id, nombre FROM idioma i WHERE activo = 1", Conn);

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

        public int Crear()
        {
            var columnas = new List<string> { "Nombre", "activo" };
            var valores = new List<string> { "Lenguaje sin nombre", 1.ToString() };

            return Insert("idioma", columnas.ToArray(), valores.ToArray());
        }

        public bool CrearControles(int idIdioma)
        {
            try
            {
                const string strQuery = "INSERT INTO control " +
                                        "SELECT @idIdioma " +
                                        ",tag " +
                                        ",texto = '' " +
                                        "FROM control " +
                                        "WHERE idIdioma = 1";

                var query = new SqlCommand(strQuery, Conn);
                query.Parameters.AddWithValue("@idIdioma", idIdioma);

                if (Conn.State == ConnectionState.Open)
                {
                    return Convert.ToBoolean(0);
                }

                Conn.Open();
                var resultado = query.ExecuteNonQuery();
                Conn.Close();
                return Convert.ToBoolean(resultado);
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return Convert.ToBoolean(0);
            }
        }

        public bool EliminarIdioma(int idiomaId)
        {
            var query = new SqlCommand("UPDATE idioma SET activo = 0 WHERE id = @id", Conn);
            query.Parameters.AddWithValue("@id", idiomaId);

            return ExecuteQuery(query);
        }

        public List<IdiomaEe> Obtener(int id)
        {
            try
            {
                var query = new SqlCommand("SELECT id, nombre FROM idioma WHERE id = @id AND activo = 1", Conn);
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
                return new List<IdiomaEe>();
            }
        }

        public List<IdiomaEe> ObtenerActivos()
        {
            try
            {
                var query = new SqlCommand("SELECT id, nombre FROM idioma i WHERE activo = 1", Conn);

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
                return new List<IdiomaEe>();
            }
        }

        public List<IdiomaEe> ObtenerCompletos()
        {
            try
            {
                var query = new SqlCommand("SELECT id, nombre " +
                                           "FROM idioma i " +
                                           "WHERE activo = 1 " +
                                           "EXCEPT " +
                                           "SELECT distinct i.id, i.nombre " +
                                           "FROM idioma as i " +
                                           "INNER JOIN control as c ON i.id = c.idIdioma " +
                                           "WHERE i.activo = 1 AND c.texto = ''", Conn);

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
                return new List<IdiomaEe>();
            }
        }

        public List<ControlEe> ObtenerControles(int idiomaId)
        {
            try
            {
                var query = new SqlCommand("SELECT id, idIdioma, tag, texto " +
                                                  "FROM control " +
                                                  "WHERE idIdioma = @idIdioma ORDER BY tag", Conn);
                query.Parameters.AddWithValue("@idIdioma", idiomaId);

                Conn.Open();
                var data = query.ExecuteReader();

                var result = new List<ControlEe>();
                while (data.Read())
                {
                    result.Add(CastControlDto(data));
                }
                Conn.Close();

                return result;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return new List<ControlEe>();
            }
        }

        public Dictionary<string, string> ObtenerTextos(int idiomaid)
        {
            try
            {
                var query = new SqlCommand("SELECT c.tag, c.texto FROM control c JOIN idioma i ON i.id = c.idIdioma WHERE i.id = @idioma ORDER BY tag", Conn);
                query.Parameters.AddWithValue("@idioma", idiomaid);

                Conn.Open();
                var data = query.ExecuteReader();

                var result = new Dictionary<string, string>();
                while (data.Read())
                {
                    result.Add(data["tag"].ToString(), data["texto"].ToString());
                }
                Conn.Close();

                return result;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return new Dictionary<string, string>();
            }
        }

        private static ControlEe CastControlDto(SqlDataReader data)
        {
            var result = new ControlEe
            {
                Id = Convert.ToInt32(data["id"]),
                IdIdioma = int.Parse(data["IdIdioma"].ToString()),
                Tag = data["Tag"].ToString(),
                Texto = data["Texto"].ToString(),
            };

            return result;
        }

        private static IdiomaEe CastDto(SqlDataReader data)
        {
            var result = new IdiomaEe
            {
                Id = Convert.ToInt32(data["id"]),
                Nombre = data["Nombre"].ToString()
            };

            return result;
        }
    }
}