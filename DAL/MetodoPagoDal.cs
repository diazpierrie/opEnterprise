using EE;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace DAL
{
    public class MetodoPagoDal : ConnectionDal
    {
        public List<MetodoPagoEe> Obtener()
        {
            try
            {
                string strQuery = $"SELECT cm.id, ctrl.texto as Nombre FROM [dbo].cMetodoPago as cm INNER JOIN control as ctrl on cm.nombre = ctrl.tag WHERE ctrl.idIdioma = {Sesion.ObtenerSesion().Idioma.Id} ";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var metodoPago = new List<MetodoPagoEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        metodoPago.Add(CastDto(data));
                    }
                }

                Conn.Close();
                return metodoPago;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public MetodoPagoEe Obtener(int id)
        {
            try
            {
                var strQuery = $"SELECT cm.id, ctrl.texto as Nombre " +
                               $"FROM [dbo].cMetodoPago as cm " +
                               $"INNER JOIN control as ctrl on cm.nombre = ctrl.tag" +
                               $" WHERE ctrl.idIdioma = {Sesion.ObtenerSesion().Idioma.Id} AND cm.id = {id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var metodoPago = new MetodoPagoEe();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        metodoPago = CastDto(data);
                    }
                }

                Conn.Close();
                return metodoPago;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        private static MetodoPagoEe CastDto(SqlDataReader data)
        {
            return new MetodoPagoEe
            {
                Id = int.Parse(data["id"].ToString()),
                Nombre = data["nombre"].ToString()
            };
        }
    }
}