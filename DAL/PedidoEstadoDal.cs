using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using EE;

namespace DAL
{
    public class PedidoEstadoDal : ConnectionDal
    {
        public List<PedidoEstadoEe> Obtener()
        {
            try
            {
                const string strQuery = "SELECT id, nombre FROM pedido_estado ";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var pedidoEstados = new List<PedidoEstadoEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        pedidoEstados.Add(CastDto(data));
                    }
                }

                Conn.Close();
                return pedidoEstados;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public PedidoEstadoEe Obtener(int id)
        {
            try
            {
                var strQuery = $"SELECT id, nombre FROM pedido_estado WHERE id = {id} ";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var estado = new PedidoEstadoEe();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        estado = CastDto(data);
                    }
                }

                Conn.Close();
                return estado;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        private static PedidoEstadoEe CastDto(SqlDataReader data)
        {
            return new PedidoEstadoEe()
            {
                Id = int.Parse(data["id"].ToString()),
                Nombre = data["nombre"].ToString()
            };
        }
    }
}
