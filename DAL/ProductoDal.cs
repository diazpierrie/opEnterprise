using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using EE;

namespace DAL
{
    public class ProductoDal : ConnectionDal
    {
		public ProductoEe Obtener(int id)
		{
			try
			{
				var strQuery = "SELECT id, nombre, codigo, fechaCreacion, precio, costo FROM producto " +
                               $"WHERE id = {id}";

				var query = new SqlCommand(strQuery, Conn);

				Conn.Open();
				var data = query.ExecuteReader();
				ProductoEe sucursal = null;

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

        public List<ProductoEe> ObtenerPorSucursal(SucursalEe sucursal)
        {
            try
            {
                var strQuery = "SELECT p.[id], p.[nombre] ,p.[codigo] ,p.[fechaCreacion] ,p.[precio] ,p.[costo] " +
                                     "FROM[dbo].[producto] as p " +
                                     "INNER JOIN sucursal_producto as s " +
                                     "ON s.idProducto = p.id " +
                                     $"WHERE s.idSucursal = {sucursal.Id} AND activo = 1";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var sucus = new List<ProductoEe>();

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

        public ProductoEe ObtenerSucursalPorNombre(string nombre)
        {
            try
            {
                var strQuery = "SELECT id, nombre, direccion, mail, codigoPostal, telefono FROM sucursal " +
                               $"WHERE nombre = {nombre}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                ProductoEe sucursal = null;

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

        public List<ProductoEe> ObtenerActivos(string name = null)
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
                var sucus = new List<ProductoEe>();

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

		public int Crear(ProductoEe obj)
		{
			var columnas = new List<string> { "nombre", "direccion", "mail", "telefono", "codigoPostal", "activo" };
			var valores = new List<string> { obj.Nombre, obj.Direccion, obj.Mail, obj.Telefono, obj.CodigoPostal.ToString(), 1.ToString() };

			return Insert("sucursal", columnas.ToArray(), valores.ToArray());
		}

        public bool Actualizar(ProductoEe sucu)
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

        public int AsignarEmpleadoConSucursal(UsuarioEe user, ProductoEe sucu)
        {
            var columnas = new List<string> { "idUsuario", "idSucursal" };
            var valores = new List<string> { user.Id.ToString(), sucu.Id.ToString() };

            return Insert("usuario_sucursal", columnas.ToArray(), valores.ToArray());
        }

        public bool DesasignarEmpleadoConSucursal(UsuarioEe user, ProductoEe sucu)
        {
            var query = new SqlCommand("DELETE usuario_sucursal WHERE idUsuario = @idUsuario AND idSucursal = @idSucursal", Conn);
            query.Parameters.AddWithValue("@idUsuario", user.Id);
            query.Parameters.AddWithValue("@idSucursal", sucu.Id);

            return ExecuteQuery(query);
        }

        public bool ObtenerAsignacionEmpleadoConSucursal(UsuarioEe user, ProductoEe sucu)
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
                else
                {
                    Conn.Close();
                    return false;
                }
                
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

        public List<ProductoEe> Obtener(ProductoEe dep, int limit = 0)
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
				var sucursal = new List<ProductoEe>();

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


        public ProductoEe CastDto(SqlDataReader data)
		{
            return new ProductoEe()
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
