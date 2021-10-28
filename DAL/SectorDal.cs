using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using EE;

namespace DAL
{
    public class SectorDal : ConnectionDal
    {
        public List<SectorEe> Obtener(string name = null)
        {
            try
            {
                var strQuery = "SELECT id, nombre FROM sector ";

                if (name != null)
                {
                    strQuery += $" AND Nombre = {name}";
                }

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var premios = new List<SectorEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        premios.Add(CastDto(data));
                    }
                }

                Conn.Close();
                return premios;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public List<UsuarioEe> ObtenerTrabajadores(int sectorid)
        {
            try
            {
                var strQuery = $"SELECT u.id, u.Nombre_usuario, u.Mail, u.Nombre, u.Apellido, u.fecha_entrada FROM usuarios u " +
                               $"JOIN sector_puesto_usuario spu ON spu.usuario_id = u.id WHERE spu.sector_id = {sectorid}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var trabajadores = new List<UsuarioEe>();

                if (data.HasRows)
                {
                    var usuarioDao = new UsuarioDal();
                    while (data.Read())
                    {
                        trabajadores.Add(usuarioDao.CastDto(data));
                    }
                }

                Conn.Close();
                return trabajadores;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public SectorEe Obtener(int id)
		{
			try
			{
				var strQuery = "SELECT * FROM sector " +
							   $"WHERE id = {id}";

				var query = new SqlCommand(strQuery, Conn);

				Conn.Open();
				var data = query.ExecuteReader();
				SectorEe sectorEe = null;

				if (data.HasRows)
				{
					while (data.Read())
					{
						sectorEe = CastDto(data);
					}
				}

				Conn.Close();
				return sectorEe;
			}
			catch (Exception e)
			{
				ErrorManagerDal.AgregarMensaje(e.ToString());
				return null;
			}
		}

        public bool Actualizar(SectorEe sector)
        {
            var sDao = new SectorDal();
            var strQuery = "UPDATE sectores SET Nombre = @Nombre, nivel = @nivel";

            if (sector.Jefe != null)
            {
                strQuery += ", jefe_id = @jefeid";
            }

            strQuery += " WHERE id = @id";

            var query = new SqlCommand(strQuery, Conn);
            query.Parameters.AddWithValue("@id", sector.Id);
            query.Parameters.AddWithValue("@Nombre", sector.Nombre);

            if (sector.Jefe != null)
            {
                query.Parameters.AddWithValue("@jefeid", sector.Jefe.Id);
            }

            BorrarPuestos(sector.Id);

            foreach (var puesto in sector.Puestos)
            {
                if (puesto.Value != null && sDao.Obtener(puesto.Value) != null)
                {
                    ActualizarUsuario(puesto.Value.Id);
                }

                AgregarPuesto(sector.Id, puesto);
            }

            return ExecuteQuery(query);
        }

        public bool ActualizarUsuario(int userid)
        {
            var strQuery = "UPDATE sector_puesto_usuario SET usuario_id = NULL WHERE usuario_id = @userid ";

            var query = new SqlCommand(strQuery, Conn);
            query.Parameters.AddWithValue("@userid", userid);

            return ExecuteQuery(query);
        }

        public int AgregarPuesto(int sectorid, KeyValuePair<PuestoEe, UsuarioEe> puesto)
        {
            string[] columns = { "sector_id", "puesto_id", "usuario_id" };
            string[] values = { sectorid.ToString(), puesto.Key.Id.ToString() };

            if (puesto.Value == null)
            {
                var asd = values.ToList();
                asd.Add(null);
                values = asd.ToArray();
            }
            else
            {
                var asd = values.ToList();
                asd.Add(puesto.Value.Id.ToString());
                values = asd.ToArray();
            }

            Insert("sector_puesto_usuario", columns, values);

            return GetLastid("puestos");
        }
        public bool BorrarPuestos(int sectorid)
        {
            var strQuery = "DELETE FROM sector_puesto_usuario WHERE sector_id = @sectorid";

            var query = new SqlCommand(strQuery, Conn);
            query.Parameters.AddWithValue("@sectorid", sectorid);

            return ExecuteQuery(query);
        }

        public SectorEe Obtener(UsuarioEe usuario)
        {
            try
            {
                var strQuery = $"SELECT s.id, s.Nombre, s.nivel FROM sectores s " +
                               $"JOIN sector_puesto_usuario spu ON spu.sector_id = s.id " +
                               $"WHERE s.borrado = 0 AND spu.usuario_id = {usuario.Id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                SectorEe premio = null;

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        premio = CastDto(data);
                    }
                }

                Conn.Close();
                return premio;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

		public List<SectorEe> ObtenerPorJefeid(int id)
        {
            try
            {
                var strQuery = $"SELECT id, Nombre, nivel FROM sectores WHERE borrado = 0 AND jefe_id = {id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var sectores = new List<SectorEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        sectores.Add(CastDto(data));
                    }
                }

                Conn.Close();
                return sectores;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

		public int Crear(SectorEe obj)
		{
			var columnas = new List<string> { "nombre" };
			var valores = new List<string> { obj.Nombre };

			return Insert("sector", columnas.ToArray(), valores.ToArray());
		}


		public bool Borrar(int id)
		{
			return DeleteByid("sector", id);
		}

		public List<SectorEe> Obtener(SectorEe us, int limit = 0)
		{
			try
			{
				var strQuery = "SELECT";

				if (limit != 0)
				{
					strQuery += $" TOP {limit}";
				}

				strQuery += " * FROM sector " +
					$"WHERE id = {us.Id}";

				if (limit != 0)
				{
					strQuery += " ORDER BY id DESC";
				}

				var query = new SqlCommand(strQuery, Conn);

				Conn.Open();
				var data = query.ExecuteReader();
				var sectores = new List<SectorEe>();

				if (data.HasRows)
				{
					while (data.Read())
					{
                        sectores.Add(CastDto(data));
					}
				}

				Conn.Close();

				return sectores;
			}
			catch (Exception e)
			{
				ErrorManagerDal.AgregarMensaje(e.ToString());
				return null;
			}
		}

        public List<KeyValuePair<PuestoEe, UsuarioEe>> ObtenerPuestos(int sectorid)
        {
            try
            {
                var strQuery = $"SELECT spu.sector_id, spu.puesto_id, spu.usuario_id " +
                               $"FROM sector_puesto_usuario spu " +
                               $"WHERE spu.sector_id = {sectorid} ";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var sectorArrayList = new List<int[]>();

                if (!data.HasRows)
                {
                    Conn.Close();
                    return new List<KeyValuePair<PuestoEe, UsuarioEe>>();
                }

                while (data.Read())
                {
                    sectorArrayList.Add(new[] {
                        int.Parse(data["puesto_id"].ToString() ?? string.Empty),
                        data["usuario_id"].ToString() == "" ? 0 : int.Parse(data["usuario_id"].ToString() ?? string.Empty)
                    });
                }

                Conn.Close();

                var puestoDao = new PuestoDal();
                var usuarioDao = new UsuarioDal();
                var puestos = new List<KeyValuePair<PuestoEe, UsuarioEe>>();

                foreach (var sectorArray in sectorArrayList)
                {
                    puestos.Add(new KeyValuePair<PuestoEe, UsuarioEe>(puestoDao.Obtener(sectorArray[0])[0], usuarioDao.Obtener(sectorArray[1])));
                }

                return puestos;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

		public static SectorEe CastDto(SqlDataReader data)
		{
            return new SectorEe()
			{
				Id = int.Parse(data["id"].ToString() ?? string.Empty),
				Nombre = data["nombre"].ToString(),
            };
		}

        public bool VerSiExiste(string nombre)
        {
            try
            {
                var queryTxt = $"SELECT id FROM sectores WHERE borrado = 0 AND Nombre = '{nombre}'";

                var query = new SqlCommand(queryTxt, Conn);
                Conn.Open();
                var data = query.ExecuteReader();
                var result = data.HasRows;

                Conn.Close();
                return result;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return false;
            }
        }

    }
}
