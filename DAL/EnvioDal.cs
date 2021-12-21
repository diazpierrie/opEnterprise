using EE;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using static System.Convert;

namespace DAL
{
    public class EnvioDal : ConnectionDal
    {
        public bool ConfirmarDespachoSucursal(EnvioEe envio)
        {
            var query = new SqlCommand("UPDATE [dbo].[envio_sucursal] SET fechaSalida = @fechaSalida, [idEstado] = @idEstado WHERE id = @id", Conn);
            query.Parameters.AddWithValue("@id", envio.Id);
            query.Parameters.AddWithValue("@fechaSalida", DateTime.Now);
            query.Parameters.AddWithValue("@idEstado", 2);

            return ExecuteQuery(query);
        }

        public bool ConfirmarRecepcionEnvio(EnvioEe envio)
        {
            var query = new SqlCommand("UPDATE [dbo].[envio_sucursal] SET fechaLlegada = @fechaLlegada, [idEstado] = @idEstado WHERE id = @id", Conn);
            query.Parameters.AddWithValue("@id", envio.Id);
            query.Parameters.AddWithValue("@fechaLlegada", DateTime.Now);
            query.Parameters.AddWithValue("@idEstado", 3);

            return ExecuteQuery(query);
        }

        public int CrearDeDeposito(EnvioEe obj)
        {
            var columnas = new List<string> { "idVenta", "idDireccion", "idDeposito", "idEstado" };
            var valores = new List<string> { obj.Venta.Id.ToString(), obj.Direccion.Id.ToString(), obj.Edificio.Id.ToString(), obj.Estado.Id.ToString() };

            return Insert("envio_deposito", columnas.ToArray(), valores.ToArray());
        }

        public int CrearDeSucursal(EnvioEe obj)
        {
            var columnas = new List<string> { "idVenta", "idDireccion", "idSucursal", "idEstado" };
            var valores = new List<string> { obj.Venta.Id.ToString(), obj.Direccion.Id.ToString(), obj.Edificio.Id.ToString(), obj.Estado.Id.ToString() };

            return Insert("envio_sucursal", columnas.ToArray(), valores.ToArray());
        }

        public int CrearDetalleDeDeposito(EnvioDetalleEe obj)
        {
            var columnas = new List<string> { "idVentaDetalle", "idDeposito" };
            var valores = new List<string> { obj.VentaDetalle.Id.ToString(), obj.Edificio.Id.ToString() };

            return Insert("envio_deposito_detalle", columnas.ToArray(), valores.ToArray());
        }

        public int CrearDetalleDeSucursal(EnvioDetalleEe obj)
        {
            var columnas = new List<string> { "idVentaDetalle", "idSucursal" };
            var valores = new List<string> { obj.VentaDetalle.Id.ToString(), obj.Edificio.Id.ToString() };

            return Insert("envio_sucursal_detalle", columnas.ToArray(), valores.ToArray());
        }
        public List<EnvioEe> ObtenerDeDeposito()
        {
            try
            {
                const string strQuery = "SELECT id, idVenta, idDireccion, idDeposito, fechaSalida, fechaLlegada, idEstado FROM envio_sucursal ";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var envios = new List<EnvioEe>();

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

        public List<EnvioEe> ObtenerDeDeposito(int id)
        {
            try
            {
                var strQuery = "SELECT id, idVenta, idDireccion, idDeposito, fechaSalida, fechaLlegada, idEstado FROM envio_sucursal " +
                               $"WHERE idDeposito = {id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                List<EnvioEe> envioEe = null;

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

        public List<EnvioEe> ObtenerDeSucursal(int id)
        {
            try
            {
                var strQuery = "SELECT id, idVenta, idDireccion, idSucursal, fechaSalida, fechaLlegada, idEstado FROM envio_sucursal " +
                               $"WHERE idSucursal = {id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var envioEe = new List<EnvioEe>();

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

        public List<EnvioDetalleEe> ObtenerDetalleDeDeposito(int id)
        {
            try
            {
                var strQuery = $"SELECT [id] ,[idVentaDetalle] ,[idDeposito] FROM [openEnterprise].[dbo].[envio_deposito_detalle] WHERE id = { id }";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var envioEe = new List<EnvioDetalleEe>();

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

        public List<EnvioDetalleEe> ObtenerDetalleDeSucursal(int id)
        {
            try
            {
                var strQuery = $"SELECT [id], [idVentaDetalle], [idSucursal] FROM [dbo].[envio_sucursal_detalle] WHERE id = { id }";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var envioEe = new List<EnvioDetalleEe>();

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
        public EstadoEe ObtenerEstado(int id)
        {
            try
            {
                var strQuery = $"SELECT [id],[descripcion] FROM [dbo].[cEstadoEnvio] WHERE id = {id}";

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

        public List<EstadoEe> ObtenerEstados()
        {
            try
            {
                const string strQuery = "SELECT [id],[descripcion] FROM [dbo].[cEstadoEnvio]";

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
        public List<TipoEntregaEe> ObtenerTiposEntrega()
        {
            try
            {
                const string strQuery = "SELECT id, descripcion FROM [dbo].[cTipoEntrega] ";

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
        //public bool Actualizar(EnvioEe sucu)
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

        private static EnvioEe CastDtoDeposito(SqlDataReader data)
        {
            return new EnvioEe
            {
                Id = int.Parse(data["id"].ToString()),
                Venta = new VentaEe() { Id = int.Parse(data["idVenta"].ToString()) },
                Direccion = new DireccionEe() { Id = int.Parse(data["idDireccion"].ToString()) },
                Edificio = new DepositoEe() { Id = int.Parse(data["idDeposito"].ToString()) },
                FechaSalida = data["fechaSalida"].ToString() != string.Empty ? ToDateTime(data["fechaSalida"].ToString()) : default,
                FechaLlegada = data["fechaLlegada"].ToString() != string.Empty ? ToDateTime(data["fechaLlegada"].ToString()) : default,
                Estado = new EstadoEe() { Id = int.Parse(data["idEstado"].ToString()) }
            };
        }

        private static EnvioEe CastDtoSucursal(SqlDataReader data)
        {
            var ee = new EnvioEe
            {
                Id = int.Parse(data["id"].ToString()),
                Venta = new VentaEe() { Id = int.Parse(data["idVenta"].ToString()) },
                Direccion = new DireccionEe() { Id = int.Parse(data["idDireccion"].ToString()) },
                Edificio = new SucursalEe() { Id = int.Parse(data["idSucursal"].ToString()) },
                FechaSalida = data["fechaSalida"].ToString() != string.Empty ? ToDateTime(data["fechaSalida"].ToString()) : default,
                FechaLlegada = data["fechaLlegada"].ToString() != string.Empty ? ToDateTime(data["fechaLlegada"].ToString()) : default,
                Estado = new EstadoEe() { Id = int.Parse(data["idEstado"].ToString()) }
            };

            return ee;
        }
        private EnvioDetalleEe CastDtoDepositoDetalle(SqlDataReader data)
        {
            return new EnvioDetalleEe
            {
                Id = int.Parse(data["id"].ToString()),
                VentaDetalle = new VentaDetalleEe { Id = int.Parse(data["idVentaDetalle"].ToString()) },
                Edificio = new DepositoEe { Id = int.Parse(data["idDeposito"].ToString()) }
            };
        }

        private EnvioDetalleEe CastDtoSucursalDetalle(SqlDataReader data)
        {
            return new EnvioDetalleEe
            {
                Id = int.Parse(data["id"].ToString()),
                VentaDetalle = new VentaDetalleEe() { Id = int.Parse(data["idVentaDetalle"].ToString()) },
                Edificio = new SucursalEe() { Id = int.Parse(data["idSucursal"].ToString()) }
            };
        }
    }
}