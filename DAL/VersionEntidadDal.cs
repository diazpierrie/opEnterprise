using EE;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace DAL
{
    public class VersionEntidadDal : ConnectionDal
    {
        public List<VersionEntidadEe> Obtener(string entidad, int id)
        {
            try
            {
                var consultaSql = $"SELECT ROW_NUMBER() OVER(ORDER BY Descripcion) as id, Descripcion as Objeto FROM bitacora WHERE titulo LIKE '{entidad}%' AND descripcion LIKE'%\"id\":{id}%'";

                var query = new SqlCommand(consultaSql, Conn);
                Conn.Open();
                var data = query.ExecuteReader();

                var versiones = new List<VersionEntidadEe>();
                while (data.Read())
                {
                    versiones.Add(CastVersionDto(data));
                }
                Conn.Close();

                return versiones;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        private static VersionEntidadEe CastVersionDto(SqlDataReader data)
        {
            var result = new VersionEntidadEe
            {
                Id = int.Parse(data["id"].ToString()),
                Objeto = data["objeto"].ToString()
            };

            return result;
        }
    }
}