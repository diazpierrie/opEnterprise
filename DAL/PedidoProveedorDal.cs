using EE;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;

namespace DAL
{
    public class PedidoProveedorDal : ConnectionDal
    {
        private readonly DepositoDal _depositoDal = new DepositoDal();
        private readonly PedidoEstadoDal _pedidoEstadoDal = new PedidoEstadoDal();
        private readonly ProductoDal _productoDal = new ProductoDal();
        private readonly ProveedorDal _proveedorDal = new ProveedorDal();
        private readonly UsuarioDal _usuarioDal = new UsuarioDal();

        public bool AumentarStockDeposito(DepositoEe deposito, PedidoProveedorDetalleEe producto)
        {
            var query = new SqlCommand("UPDATE [dbo].[deposito_producto] SET [stock] = stock + @stock WHERE idDeposito = @idDeposito AND idProducto = @idProducto", Conn);
            query.Parameters.AddWithValue("@idDeposito", deposito.Id);
            query.Parameters.AddWithValue("@idProducto", producto.Id);
            query.Parameters.AddWithValue("@stock", producto.Cantidad);

            return ExecuteQuery(query);
        }

        public bool ReducirStockDeposito(DepositoEe deposito, ProductoEe producto)
        {
            var query = new SqlCommand("UPDATE [dbo].[deposito_producto] SET [stock] = stock - @stock WHERE idDeposito = @idDeposito AND idProducto = @idProducto", Conn);
            query.Parameters.AddWithValue("@idDeposito", deposito.Id);
            query.Parameters.AddWithValue("@idProducto", producto.Id);
            query.Parameters.AddWithValue("@stock", producto.Cantidad);

            return ExecuteQuery(query);
        }

        public int AgregarProductoDeposito(DepositoEe deposito, PedidoProveedorDetalleEe producto)
        {
            var columnas = new List<string> { "idDeposito", "idProducto", "stock" };
            var valores = new List<string> { deposito.Id.ToString(), producto.Producto.Id.ToString(), producto.Cantidad.ToString() };

            return Insert("deposito_producto", columnas.ToArray(), valores.ToArray());
        }

        public bool ConfirmarRecepcionPedido(PedidoProveedorEe pedido)
        {
            var query = new SqlCommand("UPDATE [dbo].[pedido_proveedor] SET [fechaRecepcion] = @fechaRecepcion, [idEstado] = @idEstado WHERE id = @id", Conn);
            query.Parameters.AddWithValue("@id", pedido.Id);
            query.Parameters.AddWithValue("@fechaRecepcion", DateTime.Now);
            query.Parameters.AddWithValue("@idEstado", 2);

            return ExecuteQuery(query);
        }

        public int Crear(PedidoProveedorEe obj)
        {
            var columnas = new List<string> { "idUsuario", "idProveedor", "idDeposito", "idEstado", "FechaPedido", "total" };
            var valores = new List<string> { obj.Empleado.Id.ToString(), obj.Proveedor.Id.ToString(), obj.Deposito.Id.ToString(), obj.Estado.Id.ToString(), obj.FechaPedido.ToString(CultureInfo.InvariantCulture), obj.Total.ToString(CultureInfo.InvariantCulture) };

            return Insert("pedido_proveedor", columnas.ToArray(), valores.ToArray());
        }

        public int CrearDetalle(PedidoProveedorEe pedido, List<ProductoEe> productos)
        {
            var columnas = new List<string> { "idPedidoProveedor", "idProducto", "cantidad" };
            var valores = new List<string[]>();
            foreach (var producto in productos)
            {
                string[] value =
                {
                    pedido.Id.ToString(), producto.Id.ToString(), producto.Cantidad.ToString()
                };
                valores.Add(value);
            }
            return Insert("pedido_proveedor_detalle", columnas.ToArray(), valores);
        }

        public PedidoProveedorEe Obtener(int id)
        {
            try
            {
                var strQuery = "SELECT" +
                               " id," +
                               " idUsuario," +
                               " idComprador," +
                               " idSucursal," +
                               " idMetodoPago," +
                               " idEstado," +
                               " total," +
                               " fecha FROM venta" +
                               $" WHERE v.id = {id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                PedidoProveedorEe venta = null;

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        venta = CastDto(data);
                    }
                }

                Conn.Close();
                return venta;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public List<PedidoProveedorEe> Obtener()
        {
            try
            {
                const string strQuery = "SELECT [id] ," +
                                        "[idUsuario] ," +
                                        "[idProveedor] ," +
                                        "[idDeposito] ," +
                                        "[fechaPedido] ," +
                                        "[fechaRecepcion] ," +
                                        "[total] ," +
                                        "[idEstado] " +
                                        "FROM [dbo].[pedido_proveedor]";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var ventas = new List<PedidoProveedorEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        ventas.Add(CastDto(data));
                    }
                }

                Conn.Close();
                return ventas;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return new List<PedidoProveedorEe>();
            }
        }

        public List<PedidoProveedorDetalleEe> ObtenerDetalle(int id)
        {
            try
            {
                var strQuery = "SELECT [id] ," +
                               "[idPedidoProveedor] ," +
                               "[idProducto] ," +
                               "[cantidad] " +
                               "FROM [dbo].[pedido_proveedor_detalle]" +
                               $"WHERE idPedidoProveedor = {id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var ventas = new List<PedidoProveedorDetalleEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        ventas.Add(CastDtoDetalle(data));
                    }
                }

                Conn.Close();
                return ventas;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return new List<PedidoProveedorDetalleEe>();
            }
        }

        public List<PedidoProveedorDetalleEe> ObtenerDetallesAgrupados(ProveedorEe proveedor)
        {
            try
            {
                var strQuery =
                    $"SELECT [idProducto], [cantidad] FROM [dbo].[pedido_proveedor_detalle] WHERE[idPedidoProveedor] = {proveedor.Id} AND cantidad != 0 GROUP BY idProducto";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var detalles = new List<PedidoProveedorDetalleEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        detalles.Add(CastDtoPedidoDetalleProveedor(data));
                    }
                }

                Conn.Close();
                return detalles;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return new List<PedidoProveedorDetalleEe>();
            }
        }

        public List<PedidoProveedorEe> ObtenerIniciados()
        {
            try
            {
                const string strQuery = "SELECT [id] ," +
                                        "[idUsuario] ," +
                                        "[idProveedor] ," +
                                        "[idDeposito] ," +
                                        "[fechaPedido] ," +
                                        "[fechaRecepcion] ," +
                                        "[total] ," +
                                        "[idEstado] " +
                                        "FROM [dbo].[pedido_proveedor] " +
                                        "WHERE idEstado = 1";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var ventas = new List<PedidoProveedorEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        ventas.Add(CastDto(data));
                    }
                }

                Conn.Close();
                return ventas;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return new List<PedidoProveedorEe>();
            }
        }

        public List<StockEe> ObtenerPorDeposito(DepositoEe deposito)
        {
            try
            {
                var strQuery = $"SELECT [id] ,[idDeposito] ,[idProducto] ,[stock] FROM [openEnterprise].[dbo].[deposito_producto] WHERE idDeposito = {deposito.Id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var stock = new List<StockEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        stock.Add(CastDtoStockDeposito(data));
                    }
                }

                Conn.Close();
                return stock;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return new List<StockEe>();
            }
        }

        private PedidoProveedorEe CastDto(SqlDataReader data)
        {
            return new PedidoProveedorEe
            {
                Id = int.Parse(data["id"].ToString()),
                Empleado = _usuarioDal.Obtener(int.Parse(data["idUsuario"].ToString())),
                Proveedor = _proveedorDal.Obtener(int.Parse(data["idProveedor"].ToString())),
                Deposito = _depositoDal.Obtener(int.Parse(data["idDeposito"].ToString())),
                Estado = _pedidoEstadoDal.Obtener(int.Parse(data["idEstado"].ToString())),
                FechaPedido = data["FechaPedido"].ToString() != string.Empty ? Convert.ToDateTime(data["FechaPedido"].ToString()) : default,
                FechaRecepcion = data["FechaRecepcion"].ToString() != string.Empty ? Convert.ToDateTime(data["FechaRecepcion"].ToString()) : default,
                Total = double.Parse(data["total"].ToString())
            };
        }

        private PedidoProveedorDetalleEe CastDtoDetalle(SqlDataReader data)
        {
            return new PedidoProveedorDetalleEe
            {
                Id = int.Parse(data["id"].ToString()),
                Pedido = Obtener(int.Parse(data["idPedidoProveedor"].ToString())),
                Producto = _productoDal.Obtener(int.Parse(data["idProducto"].ToString())),
                Cantidad = int.Parse(data["cantidad"].ToString())
            };
        }

        private static PedidoProveedorDetalleEe CastDtoPedidoDetalleProveedor(SqlDataReader data)
        {
            return new PedidoProveedorDetalleEe
            {
                Producto = new ProductoEe() { Id = int.Parse(data["idProducto"].ToString()) },
                Cantidad = int.Parse(data["stock"].ToString()),
            };
        }

        private static StockEe CastDtoStockDeposito(SqlDataReader data)
        {
            return new StockEe
            {
                Id = int.Parse(data["id"].ToString()),
                Edificio = new SucursalEe() { Id = int.Parse(data["idDeposito"].ToString()) },
                Producto = new ProductoEe() { Id = int.Parse(data["idProducto"].ToString()) },
                Cantidad = int.Parse(data["stock"].ToString()),
            };
        }
    }
}