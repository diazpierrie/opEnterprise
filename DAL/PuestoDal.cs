using EE;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace DAL
{
    public class PuestoDal : ConnectionDal
    {
        public List<PuestoEe> Obtener(int id = 0)
        {
            try
            {
                var strQuery = "SELECT id, nombre FROM puesto";

                if (id != 0)
                {
                    strQuery += $" WHERE id = {id}";
                }

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var puestos = new List<PuestoEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        puestos.Add(CastDto(data));
                    }
                }

                Conn.Close();
                return puestos;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public int Crear(PuestoEe puestoEe)
        {
            string[] columns = { "Nombre" };
            string[] values = { puestoEe.Nombre };
            Insert("puestos", columns, values);

            return GetLastid("puestos");
        }

        public bool Actualizar(PuestoEe puestoEe)
        {
            var query = new SqlCommand("UPDATE puestos SET Nombre = @Nombre, valoracion = @valoracion WHERE id = @id", Conn);
            query.Parameters.AddWithValue("@id", puestoEe.Id);
            query.Parameters.AddWithValue("@Nombre", puestoEe.Nombre);

            return ExecuteQuery(query);
        }

        public bool Borrar(int id)
        {
            return DeleteByid("puestos", id);
        }

        public PuestoEe Obtener(UsuarioEe usuario)
        {
            try
            {
                var strQuery = $"SELECT p.id, p.Nombre FROM puesto p JOIN usuario u ON u.idPuesto = p.id WHERE u.id = {usuario.Id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var puestoEe = new PuestoEe();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        puestoEe = CastDto(data);
                    }
                }

                Conn.Close();
                return puestoEe;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public PuestoEe CastDto(SqlDataReader data)
        {
            var result = new PuestoEe
            {
                Id = Convert.ToInt32(data["id"]),
                Nombre = data["Nombre"].ToString(),
            };

            return result;
        }
    }
}