using EE;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace DAL
{
    public class PatenteDal : ConnectionDal
    {
        public List<PermisoEe> ObtenerPorFamilia(int id)
        {
            try
            {
                var query = new SqlCommand("SELECT p.id, p.nombre FROM patente p JOIN familia_patente fp ON fp.idPatente = p.id WHERE fp.idFamilia = @id", Conn);
                query.Parameters.AddWithValue("@id", id);
                Conn.Open();
                var data = query.ExecuteReader();
                var result = new List<PermisoEe>
                {
                    Capacity = 0
                };

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        result.Add(CastDto(data));
                    }
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

        public List<PatenteEe> Obtener(int id = 0)
        {
            try
            {
                var sqlQuery = "SELECT p.id, p.Nombre FROM patentes p";

                if (id != 0)
                {
                    sqlQuery += $" WHERE id = {id}";
                }

                var query = new SqlCommand(sqlQuery, Conn);
                Conn.Open();
                var data = query.ExecuteReader();
                var result = new List<PatenteEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        result.Add(CastDto(data));
                    }
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

        public int CrearRelacion(int familiaid, int patenteid)
        {
            string[] columns = { "familia_id", "patente_id" };
            string[] values = { familiaid.ToString(), patenteid.ToString() };
            return Insert("familia_patente", columns, values);
        }

        public PatenteEe CastDto(SqlDataReader data)
        {
            var result = new PatenteEe();
            result.Id = Convert.ToInt32(data["id"]);
            result.Nombre = data["Nombre"].ToString();

            return result;
        }
    }
}