using EE;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace DAL
{
    public class VentaEstadoDal : ConnectionDal
    {
        public List<VentaEstadoEe> Obtener()
        {
            try
            {
                const string strQuery = "SELECT id, nombre FROM venta_estado ";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var ventaEstados = new List<VentaEstadoEe>();

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
                return null;
            }
        }

        public VentaEstadoEe Obtener(int id)
        {
            try
            {
                var strQuery = $"SELECT id, nombre FROM venta_estado WHERE id = {id} ";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var ventaEstado = new VentaEstadoEe();

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

        private static VentaEstadoEe CastDto(SqlDataReader data)
        {
            return new VentaEstadoEe
            {
                Id = int.Parse(data["id"].ToString()),
                Nombre = data["nombre"].ToString()
            };
        }
    }
}