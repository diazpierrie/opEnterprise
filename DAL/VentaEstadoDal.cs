using EE;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace DAL
{
    public class VentaEstadoDal : ConnectionDal
    {
        public List<EstadoEe> Obtener()
        {
            try
            {
                const string strQuery = "SELECT id, nombre FROM cVentaEstado ";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var ventaEstados = new List<EstadoEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        ventaEstados.Add(CastDto(data));
                    }
                }

                Conn.Close();
                return ventaEstados;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return new List<EstadoEe>();
            }
        }

        public EstadoEe Obtener(int id)
        {
            try
            {
                var strQuery = $"SELECT id, nombre FROM cVentaEstado WHERE id = {id} ";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var ventaEstado = new EstadoEe();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        ventaEstado = CastDto(data);
                    }
                }

                Conn.Close();
                return ventaEstado;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        private static EstadoEe CastDto(SqlDataReader data)
        {
            return new EstadoEe
            {
                Id = int.Parse(data["id"].ToString()),
                Nombre = data["nombre"].ToString()
            };
        }
    }
}