using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using EE;

namespace DAL
{
    public class CompradorDal : ConnectionDal
    {
		public CompradorEe Obtener(int id)
		{
			try
			{
				var strQuery = "SELECT * FROM comprador " +
                               $"WHERE id = {id}";

				var query = new SqlCommand(strQuery, Conn);

				Conn.Open();
				var data = query.ExecuteReader();
				CompradorEe compradorEe = null;

				if (data.HasRows)
				{
					while (data.Read())
					{
						compradorEe = CastDto(data);
					}
				}

				Conn.Close();
				return compradorEe;
			}
			catch (Exception e)
			{
				ErrorManagerDal.AgregarMensaje(e.ToString());
				return null;
			}
		}

        public List<CompradorEe> Obtener(string name = null)
        {
            try
            {
                var strQuery = "SELECT id, nombre, apellido, dni, mail, telefono, esSocio, activo FROM comprador";


                if (name != null)
                {
                    strQuery += " WHERE nombre LIKE CONCAT('%', @name, '%') OR apellido LIKE CONCAT('%', @name, '%')";
                }

				var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var compradores = new List<CompradorEe>();

				if (data.HasRows)
                {
                    while (data.Read())
                    {
                        compradores.Add(CastDto(data));
                    }
                }

                Conn.Close();
                return compradores;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }


		public int Crear(CompradorEe obj)
		{
			var columnas = new List<string> { "nombre", "apellido", "dni", "mail", "telefono", "esSocio", "activo" };
			var valores = new List<string> { obj.Nombre, obj.Apellido, obj.Dni.ToString(), obj.Mail, obj.Telefono, obj.EsSocio.ToString(), 1.ToString() };

			return Insert("comprador", columnas.ToArray(), valores.ToArray());
		}

		public bool PromoverASocio(int objid)
		{
			var query = new SqlCommand("UPDATE comprador SET esSocio = 1 WHERE id = @id", Conn);
			query.Parameters.AddWithValue("@id", objid);

            return ExecuteQuery(query);
		}

        public bool Borrar(int id)
		{
			return DeleteByid("comprador", id);
		}

        public List<CompradorEe> Obtener(CompradorEe us, int limit = 0)
		{
			try
			{
				var strQuery = "SELECT";

				if (limit != 0)
				{
					strQuery += $" TOP {limit}";
				}

				strQuery += " * FROM comprador " +
					$"WHERE id = {us.Id}";

				if (limit != 0)
				{
					strQuery += " ORDER BY id DESC";
				}

				var query = new SqlCommand(strQuery, Conn);

				Conn.Open();
				var data = query.ExecuteReader();
				var compradors = new List<CompradorEe>();

				if (data.HasRows)
				{
					while (data.Read())
					{
						compradors.Add(CastDto(data));
					}
				}

				Conn.Close();

				return compradors;
			}
			catch (Exception e)
			{
                ErrorManagerDal.AgregarMensaje(e.ToString());
				return null;
			}
		}

		public List<CompradorEe> Obtener(SectorEe sector, int limit = 0)
		{
			try
			{
				var strQuery = "SELECT";

				if (limit != 0)
				{
					strQuery += $" TOP {limit}";
				}

				strQuery += " * FROM comprador " +
					$"WHERE idSector = {sector.Id}";

				strQuery += " ORDER BY id DESC";

				var query = new SqlCommand(strQuery, Conn);

				Conn.Open();
				var data = query.ExecuteReader();
				var compradors = new List<CompradorEe>();

				if (data.HasRows)
				{
					while (data.Read())
					{
						compradors.Add(CastDto(data));
					}
				}

				Conn.Close();

				return compradors;
			}
			catch (Exception e)
			{
                ErrorManagerDal.AgregarMensaje(e.ToString());
				return null;
			}
		}

        public SectorEe ObtenerSector(int objid)
		{
			try
			{
				var strQuery = "SELECT s.id, s.Nombre FROM sector s " +
                               "JOIN comprador o ON o.idSector = s.id " +
                               $"WHERE o.id = {objid}";

				var query = new SqlCommand(strQuery, Conn);

				Conn.Open();
				var data = query.ExecuteReader();
				SectorEe sector = null;

				if (data.HasRows)
				{
                    sector = SectorDal.CastDto(data);
				}

				Conn.Close();

				return sector;
			}
			catch (Exception e)
			{
				ErrorManagerDal.AgregarMensaje(e.ToString());
				return null;
			}
		}

        private static CompradorEe CastDto(SqlDataReader data)
		{
            return new CompradorEe()
			{
				Id = int.Parse(data["id"].ToString()),
				Nombre = data["nombre"].ToString(),
				Apellido = data["apellido"].ToString(),
				Dni = int.Parse(data["dni"].ToString()),
				Mail = data["mail"].ToString(),
				Telefono = data["telefono"].ToString(),
				EsSocio = bool.Parse(data["esSocio"].ToString()),
				Activo = bool.Parse(data["activo"].ToString()),
            };
		}

	}
}
