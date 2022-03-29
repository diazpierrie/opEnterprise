using EE;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace DAL
{
    public class FamiliaDal : ConnectionDal
    {
        public FamiliaEe ObtenerPorId(int id)
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

        public int Crear(FamiliaEe familia)
        {
            var columnas = new List<string> { "nombre" };
            var valores = new List<string> { familia.Nombre };

            return Insert("familia", columnas.ToArray(), valores.ToArray());
        }

        public FamiliaEe ObtenerPorUsuario(UsuarioEe usuario)
        {
            try
            {
                var query = new SqlCommand("SELECT f.id, f.Nombre FROM familia f JOIN usuario u ON u.idFamilia = f.id WHERE u.id = @id", Conn);
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

        public bool Actualizar(FamiliaEe familia)
        {
            var query = new SqlCommand("UPDATE familia SET Nombre = @Nombre WHERE id = @id", Conn);
            query.Parameters.AddWithValue("@id", familia.Id);
            query.Parameters.AddWithValue("@Nombre", familia.Nombre);

            return ExecuteQuery(query);
        }

        public bool Borrar(int id)
        {
            if (!DeleteByid("familia", id))
            {
                return false;
            }

            var query = new SqlCommand("UPDATE usuario SET idFamilia = 0 WHERE idFamilia = @id", Conn);
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
                return new List<FamiliaEe>();
            }
        }

        public bool BorrarRelaciones(int familiaid)
        {
            var query = new SqlCommand($"DELETE FROM familia_patente WHERE idFamilia = {familiaid}", Conn);

            return ExecuteQuery(query);
        }

        public bool ModificarFamilia(int userid, int rolId)
        {
            var query = new SqlCommand("UPDATE usuario SET idFamilia = @idFamilia WHERE id = @id", Conn);
            query.Parameters.AddWithValue("@id", userid);
            query.Parameters.AddWithValue("@idFamilia", rolId);

            return ExecuteQuery(query);
        }

        public bool VerSiFamiliaExiste(int id, string nombre)
        {
            try
            {
                var queryTxt = $"SELECT id, Nombre FROM familia WHERE Nombre = '{nombre}'";

                if (id != 0)
                {
                    queryTxt += $" AND id = {id}";
                }

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

        private static FamiliaEe CastDto(SqlDataReader data)
        {
            return new FamiliaEe
            {
                Id = Convert.ToInt32(data["id"]),
                Nombre = data["Nombre"].ToString()
            };
        }
    }
}