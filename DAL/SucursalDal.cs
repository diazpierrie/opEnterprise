using EE;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace DAL
{
    public class SucursalDal : ConnectionDal
    {
        public SucursalEe Obtener(int id)
        {
            try
            {
                var strQuery = "SELECT id, nombre, direccion, mail, codigoPostal, telefono FROM sucursal " +
                               $"WHERE id = {id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                SucursalEe sucursal = null;

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

        public List<SucursalEe> Obtener(UsuarioEe user)
        {
            try
            {
                var strQuery = "SELECT u.idSucursal, d.id, d.nombre, d.direccion, d.mail, d.codigoPostal, d.telefono " +
                                     "FROM usuario_Sucursal as u " +
                                     "INNER JOIN Sucursal as d " +
                                     "ON u.idSucursal = d.id " +
                                     $"WHERE u.idUsuario = {user.Id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var sucus = new List<SucursalEe>();

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

        public SucursalEe ObtenerSucursalPorNombre(string nombre)
        {
            try
            {
                var strQuery = "SELECT id, nombre, direccion, mail, codigoPostal, telefono FROM sucursal " +
                               $"WHERE nombre = {nombre}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                SucursalEe sucursal = null;

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

        public List<SucursalEe> ObtenerActivos(string name = null)
        {
            try
            {
                var strQuery = "SELECT id, nombre, direccion, mail, codigoPostal, telefono " +
                                     "FROM sucursal WHERE activo = 1";

                if (name != null)
                {
                    strQuery += " AND ( nombre LIKE CONCAT('%', @name, '%')";
                }

                var query = new SqlCommand(strQuery, Conn);
                if (name != null)
                {
                    query.Parameters.AddWithValue("@name", name);
                }

                Conn.Open();
                var data = query.ExecuteReader();
                var sucus = new List<SucursalEe>();

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

        public int Crear(SucursalEe obj)
        {
            var columnas = new List<string> { "nombre", "direccion", "mail", "telefono", "codigoPostal", "activo" };
            var valores = new List<string> { obj.Nombre, obj.Direccion, obj.Mail, obj.Telefono, obj.CodigoPostal.ToString(), 1.ToString() };

            return Insert("sucursal", columnas.ToArray(), valores.ToArray());
        }

        public bool Actualizar(SucursalEe sucu)
        {
            var query = new SqlCommand("UPDATE Sucursal SET nombre = @nombre, direccion = @direccion, mail = @mail, codigoPostal = @codigoPostal, telefono = @telefono " +
                                             "WHERE id = @id", Conn);
            query.Parameters.AddWithValue("@id", sucu.Id);
            query.Parameters.AddWithValue("@mail", sucu.Mail);
            query.Parameters.AddWithValue("@nombre", sucu.Nombre);
            query.Parameters.AddWithValue("@telefono", sucu.Telefono);
            query.Parameters.AddWithValue("@codigoPostal", sucu.CodigoPostal);
            query.Parameters.AddWithValue("@direccion", sucu.Direccion);

            return ExecuteQuery(query);
        }

        public int AsignarEmpleadoConSucursal(UsuarioEe user, SucursalEe sucu)
        {
            var columnas = new List<string> { "idUsuario", "idSucursal" };
            var valores = new List<string> { user.Id.ToString(), sucu.Id.ToString() };

            return Insert("usuario_sucursal", columnas.ToArray(), valores.ToArray());
        }

        public bool DesasignarEmpleadoConSucursal(UsuarioEe user, SucursalEe sucu)
        {
            var query = new SqlCommand("DELETE usuario_sucursal WHERE idUsuario = @idUsuario AND idSucursal = @idSucursal", Conn);
            query.Parameters.AddWithValue("@idUsuario", user.Id);
            query.Parameters.AddWithValue("@idSucursal", sucu.Id);

            return ExecuteQuery(query);
        }

        public bool ObtenerAsignacionEmpleadoConSucursal(UsuarioEe user, SucursalEe sucu)
        {
            try
            {
                const string strQuery = "SELECT * FROM usuario_Sucursal " +
                                        "WHERE idUsuario  = @idUsuario " +
                                          "AND idSucursal = @idSucursal";

                var query = new SqlCommand(strQuery, Conn);
                query.Parameters.AddWithValue("@idUsuario", user.Id);
                query.Parameters.AddWithValue("@idSucursal", sucu.Id);

                Conn.Open();
                var data = query.ExecuteReader();

                if (data.HasRows)
                {
                    Conn.Close();
                    return true;
                }

                Conn.Close();
                return false;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return false;
            }
        }

        public bool Borrar(int id)
        {
            var query = new SqlCommand("UPDATE Sucursal SET activo = 0 WHERE id = @id", Conn);
            query.Parameters.AddWithValue("@id", id);

            return ExecuteQuery(query);
        }

        public List<SucursalEe> Obtener(SucursalEe dep, int limit = 0)
        {
            try
            {
                var strQuery = "SELECT";

                if (limit != 0)
                {
                    strQuery += $" TOP {limit}";
                }

                strQuery += " id, nombre, direccion, mail, codigoPostal, telefono FROM Sucursal " +
                    $"WHERE id = {dep.Id}";

                if (limit != 0)
                {
                    strQuery += " ORDER BY id DESC";
                }

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var sucursal = new List<SucursalEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        sucursal.Add(CastDto(data));
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

        public SucursalEe CastDto(SqlDataReader data)
        {
            return new SucursalEe
            {
                Id = int.Parse(data["id"].ToString()),
                Nombre = data["nombre"].ToString(),
                Mail = data["mail"].ToString(),
                Direccion = data["direccion"].ToString(),
                CodigoPostal = int.Parse(data["codigoPostal"].ToString()),
                Telefono = data["telefono"].ToString(),
            };
        }
    }
}