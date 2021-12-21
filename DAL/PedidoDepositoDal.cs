using EE;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;

namespace DAL
{
    public class PedidoDepositoDal : ConnectionDal
    {
        public void Actualizar(ProductoEe sucu)
        {
        }

        public bool ActualizarStockSucursal(SucursalEe sucursal, ProductoEe producto)
        {
            var query = new SqlCommand("UPDATE [dbo].[sucursal_producto] SET [stock] = stock + @stock WHERE idSucursal = @idSucursal AND idProducto = @idProducto", Conn);
            query.Parameters.AddWithValue("@idSucursal", sucursal.Id);
            query.Parameters.AddWithValue("@idProducto", producto.Id);
            query.Parameters.AddWithValue("@stock", producto.Cantidad);

            return ExecuteQuery(query);
        }

        public int AgregarProductoSucursal(SucursalEe sucursal, ProductoEe producto)
        {
            var columnas = new List<string> { "idSucursal", "idProducto", "stock" };
            var valores = new List<string> { sucursal.Id.ToString(), producto.Id.ToString(), producto.Cantidad.ToString() };

            return Insert("sucursal_producto", columnas.ToArray(), valores.ToArray());
        }

        public bool ConfirmarRecepcionPedido(PedidoDepositoEe pedido)
        {
            var query = new SqlCommand("UPDATE [dbo].[pedido_deposito] SET [fechaRecepcion] = @fechaRecepcion, [idEstado] = @idEstado WHERE id = @id", Conn);
            query.Parameters.AddWithValue("@id", pedido.Id);
            query.Parameters.AddWithValue("@fechaRecepcion", DateTime.Now);
            query.Parameters.AddWithValue("@idEstado", 2);

            return ExecuteQuery(query);
        }

        public int Crear(PedidoDepositoEe obj)
        {
            var columnas = new List<string> { "idUsuario", "idSucursal", "fechaPedido", "idEstado" };
            var valores = new List<string> { obj.Empleado.Id.ToString(), obj.Sucursal.Id.ToString(), obj.FechaPedido.ToString(CultureInfo.InvariantCulture), obj.Estado.Id.ToString() };

            return Insert("pedido_deposito", columnas.ToArray(), valores.ToArray());
        }

        public int CrearDetalle(PedidoDepositoEe pedido, List<ProductoEdificioEe> productos)
        {
            var columnas = new List<string> { "idPedidoDeposito", "idDeposito", "idProducto", "costoUnitario", "cantidad" };
            var valores = new List<string[]>();
            foreach (var producto in productos)
            {
                string[] value =
                {
                    pedido.Id.ToString(), producto.Edificio.Id.ToString(), producto.Id.ToString(), producto.Costo.ToString(CultureInfo.InvariantCulture), producto.Cantidad.ToString()
                };
                valores.Add(value);
            }
            return Insert("pedido_deposito_detalle", columnas.ToArray(), valores);
        }

        public bool MarcarVentaComoPerdida(PedidoProveedorEe venta)
        {
            var query = new SqlCommand("UPDATE venta SET idEstado = @idEstado WHERE id = @id", Conn);
            query.Parameters.AddWithValue("@id", venta.Id);
            query.Parameters.AddWithValue("@idEstado", 3);

            return ExecuteQuery(query);
        }

        public PedidoDepositoEe Obtener(int id)
        {
            try
            {
                var strQuery = $"SELECT [id] ," +
                               $"[idUsuario] ," +
                               $"[idSucursal] ," +
                               $"[fechaPedido] ," +
                               $"[fechaRecepcion] ," +
                               $"[idEstado] " +
                               $"FROM [openEnterprise].[dbo].[pedido_deposito]" +
                               $" WHERE id = {id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                PedidoDepositoEe venta = null;

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

        public List<PedidoDepositoEe> Obtener()
        {
            try
            {
                var strQuery = $"SELECT [id] ," +
                               $"[idUsuario] ," +
                               $"[idSucursal] ," +
                               $"[fechaPedido] ," +
                               $"[fechaRecepcion] ," +
                               $"[idEstado] " +
                               $"FROM [openEnterprise].[dbo].[pedido_deposito]";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var ventas = new List<PedidoDepositoEe>();

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
                return null;
            }
        }

        public List<PedidoDepositoDetalleEe> ObtenerDetalle(int id)
        {
            try
            {
                var strQuery = "SELECT [id] ," +
                               "[idPedidoDeposito] ," +
                               "[idDeposito] ," +
                               "[idProducto] ," +
                               "[costoUnitario], " +
                               "[cantidad] " +
                               "FROM [dbo].[pedido_deposito_detalle]" +
                               $"WHERE idPedidoDeposito = {id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var ventas = new List<PedidoDepositoDetalleEe>();

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
                return null;
            }
        }

        public List<PedidoDepositoDetalleEe> ObtenerDetallesAgrupados(ProveedorEe proveedor)
        {
            {
                try
                {
                    var strQuery =
                        $"SELECT [idProducto], [cantidad] FROM [dbo].[pedido_proveedor_detalle] WHERE[idPedidoProveedor] = {proveedor.Id} AND cantidad != 0 GROUP BY idProducto";

                    var query = new SqlCommand(strQuery, Conn);

                    Conn.Open();
                    var data = query.ExecuteReader();
                    var detalles = new List<PedidoDepositoDetalleEe>();

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
                    return null;
                }
            }
        }

        public List<PedidoDepositoEe> ObtenerIniciados()
        {
            try
            {
                var strQuery = "SELECT [id], " +
                               "[idUsuario], " +
                               "[idSucursal], " +
                               "[fechaPedido], " +
                               "[fechaRecepcion] " +
                               ",[idEstado] " +
                               "FROM[openEnterprise].[dbo].[pedido_deposito] " +
                               "WHERE idEstado = 1";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var ventas = new List<PedidoDepositoEe>();

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
                return null;
            }
        }

        public List<StockEe> ObtenerPorSucursal(SucursalEe sucursal)
        {
            try
            {
                var strQuery = $@"SELECT [id] ,[idSucursal] ,[idProducto] ,[stock] FROM [openEnterprise].[dbo].[sucursal_producto] WHERE idSucursal = {sucursal.Id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var stock = new List<StockEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        stock.Add(CastDtoStockSucursal(data));
                    }
                }

                Conn.Close();
                return stock;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        private PedidoDepositoEe CastDto(SqlDataReader data)
        {
            return new PedidoDepositoEe
            {
                Id = int.Parse(data["id"].ToString()),
                Sucursal = new SucursalEe() {Id = int.Parse(data["idSucursal"].ToString()) },
                Empleado = new EmpleadoEe() {Id = int.Parse(data["idUsuario"].ToString())},
                Estado = new PedidoEstadoEe() { Id = int.Parse(data["idEstado"].ToString())},
                FechaPedido = data["FechaPedido"].ToString() != string.Empty ? Convert.ToDateTime(data["FechaPedido"].ToString()) : default,
                FechaRecepcion = data["FechaRecepcion"].ToString() != string.Empty ? Convert.ToDateTime(data["FechaRecepcion"].ToString()) : default,
            };
        }

        private PedidoDepositoDetalleEe CastDtoDetalle(SqlDataReader data)
        {
            return new PedidoDepositoDetalleEe
            {
                Id = int.Parse(data["id"].ToString()),
                Pedido = new PedidoDepositoEe() { Id = int.Parse(data["idPedidoDeposito"].ToString())},
                Deposito = new DepositoEe() { Id = int.Parse(data["idDeposito"].ToString())},
                Producto = new ProductoEdificioEe(){ Id = int.Parse(data["idProducto"].ToString()) },
                Costo = double.Parse(data["costoUnitario"].ToString()),
                Cantidad = int.Parse(data["cantidad"].ToString()),
            };
        }

        private PedidoDepositoDetalleEe CastDtoPedidoDetalleProveedor(SqlDataReader data)
        {
            return new PedidoDepositoDetalleEe
            {
                Producto = new ProductoEe() { Id = int.Parse(data["idProducto"].ToString()) },
                Cantidad = int.Parse(data["stock"].ToString()),
            };
        }

        private StockEe CastDtoStockSucursal(SqlDataReader data)
        {
            return new StockEe
            {
                Id = int.Parse(data["id"].ToString()),
                Edificio = new SucursalEe() { Id = int.Parse(data["idSucursal"].ToString()) },
                Producto = new ProductoEe() { Id = int.Parse(data["idProducto"].ToString()) },
                Cantidad = int.Parse(data["stock"].ToString()),
            };
        }
    }
}