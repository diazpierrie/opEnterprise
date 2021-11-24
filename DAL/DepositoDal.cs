using EE;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace DAL
{
    public class DepositoDal : ConnectionDal
    {
        public DepositoEe Obtener(int id)
        {
            try
            {
                var strQuery = "SELECT id, nombre, direccion, mail, codigoPostal, telefono FROM deposito " +
                               $"WHERE id = {id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                DepositoEe deposito = null;

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        deposito = CastDto(data);
                    }
                }

                Conn.Close();
                return deposito;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public List<DepositoEe> Obtener(UsuarioEe user)
        {
            try
            {
                var strQuery = "SELECT u.idDeposito, d.id, d.nombre, d.direccion, d.mail, d.codigoPostal, d.telefono " +
                                     "FROM usuario_deposito as u " +
                                     "INNER JOIN deposito as d " +
                                     "ON u.idDeposito = d.id " +
                                     $"WHERE u.idUsuario = {user.Id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var depos = new List<DepositoEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        depos.Add(CastDto(data));
                    }
                }

                Conn.Close();
                return depos;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public DepositoEe ObtenerDepositoPorNombre(string nombre)
        {
            try
            {
                var strQuery = "SELECT id, nombre, direccion, mail, codigoPostal, telefono FROM deposito " +
                               $"WHERE nombre = {nombre}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                DepositoEe deposito = null;

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        deposito = CastDto(data);
                    }
                }

                Conn.Close();
                return deposito;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public List<DepositoEe> ObtenerActivos(string name = null)
        {
            try
            {
                var strQuery = "SELECT id, nombre, direccion, mail, codigoPostal, telefono " +
                                     "FROM deposito WHERE activo = 1";

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
                var depos = new List<DepositoEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        depos.Add(CastDto(data));
                    }
                }

                Conn.Close();
                return depos;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public int Crear(DepositoEe obj)
        {
            var columnas = new List<string> { "nombre", "direccion", "mail", "telefono", "codigoPostal", "activo" };
            var valores = new List<string> { obj.Nombre, obj.Direccion, obj.Mail, obj.Telefono, obj.CodigoPostal.ToString(), 1.ToString() };

            return Insert("deposito", columnas.ToArray(), valores.ToArray());
        }

        public bool Actualizar(DepositoEe depo)
        {
            var query = new SqlCommand("UPDATE deposito SET nombre = @nombre, direccion = @direccion, mail = @mail, codigoPostal = @codigoPostal, telefono = @telefono " +
                                             "WHERE id = @id", Conn);
            query.Parameters.AddWithValue("@id", depo.Id);
            query.Parameters.AddWithValue("@mail", depo.Mail);
            query.Parameters.AddWithValue("@nombre", depo.Nombre);
            query.Parameters.AddWithValue("@telefono", depo.Telefono);
            query.Parameters.AddWithValue("@codigoPostal", depo.CodigoPostal);
            query.Parameters.AddWithValue("@direccion", depo.Direccion);

            return ExecuteQuery(query);
        }

        public int AsignarEmpleadoConDeposito(UsuarioEe user, DepositoEe depo)
        {
            var columnas = new List<string> { "idUsuario", "idDeposito" };
            var valores = new List<string> { user.Id.ToString(), depo.Id.ToString() };

            return Insert("usuario_deposito", columnas.ToArray(), valores.ToArray());
        }

        public bool DesasignarEmpleadoConDeposito(UsuarioEe user, DepositoEe depo)
        {
            var query = new SqlCommand("DELETE usuario_deposito WHERE idUsuario = @idUsuario AND idDeposito = @idDeposito", Conn);
            query.Parameters.AddWithValue("@idUsuario", user.Id);
            query.Parameters.AddWithValue("@idDeposito", depo.Id);

            return ExecuteQuery(query);
        }

        public bool ObtenerAsignacionEmpleadoConDeposito(UsuarioEe user, DepositoEe depo)
        {
            try
            {
                const string strQuery = "SELECT * FROM usuario_deposito " +
                                        "WHERE idUsuario  = @idUsuario " +
                                          "AND idDeposito = @idDeposito";

                var query = new SqlCommand(strQuery, Conn);
                query.Parameters.AddWithValue("@idUsuario", user.Id);
                query.Parameters.AddWithValue("@idDeposito", depo.Id);

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
            var query = new SqlCommand("UPDATE deposito SET activo = 0 WHERE id = @id", Conn);
            query.Parameters.AddWithValue("@id", id);

            return ExecuteQuery(query);
        }

        public List<DepositoEe> Obtener(DepositoEe dep, int limit = 0)
        {
            try
            {
                var strQuery = "SELECT";

                if (limit != 0)
                {
                    strQuery += $" TOP {limit}";
                }

                strQuery += " id, nombre, direccion, mail, codigoPostal, telefono FROM deposito " +
                    $"WHERE id = {dep.Id}";

                if (limit != 0)
                {
                    strQuery += " ORDER BY id DESC";
                }

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var deposito = new List<DepositoEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        deposito.Add(CastDto(data));
                    }
                }

                Conn.Close();

                return deposito;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public DepositoEe CastDto(SqlDataReader data)
        {
            return new DepositoEe
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