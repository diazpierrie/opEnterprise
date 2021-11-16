﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using EE;

namespace DAL
{
    public class MetodoPagoDal : ConnectionDal
    {
        public List<MetodoPagoEe> Obtener()
        {
            try
            {
                const string strQuery = "SELECT id, nombre FROM metodoPago ";

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
                var strQuery = $"SELECT id, nombre FROM metodoPago WHERE id = {id}";

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
