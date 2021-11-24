using EE;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;

namespace DAL
{
    public class EnvioDal : ConnectionDal
    {
        private readonly VentaDal _ventaDal = new VentaDal();
        private readonly DireccionDal _direccionDal = new DireccionDal();
        private readonly SucursalDal _sucursalDal = new SucursalDal();
        private readonly DepositoDal _depositoDal = new DepositoDal();

        public EnvioSucursalEe ObtenerDeSucursal(int id)
        {
            try
            {
                var strQuery = "SELECT id, idVenta, idDireccion, idDeposito, fechaSalida, fechaLlegada, idEstadoEnvio FROM envio " +
                               $"WHERE id = {id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                EnvioSucursalEe envioEe = null;

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        envioEe = CastDtoSucursal(data);
                    }
                }

                Conn.Close();
                return envioEe;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public List<EnvioSucursalEe> ObtenerDeSucursal()
        {
            try
            {
                const string strQuery = "SELECT id, idVenta, idDireccion, idDeposito, fechaSalida, fechaLlegada, idEstadoEnvio FROM envio ";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var envios = new List<EnvioSucursalEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        envios.Add(CastDtoSucursal(data));
                    }
                }

                Conn.Close();
                return envios;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public EnvioDepositoEe ObtenerDeDeposito(int id)
        {
            try
            {
                var strQuery = "SELECT id, idVenta, idDireccion, idSucursal, fechaSalida, fechaLlegada, idEstadoEnvio FROM envio " +
                               $"WHERE id = {id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                EnvioDepositoEe envioEe = null;

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        envioEe = CastDtoDeposito(data);
                    }
                }

                Conn.Close();
                return envioEe;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public List<EnvioDepositoEe> ObtenerDeDeposito()
        {
            try
            {
                const string strQuery = "SELECT id, idVenta, idDireccion, idDeposito, fechaSalida, fechaLlegada, idEstadoEnvio FROM envio ";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var envios = new List<EnvioDepositoEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        envios.Add(CastDtoDeposito(data));
                    }
                }

                Conn.Close();
                return envios;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public List<TipoEntregaEe> ObtenerTiposEntrega()
        {
            try
            {
                const string strQuery = "SELECT id, descripcion FROM [dbo].[tipoEntrega] ";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var tiposEntrega = new List<TipoEntregaEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        tiposEntrega.Add(new TipoEntregaEe
                        {
                            Id = int.Parse(data["Id"].ToString()),
                            Descripcion = data["Descripcion"].ToString()
                        });
                    }
                }

                Conn.Close();
                return tiposEntrega;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public int CrearDeSucursal(EnvioSucursalEe obj)
        {
            var columnas = new List<string> { "idVenta", "idDireccion", "idSucursal", "fechaSalida", "idEstadoEnvio" };
            var valores = new List<string> { obj.Venta.Id.ToString(), obj.Direccion.Id.ToString(), obj.Sucursal.Id.ToString(), obj.FechaSalida.ToString(CultureInfo.InvariantCulture), obj.EstadoEnvio.ToString() };

            return Insert("envio_sucursal", columnas.ToArray(), valores.ToArray());
        }

        public int CrearDetalleDeSucursal(EnvioSucursalDetalleEe obj)
        {
            var columnas = new List<string> { "idVentaDetalle", "idSucursal", "cantidad" };
            var valores = new List<string> { obj.VentaDetalle.Id.ToString(), obj.Sucursal.Id.ToString(), obj.Cantidad.ToString() };

            return Insert("envio_sucursal_detalle", columnas.ToArray(), valores.ToArray());
        }

        public int CrearDeDeposito(EnvioDepositoEe obj)
        {
            var columnas = new List<string> { "idVenta", "idDireccion", "idDeposito", "fechaSalida", "idEstadoEnvio" };
            var valores = new List<string> { obj.Venta.Id.ToString(), obj.Direccion.Id.ToString(), obj.Deposito.Id.ToString(), obj.FechaSalida.ToString(CultureInfo.InvariantCulture), obj.EstadoEnvio.ToString() };

            return Insert("envio_deposito", columnas.ToArray(), valores.ToArray());
        }

        public int CrearDetalleDeDeposito(EnvioDepositoDetalleEe obj)
        {
            var columnas = new List<string> { "idVentaDetalle", "idDeposito", "cantidad" };
            var valores = new List<string> { obj.VentaDetalle.Id.ToString(), obj.Deposito.Id.ToString(), obj.Cantidad.ToString() };

            return Insert("envio_deposito_detalle", columnas.ToArray(), valores.ToArray());
        }

        //public bool Actualizar(EnvioSucursalEe sucu)
        //{
        //    var query = new SqlCommand("UPDATE Sucursal SET nombre = @nombre, direccion = @direccion, mail = @mail, codigoPostal = @codigoPostal, telefono = @telefono " +
        //                                     "WHERE id = @id", Conn);
        //    query.Parameters.AddWithValue("@id", sucu.Id);
        //    query.Parameters.AddWithValue("@mail", sucu.Mail);
        //    query.Parameters.AddWithValue("@nombre", sucu.Nombre);
        //    query.Parameters.AddWithValue("@telefono", sucu.Telefono);
        //    query.Parameters.AddWithValue("@codigoPostal", sucu.CodigoPostal);
        //    query.Parameters.AddWithValue("@direccion", sucu.Direccion);

        //    return ExecuteQuery(query);
        //}

        private EnvioSucursalEe CastDtoSucursal(SqlDataReader data)
        {
            return new EnvioSucursalEe
            {
                Id = int.Parse(data["id"].ToString()),
                Venta = _ventaDal.Obtener(int.Parse(data["idVenta"].ToString())),
                Direccion = _direccionDal.Obtener(int.Parse(data["idDireccion"].ToString())),
                Sucursal = _sucursalDal.Obtener(int.Parse(data["idSucursal"].ToString())),
                FechaSalida = Convert.ToDateTime(data["fechaSalida"].ToString()),
                FechaLlegada = Convert.ToDateTime(data["fechaLlegada"].ToString()),
                EstadoEnvio = int.Parse(data["EstadoEnvio"].ToString()),
            };
        }

        private EnvioDepositoEe CastDtoDeposito(SqlDataReader data)
        {
            return new EnvioDepositoEe
            {
                Id = int.Parse(data["id"].ToString()),
                Venta = _ventaDal.Obtener(int.Parse(data["idVenta"].ToString())),
                Direccion = _direccionDal.Obtener(int.Parse(data["idDireccion"].ToString())),
                Deposito = _depositoDal.Obtener(int.Parse(data["idSucursal"].ToString())),
                FechaSalida = Convert.ToDateTime(data["fechaSalida"].ToString()),
                FechaLlegada = Convert.ToDateTime(data["fechaLlegada"].ToString()),
                EstadoEnvio = int.Parse(data["EstadoEnvio"].ToString()),
            };
        }
    }
}