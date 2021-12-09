using EE;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;

namespace DAL
{
    public class PedidoProveedorDal : ConnectionDal
    {
        private readonly UsuarioDal _usuarioDal = new UsuarioDal();
        private readonly ProveedorDal _proveedorDal = new ProveedorDal();
        private readonly DepositoDal _depositoDal = new DepositoDal();
        private readonly PedidoEstadoDal _pedidoEstadoDal = new PedidoEstadoDal();
        private readonly ProductoDal _productoDal = new ProductoDal();

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
                var strQuery = "SELECT" +
                               " id," +
                               " idUsuario," +
                               " idComprador," +
                               " idSucursal," +
                               " idMetodoPago," +
                               " idEstado," +
                               " total," +
                               " fecha FROM venta";

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
                return null;
            }
        }

        public List<PedidoProveedorEe> Obtener(UsuarioEe user)
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
                               $" WHERE v.idUsuario = {user.Id}";

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
                return null;
            }
        }

        public List<PedidoProveedorEe> Obtener(CompradorEe comprador)
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
                               $" WHERE v.idUsuario = {comprador.Id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var sucus = new List<PedidoProveedorEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        sucus.Add(CastDto(data));
                    }
                }

                Conn.Close();
                return sucus;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public List<PedidoProveedorEe> Obtener(SucursalEe sucursal)
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
                               $" WHERE idSucursal = {sucursal.Id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var sucus = new List<PedidoProveedorEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        sucus.Add(CastDto(data));
                    }
                }

                Conn.Close();
                return sucus;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public List<PedidoProveedorDetalleEe> ObtenerDetalle(int id)
        {
            try
            {
                var strQuery = "SELECT" +
                               " id," +
                               " idVenta," +
                               " idProducto," +
                               " costoUnitario," +
                               " precioUnitario," +
                               " cantidad" +
                               " FROM venta_detalle" +
                               $" WHERE idVenta = {id}";

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
                return null;
            }
        }

        public void Actualizar(ProductoEe sucu)
        {
        }

        public int Crear(PedidoProveedorEe obj)
        {
            var columnas = new List<string> { "idUsuario", "idProveedor", "idDeposito", "idEstado", "fecha", "total" };
            var valores = new List<string> { obj.Empleado.Id.ToString(), obj.Proveedor.Id.ToString(), obj.Deposito.Id.ToString(), obj.Estado.Id.ToString(), DateTime.Today.ToString(CultureInfo.InvariantCulture), obj.Total.ToString(CultureInfo.InvariantCulture) };

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

        public bool MarcarVentaComoPerdida(PedidoProveedorEe venta)
        {
            var query = new SqlCommand("UPDATE venta SET idEstado = @idEstado WHERE id = @id", Conn);
            query.Parameters.AddWithValue("@id", venta.Id);
            query.Parameters.AddWithValue("@idEstado", 3);

            return ExecuteQuery(query);
        }

        private PedidoProveedorEe CastDto(SqlDataReader data)
        {
            return new PedidoProveedorEe
            {
                Id = int.Parse(data["id"].ToString()),
                Empleado = _usuarioDal.Obtener(int.Parse(data["idUsuario"].ToString())),
                Proveedor = _proveedorDal.Obtener(int.Parse(data["idComprador"].ToString())),
                Deposito = _depositoDal.Obtener(int.Parse(data["idSucursal"].ToString())),
                Estado = _pedidoEstadoDal.Obtener(int.Parse(data["idEstado"].ToString())),
                FechaPedido = DateTime.Parse(data["fechaPedido"].ToString()),
                FechaRecepcion = DateTime.Parse(data["FechaRecepcion"].ToString()),
                Total = double.Parse(data["total"].ToString())
            };
        }

        private PedidoProveedorDetalleEe CastDtoDetalle(SqlDataReader data)
        {
            return new PedidoProveedorDetalleEe
            {
                Id = int.Parse(data["id"].ToString()),
                //Venta = new PedidoEe(){Id = int.Parse(data["idVenta"].ToString()) },
                //Producto = new ProductoEe(){Id = int.Parse(data["idProducto"].ToString()) },
                Pedido = Obtener(int.Parse(data["idPedidoProveedor"].ToString())),
                Producto = _productoDal.Obtener(int.Parse(data["idProducto"].ToString())),
                Cantidad = int.Parse(data["cantidad"].ToString())
            };
        }
    }
}