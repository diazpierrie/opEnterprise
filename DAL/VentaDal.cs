using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using EE;

namespace DAL
{
    public class VentaDal : ConnectionDal
    {
        private readonly UsuarioDal _usuarioDal = new UsuarioDal();
        private readonly CompradorDal _compradorDal = new CompradorDal();
        private readonly SucursalDal _sucursalDal = new SucursalDal();
        private readonly MetodoPagoDal _metodoPago = new MetodoPagoDal();
        private readonly VentaEstadoDal _ventaEstado = new VentaEstadoDal();
        private readonly ProductoDal _productoDal = new ProductoDal();

        public VentaEe Obtener(int id)
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
                VentaEe venta = null;

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

        public List<VentaEe> Obtener()
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
                var ventas = new List<VentaEe>();

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

        public List<VentaEe> Obtener(UsuarioEe user)
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
                var ventas = new List<VentaEe>();

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

        public List<VentaEe> Obtener(CompradorEe comprador)
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
                var sucus = new List<VentaEe>();

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

        public List<VentaEe> Obtener(SucursalEe sucursal)
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
                var sucus = new List<VentaEe>();

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

        public List<VentaDetalleEe> ObtenerDetalle(int id)
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
                var ventas = new List<VentaDetalleEe>();

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


        public int Crear(VentaEe obj)
        {
            var columnas = new List<string> { "idUsuario", "idComprador", "idSucursal", "idMetodoPago", "idTipoEntrega", "idEstado", "fecha", "total" };
            var valores = new List<string> { obj.Empleado.Id.ToString(), obj.Comprador.Id.ToString(), obj.Sucursal.Id.ToString(), obj.MetodoPago.Id.ToString(), obj.TipoEntrega.Id.ToString(), obj.Estado.Id.ToString(), DateTime.Today.ToString(CultureInfo.InvariantCulture), obj.Total.ToString(CultureInfo.InvariantCulture) };

            return Insert("venta", columnas.ToArray(), valores.ToArray());
        }

        public int CrearDetalle(VentaEe venta, List<ProductoEdificioEe> productos)
        {

            var columnas = new List<string> { "idVenta", "idProducto", "costoUnitario", "precioUnitario", "cantidad" };
            var valores = new List<string[]>();
            foreach (var producto in productos)
            {
                string[] value =
                {
                    venta.Id.ToString(), producto.Id.ToString(), producto.Costo.ToString(CultureInfo.InvariantCulture),
                    producto.Precio.ToString(CultureInfo.InvariantCulture), producto.Cantidad.ToString()
                };
                valores.Add(value);
            }
            return Insert("venta_detalle", columnas.ToArray(), valores);

        }

        public int RegistrarPerdida(VentaEe obj)
        {
            var columnas = new List<string> { "idSucursal", "idUsuario", "fecha", "total" };
            var valores = new List<string>
            {
                obj.Sucursal.Id.ToString(),
                obj.Empleado.Id.ToString(),
                DateTime.Today.ToString(CultureInfo.InvariantCulture),
                obj.Total.ToString(CultureInfo.InvariantCulture)
            };

            return Insert("perdida", columnas.ToArray(), valores.ToArray());
        }

        public int RegistrarDetallesPerdida(PerdidaEe perdida, List<VentaDetalleEe> productos)
        {
            var columnas = new List<string> { "idPerdida", "idProducto", "costoUnitario", "cantidad" };
            var valores = new List<string[]>();
            foreach (var producto in productos)
            {
                string[] value =
                {
                    perdida.Id.ToString(),
                    producto.Producto.Id.ToString(),
                    producto.Costo.ToString(CultureInfo.InvariantCulture),
                    producto.Cantidad.ToString()
                };
                valores.Add(value);
            }
            return Insert("perdida_detalle", columnas.ToArray(), valores);
        }

        public int RegistrarDevolucion(VentaEe obj)
        {
            var columnas = new List<string> { "idSucursal", "idUsuario", "fecha" };
            var valores = new List<string>
            {
                obj.Sucursal.Id.ToString(),
                obj.Empleado.Id.ToString(),
                DateTime.Today.ToString(CultureInfo.InvariantCulture)
            };

            return Insert("devolucion", columnas.ToArray(), valores.ToArray());
        }

        public int RegistrarDetallesDevolucion(DevolucionEe devolucion, List<VentaDetalleEe> productos)
        {
            var columnas = new List<string> { "idDevolucion", "cantidad" };
            var valores = new List<string[]>();
            foreach (var producto in productos)
            {
                string[] value =
                {
                    devolucion.Id.ToString(),
                    producto.Cantidad.ToString()
                };
                valores.Add(value);
            }
            return Insert("devolucion_detalle", columnas.ToArray(), valores);
        }

        public bool MarcarVentaComoPerdida(VentaEe venta)
        {
            var query = new SqlCommand("UPDATE venta SET idEstado = @idEstado WHERE id = @id", Conn);
            query.Parameters.AddWithValue("@id", venta.Id);
            query.Parameters.AddWithValue("@idEstado", 3);

            return ExecuteQuery(query);
        }


        private VentaEe CastDto(SqlDataReader data)
        {

            return new VentaEe
            {
                Id = int.Parse(data["id"].ToString()),
                Empleado = _usuarioDal.Obtener(int.Parse(data["idUsuario"].ToString())),
                Comprador = _compradorDal.Obtener(int.Parse(data["idComprador"].ToString())),
                Sucursal = _sucursalDal.Obtener(int.Parse(data["idSucursal"].ToString())),
                MetodoPago = _metodoPago.Obtener(int.Parse(data["idMetodoPago"].ToString())),
                Estado = _ventaEstado.Obtener(int.Parse(data["idEstado"].ToString())),
                Fecha = DateTime.Parse(data["fecha"].ToString()),
                Total = double.Parse(data["total"].ToString())
            };
        }

        private VentaDetalleEe CastDtoDetalle(SqlDataReader data)
        {
            return new VentaDetalleEe
            {
                Id = int.Parse(data["id"].ToString()),
                //Venta = new VentaEe(){Id = int.Parse(data["idVenta"].ToString()) },
                //Producto = new ProductoEe(){Id = int.Parse(data["idProducto"].ToString()) },
                Venta = Obtener(int.Parse(data["idVenta"].ToString())),
                Producto = _productoDal.Obtener(int.Parse(data["idProducto"].ToString())),
                Costo = double.Parse(data["costoUnitario"].ToString()),
                Precio = double.Parse(data["precioUnitario"].ToString()),
                Cantidad = int.Parse(data["cantidad"].ToString())
            };
        }



    }
}