using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using EE;

namespace DAL
{
    public class FamiliaDal : ConnectionDal
    {
		public FamiliaEe Obtener(int id)
		{
			try
			{
				var query = new SqlCommand("SELECT id, Nombre FROM familia WHERE id = @id", Conn);
				query.Parameters.AddWithValue("@id", id);
				Conn.Open();
				var data = query.ExecuteReader();
				FamiliaEe result = null;

				if (data.HasRows)
				{
					data.Read();
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

		public FamiliaEe Obtener(UsuarioEe usuario)
		{
			try
			{
				var query = new SqlCommand("SELECT f.id, f.Nombre FROM familias f JOIN usuarios u ON u.familia_id = f.id WHERE u.id = @id", Conn);
				query.Parameters.AddWithValue("@id", usuario.Id);
				Conn.Open();
				var data = query.ExecuteReader();
				FamiliaEe result = null;

				if (data.HasRows)
				{
					data.Read();
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

		public int Crear(FamiliaEe familia)
		{
			string[] columns = { "Nombre" };
			string[] values = { familia.Nombre };
			Insert("familias", columns, values);

			return GetLastid("familias");
		}

		public bool Actualizar(FamiliaEe familia)
		{
			var query = new SqlCommand("UPDATE familias SET Nombre = @Nombre WHERE id = @id", Conn);
			query.Parameters.AddWithValue("@id", familia.Id);
			query.Parameters.AddWithValue("@Nombre", familia.Nombre);

			return ExecuteQuery(query);
		}

		public bool Borrar(int id)
		{
			if (!DeleteByid("familias", id))
			{
				return false;
			}

			var query = new SqlCommand("UPDATE usuarios SET familia_id = 0 WHERE familia_id = @id", Conn);
			query.Parameters.AddWithValue("@id", id);

			return ExecuteQuery(query);
		}

		public List<FamiliaEe> Obtener(string nombre = null)
		{
			try
			{
				var queryTxt = "SELECT id, nombre FROM familia";

				if (nombre != null)
				{
					queryTxt += $" WHERE Nombre LIKE '%{nombre}%'";
				}

				var query = new SqlCommand(queryTxt, Conn);
				Conn.Open();
				var data = query.ExecuteReader();
				var familiasDto = new List<FamiliaEe>();

				if (data.HasRows)
				{
					while (data.Read())
					{
						familiasDto.Add(CastDto(data));
					}
				}

				Conn.Close();
				return familiasDto;
			}
			catch (Exception e)
			{
				ErrorManagerDal.AgregarMensaje(e.ToString());
				return null;
			}
		}

		public bool BorrarRelaciones(int familiaid)
		{
			var query = new SqlCommand($"DELETE FROM familia_patente WHERE familia_id = {familiaid}", Conn);

			return ExecuteQuery(query);
		}

		public bool ModificarFamilia(int userid, int permisoid)
		{
			var query = new SqlCommand("UPDATE usuarios SET familia_id = @familia_id WHERE id = @id", Conn);
			query.Parameters.AddWithValue("@id", userid);
			query.Parameters.AddWithValue("@familia_id", permisoid);

			return ExecuteQuery(query);
		}

		public bool VerSiFamiliaExiste(int id, string nombre)
		{
			try
			{
				var queryTxt = $"SELECT id, Nombre FROM familias WHERE Nombre = '{nombre}'";

				if (id != 0)
				{
					queryTxt += $" AND id = {id}";
				}

				var query = new SqlCommand(queryTxt, Conn);
				Conn.Open();
				var data = query.ExecuteReader();
				var result = false;

				if (data.HasRows)
				{
					result = true;
				}

				Conn.Close();
				return result;
			}
			catch (Exception e)
			{
				ErrorManagerDal.AgregarMensaje(e.ToString());
				return false;
			}
		}

		public FamiliaEe CastDto(SqlDataReader data)
		{
			var result = new FamiliaEe();
			result.Id = Convert.ToInt32(data["id"]);
			result.Nombre = data["Nombre"].ToString();

			return result;
		}
	}
}
