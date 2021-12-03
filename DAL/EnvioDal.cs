using EE;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using static System.Convert;

namespace DAL
{
    public class EnvioDal : ConnectionDal
    {
        public List<EnvioSucursalEe> ObtenerDeSucursal(int id)
        {
            try
            {
                var strQuery = "SELECT id, idVenta, idDireccion, idSucursal, fechaSalida, fechaLlegada, idEstadoEnvio FROM envio_sucursal " +
                               $"WHERE idSucursal = {id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var envioEe = new List<EnvioSucursalEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        envioEe.Add(CastDtoSucursal(data));
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

        public List<EnvioSucursalDetalleEe> ObtenerDetalleDeSucursal(int id)
        {
            try
            {
                var strQuery = $"SELECT [id], [idVentaDetalle], [idSucursal] FROM [dbo].[envio_sucursal_detalle] WHERE id = { id }";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var envioEe = new List<EnvioSucursalDetalleEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        envioEe.Add(CastDtoSucursalDetalle(data));
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
                const string strQuery = "SELECT id, idVenta, idDireccion, idDeposito, fechaSalida, fechaLlegada, idEstadoEnvio FROM envio_sucursal ";

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

        public List<EnvioDepositoDetalleEe> ObtenerDetalleDeDeposito(int id)
        {
            try
            {
                var strQuery = $"SELECT [id] ,[idVentaDetalle] ,[idDeposito] FROM [openEnterprise].[dbo].[envio_deposito_detalle] WHERE id = { id }";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var envioEe = new List<EnvioDepositoDetalleEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        envioEe.Add(CastDtoDepositoDetalle(data));
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

        public List<EnvioDepositoEe> ObtenerDeDeposito(int id)
        {
            try
            {
                var strQuery = "SELECT id, idVenta, idDireccion, idDeposito, fechaSalida, fechaLlegada, idEstadoEnvio FROM envio_sucursal " +
                               $"WHERE idDeposito = {id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                List<EnvioDepositoEe> envioEe = null;

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        envioEe.Add(CastDtoDeposito(data));
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

        public List<EstadoEe> ObtenerEstados()
        {
            try
            {
                const string strQuery = "SELECT [id],[descripcion] FROM [dbo].[estadoEnvio]";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var tiposEntrega = new List<EstadoEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        tiposEntrega.Add(new EstadoEe
                        {
                            Id = int.Parse(data["Id"].ToString()),
                            Nombre = data["Descripcion"].ToString()
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

        public EstadoEe ObtenerEstado(int id)
        {
            try
            {
                var strQuery = $"SELECT [id],[descripcion] FROM [dbo].[estadoEnvio] WHERE id = {id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var tiposEntrega = new EstadoEe();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        tiposEntrega = new EstadoEe
                        {
                            Id = int.Parse(data["Id"].ToString()),
                            Nombre = data["Descripcion"].ToString()
                        };
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
            var columnas = new List<string> { "idVenta", "idDireccion", "idSucursal", "idEstadoEnvio" };
            var valores = new List<string> { obj.Venta.Id.ToString(), obj.Direccion.Id.ToString(), obj.Sucursal.Id.ToString(), obj.Estado.Id.ToString() };

            return Insert("envio_sucursal", columnas.ToArray(), valores.ToArray());
        }

        public int CrearDetalleDeSucursal(EnvioSucursalDetalleEe obj)
        {
            var columnas = new List<string> { "idVentaDetalle", "idSucursal" };
            var valores = new List<string> { obj.VentaDetalle.Id.ToString(), obj.Sucursal.Id.ToString() };

            return Insert("envio_sucursal_detalle", columnas.ToArray(), valores.ToArray());
        }

        public int CrearDeDeposito(EnvioDepositoEe obj)
        {
            var columnas = new List<string> { "idVenta", "idDireccion", "idDeposito", "idEstadoEnvio" };
            var valores = new List<string> { obj.Venta.Id.ToString(), obj.Direccion.Id.ToString(), obj.Deposito.Id.ToString(), obj.Estado.Id.ToString() };

            return Insert("envio_deposito", columnas.ToArray(), valores.ToArray());
        }

        public int CrearDetalleDeDeposito(EnvioDepositoDetalleEe obj)
        {
            var columnas = new List<string> { "idVentaDetalle", "idDeposito" };
            var valores = new List<string> { obj.VentaDetalle.Id.ToString(), obj.Deposito.Id.ToString() };

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

        private static EnvioSucursalEe CastDtoSucursal(SqlDataReader data)
        {
            var ee = new EnvioSucursalEe
            {
                Id = int.Parse(data["id"].ToString()),
                Venta = new VentaEe() { Id = int.Parse(data["idVenta"].ToString()) },
                Direccion = new DireccionEe() { Id = int.Parse(data["idDireccion"].ToString()) },
                Sucursal = new SucursalEe() { Id = int.Parse(data["idSucursal"].ToString()) },
                FechaSalida = data["fechaSalida"].ToString() != string.Empty ? ToDateTime(data["fechaSalida"].ToString()) : default,
                FechaLlegada = data["fechaLlegada"].ToString() != string.Empty ? ToDateTime(data["fechaLlegada"].ToString()) : default,
                Estado = new EstadoEe() { Id = int.Parse(data["idEstadoEnvio"].ToString()) }
            };

            return ee;
        }

        private static EnvioDepositoEe CastDtoDeposito(SqlDataReader data)
        {
            return new EnvioDepositoEe
            {
                Id = int.Parse(data["id"].ToString()),
                Venta = new VentaEe() { Id = int.Parse(data["idVenta"].ToString()) },
                Direccion = new DireccionEe() { Id = int.Parse(data["idDireccion"].ToString()) },
                Deposito = new DepositoEe() { Id = int.Parse(data["idSucursal"].ToString()) },
                FechaSalida = data["fechaSalida"].ToString() != string.Empty ? ToDateTime(data["fechaSalida"].ToString()) : default,
                FechaLlegada = data["fechaLlegada"].ToString() != string.Empty ? ToDateTime(data["fechaLlegada"].ToString()) : default,
                Estado = new EstadoEe() { Id = int.Parse(data["idEstadoEnvio"].ToString()) }
            };
        }

        private EnvioSucursalDetalleEe CastDtoSucursalDetalle(SqlDataReader data)
        {
            return new EnvioSucursalDetalleEe
            {
                Id = int.Parse(data["id"].ToString()),
                VentaDetalle = new VentaDetalleEe() { Id = int.Parse(data["idVentaDetalle"].ToString()) },
                Sucursal = new SucursalEe() { Id = int.Parse(data["idSucursal"].ToString()) }
            };
        }

        private EnvioDepositoDetalleEe CastDtoDepositoDetalle(SqlDataReader data)
        {
            return new EnvioDepositoDetalleEe
            {
                Id = int.Parse(data["id"].ToString()),
                VentaDetalle = new VentaDetalleEe { Id = int.Parse(data["idVentaDetalle"].ToString()) },
                Deposito = new DepositoEe { Id = int.Parse(data["idDeposito"].ToString()) }
            };
        }
    }
}