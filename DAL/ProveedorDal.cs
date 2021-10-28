using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using EE;

namespace DAL
{
    public class ProveedorDal : ConnectionDal
    {
		public List<ProveedorEe> Obtener(string name = null)
		{
			try
			{
				var strQuery = "SELECT id, nombre, direccion, codigoPostal, mail, telefono, cantidadErrores " +
							   "FROM proveedor";

				if (name != null)
				{
					strQuery += " WHERE nombre LIKE CONCAT('%', @name, '%') AND activo = 1";
				}
                else
                {
					strQuery += " WHERE activo = 1";
				}

				var query = new SqlCommand(strQuery, Conn);
                if (name != null)
                {
					query.Parameters.AddWithValue("@name", name);
				}
                
				Conn.Open();
				var data = query.ExecuteReader();
				var proveedors = new List<ProveedorEe>();

				if (data.HasRows)
				{
					while (data.Read())
					{
						proveedors.Add(CastDto(data));
					}
				}

				Conn.Close();
				return proveedors;
			}
			catch (Exception e)
			{
                Conn.Close();
				ErrorManagerDal.AgregarMensaje(e.ToString());
				return null;
			}
		}

        public ProveedorEe Obtener(int id)
		{
			try
			{
				var strQuery = "SELECT id, nombre, direccion, mail, codigoPostal, telefono, cantidadErrores " +
							   $"FROM proveedor WHERE id = {id} AND activo = 1";

                var query = new SqlCommand(strQuery, Conn);

				Conn.Open();
				var data = query.ExecuteReader();
				ProveedorEe proveedor = null;

				if (data.HasRows)
				{
					data.Read();
					proveedor = CastDto(data);
				}

				Conn.Close();
				return proveedor;
			}
			catch (Exception e)
			{
                Conn.Close();
				ErrorManagerDal.AgregarMensaje(e.ToString());
				return null;
			}
		}

		public bool Actualizar(ProveedorEe proveedor)
		{
            var query = new SqlCommand("UPDATE proveedor SET nombre = @nombre, direccion = @direccion, mail = @mail, codigoPostal = @codigoPostal, telefono = @telefono WHERE id = @id", Conn);
			query.Parameters.AddWithValue("@id", proveedor.Id);
			query.Parameters.AddWithValue("@nombre", proveedor.Nombre);
			query.Parameters.AddWithValue("@direccion", proveedor.Direccion);
			query.Parameters.AddWithValue("@mail", proveedor.Mail);
			query.Parameters.AddWithValue("@codigoPostal", proveedor.CodigoPostal);
			query.Parameters.AddWithValue("@telefono", proveedor.Telefono);

			return ExecuteQuery(query);
		}

		public bool Eliminar(int id)
		{
			var query = new SqlCommand("UPDATE proveedor SET activo = 0 WHERE id = @id", Conn);
			query.Parameters.AddWithValue("@id", id);

			return ExecuteQuery(query);
		}

		public int Crear(ProveedorEe proveedor)
		{
			var columns = new List<string>
            {
                "nombre",
                "direccion",
                "codigoPostal",
                "mail",
                "telefono",
                "cantidadErrores",
				"activo"
            };

            var values = new List<string>
            {
               proveedor.Nombre,
               proveedor.Direccion,
               proveedor.CodigoPostal.ToString(),
			   proveedor.Mail,
			   proveedor.Telefono,
			   0.ToString(),
			   1.ToString()
            };

            return Insert("proveedor", columns.ToArray(), values.ToArray());
		}

        public ProveedorEe CastDto(SqlDataReader data)
		{
			var result = new ProveedorEe
            {
                Id = Convert.ToInt32(data["id"]),
                Nombre = data["nombre"].ToString(),
                Direccion = data["direccion"].ToString(),
                CodigoPostal = int.Parse(data["codigoPostal"].ToString()),
                Mail = data["mail"].ToString(),
                Telefono = data["telefono"].ToString(),
                CantidadErrores = int.Parse(data["cantidadErrores"].ToString())
			};

            return result;
		}
    }
}
