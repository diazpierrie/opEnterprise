using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using EE;

namespace DAL
{
    public class DireccionDal : ConnectionDal
    {
        private readonly CompradorDal _compradorDal = new CompradorDal();
        public DireccionEe Obtener(int id)
        {
            try
            {
                var strQuery = "SELECT id, idComprador, calle, localidad, provincia, pais, codigoPostal, activo" +
                               " FROM direccion " +
                               $" WHERE id = {id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                DireccionEe sucursal = null;

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        sucursal = CastDto(data);
                    }
                }

                Conn.Close();
                return sucursal;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public List<DireccionEe> Obtener(CompradorEe comprador)
        {
            try
            {
                var strQuery = "SELECT id, idComprador, calle, localidad, provincia, pais, codigoPostal, activo " +
                                    "FROM direccion  " +
                                    $"WHERE idComprador = {comprador.Id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var sucus = new List<DireccionEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        sucus.Add(CastDto(data));
                    }
                }

                Conn.Close();
                return sucus;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public DireccionEe ObtenerSucursalPorCalle(string calle)
        {
            try
            {
                var strQuery = "SELECT id, idComprador, calle, localidad, provincia, pais, codigoPostal, activo " +
                               "FROM direccion " +
                               $"WHERE calle = {calle}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                DireccionEe sucursal = null;

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        sucursal = CastDto(data);
                    }
                }

                Conn.Close();
                return sucursal;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public List<DireccionEe> ObtenerActivos(string calle = null)
        {
            try
            {
                var strQuery = "SELECT id, idComprador, calle, localidad, provincia, pais, codigoPostal, activo " +
                                     "FROM direccion " +
                                     "WHERE activo = 1";

                if (calle != null)
                {
                    strQuery += " AND ( calle LIKE CONCAT('%', @name, '%')";
                }

                var query = new SqlCommand(strQuery, Conn);
                if (calle != null)
                {
                    query.Parameters.AddWithValue("@name", calle);
                }

                Conn.Open();
                var data = query.ExecuteReader();
                var sucus = new List<DireccionEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        sucus.Add(CastDto(data));
                    }
                }

                Conn.Close();
                return sucus;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public int Crear(DireccionEe obj)
        {
            var columnas = new List<string> { "idComprador", "calle", "localidad", "provincia", "pais", "codigoPostal", "activo" };
            var valores = new List<string> { obj.Comprador.Id.ToString(), obj.Calle, obj.Localidad, obj.Provincia, obj.Pais, obj.CodigoPostal.ToString(), 1.ToString() };

            return Insert("direccion", columnas.ToArray(), valores.ToArray());
        }

        public bool Actualizar(DireccionEe sucu)
        {
            var query = new SqlCommand("UPDATE Direccion SET calle = @calle, localidad = @localidad, provincia = @provincia, pais = @pais, codigoPostal = @codigoPostal " +
                                             "WHERE id = @id", Conn);
            query.Parameters.AddWithValue("@id", sucu.Id);
            query.Parameters.AddWithValue("@calle", sucu.Calle);
            query.Parameters.AddWithValue("@localidad", sucu.Localidad);
            query.Parameters.AddWithValue("@provincia", sucu.Provincia);
            query.Parameters.AddWithValue("@pais", sucu.Pais);
            query.Parameters.AddWithValue("@codigoPostal", sucu.CodigoPostal);

            return ExecuteQuery(query);
        }



        public bool Borrar(int id)
        {
            var query = new SqlCommand("UPDATE Direccion SET activo = 0 WHERE id = @id", Conn);
            query.Parameters.AddWithValue("@id", id);

            return ExecuteQuery(query);
        }

        private DireccionEe CastDto(SqlDataReader data) =>
            new DireccionEe
            {
                Id = int.Parse(data["id"].ToString()),
                Comprador = _compradorDal.Obtener(int.Parse(data["idComprador"].ToString())),
                Calle = data["Calle"].ToString(),
                Localidad = data["Localidad"].ToString(),
                Provincia = data["Provincia"].ToString(),
                Pais = data["Pais"].ToString(),
                CodigoPostal = data["CodigoPostal"].ToString()
            };
    }
}
