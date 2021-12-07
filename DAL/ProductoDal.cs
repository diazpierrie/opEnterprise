using EE;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;

namespace DAL
{
    public class ProductoDal : ConnectionDal
    {
        private static readonly DepositoDal DepositoDal = new DepositoDal();
        private static readonly SucursalDal SucursalDal = new SucursalDal();

        public bool Actualizar(ProductoEe sucu)
        {
            var query = new SqlCommand("UPDATE producto SET nombre = @nombre, codigo = @codigo, precio = @precio, costo = @costo " +
                                             "WHERE id = @id", Conn);
            query.Parameters.AddWithValue("@id", sucu.Id);
            query.Parameters.AddWithValue("@codigo", sucu.Codigo);
            query.Parameters.AddWithValue("@precio", sucu.Precio);
            query.Parameters.AddWithValue("@costo", sucu.Costo);

            return ExecuteQuery(query);
        }

        public bool ActualizarStockSucursal(SucursalEe sucursal, VentaDetalleEe producto)
        {
            //TODO: Actualizar stock de un producto de la sucursal, si no existe, agregarlo a la sucursal
            var query = new SqlCommand("UPDATE [dbo].[sucursal_producto] SET[stock] = stock + @stock WHERE [idSucursal] = @idSucursal AND [idProducto] = @idProducto", Conn);
            query.Parameters.AddWithValue("@idSucursal", sucursal.Id);
            query.Parameters.AddWithValue("@idProducto", producto.Id);
            query.Parameters.AddWithValue("@stock", producto.Cantidad);

            return ExecuteQuery(query);
        }

        public int AgregarProductoSucursal(SucursalEe sucursal, VentaDetalleEe producto)
        {
            var columnas = new List<string> { "idSucursal", "idProducto", "stock" };
            var valores = new List<string> { sucursal.Id.ToString(), producto.Producto.Id.ToString(), producto.Cantidad.ToString() };

            return Insert("sucursal_producto", columnas.ToArray(), valores.ToArray());
        }

        public bool Borrar(int id)
        {
            var query = new SqlCommand("UPDATE Sucursal SET activo = 0 WHERE id = @id", Conn);
            query.Parameters.AddWithValue("@id", id);

            return ExecuteQuery(query);
        }

        public int Crear(ProductoEe obj)
        {
            var columnas = new List<string> { "nombre", "codigo", "fechaCreacion", "precio", "costo", "activo" };
            var valores = new List<string> { obj.Nombre, obj.Codigo, obj.FechaCreacion.ToString(CultureInfo.InvariantCulture), obj.Precio.ToString(CultureInfo.InvariantCulture), obj.Costo.ToString(CultureInfo.InvariantCulture), 1.ToString() };

            return Insert("producto", columnas.ToArray(), valores.ToArray());
        }

        public ProductoEe Obtener(int id)
        {
            try
            {
                string strQuery = $"SELECT id, nombre, codigo, fechaCreacion, precio, costo FROM producto WHERE id = {id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                ProductoEe sucursal = null;

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        sucursal = CastDto(data);
                    }
                }

                Conn.Close();
                return sucursal;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public List<ProductoEe> Obtener(ProductoEe dep, int limit = 0)
        {
            try
            {
                var strQuery = "SELECT";

                if (limit != 0)
                {
                    strQuery += $" TOP {limit}";
                }

                strQuery += " id, nombre, direccion, mail, codigoPostal, telefono FROM Sucursal " +
                    $"WHERE id = {dep.Id}";

                if (limit != 0)
                {
                    strQuery += " ORDER BY id DESC";
                }

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var sucursal = new List<ProductoEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        sucursal.Add(CastDto(data));
                    }
                }

                Conn.Close();

                return sucursal;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public List<ProductoEe> ObtenerActivos(string name = null)
        {
            try
            {
                var strQuery = "SELECT id, nombre, fechaCreacion, precio, costo " +
                                     "FROM producto WHERE activo = 1";

                if (name != null)
                {
                    strQuery += " AND ( nombre LIKE CONCAT('%', @name, '%')";
                }

                var query = new SqlCommand(strQuery, Conn);
                if (name != null)
                {
                    query.Parameters.AddWithValue("@name", name);
                }

                Conn.Open();
                var data = query.ExecuteReader();
                var sucus = new List<ProductoEe>();

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

        public List<ProductoEdificioEe> ObtenerPorSucursal(SucursalEe sucursal)
        {
            try
            {
                var strQuery = "SELECT p.[id], s.[idSucursal], p.[nombre] ,p.[codigo] ,p.[precio], p.[costo], s.[stock] " +
                                     "FROM[dbo].[producto] as p " +
                                     "INNER JOIN sucursal_producto as s " +
                                     "ON s.idProducto = p.id " +
                                     $"WHERE s.idSucursal = {sucursal.Id} AND activo = 1 AND stock != 0";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var sucus = new List<ProductoEdificioEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        sucus.Add(CastDtoSucursal(data));
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

        public IList<ProductoEdificioEe> ObtenerTodosDeposito()
        {
            try
            {
                var strQuery = " SELECT p.[id], d.[idDeposito], p.[nombre] ,p.[codigo] ,p.[precio], p.[costo], d.[stock] FROM " +
                               "[dbo].[producto] as p " +
                               "INNER JOIN deposito_producto as d " +
                               "ON d.idProducto = p.id WHERE p.activo = 1";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var sucus = new List<ProductoEdificioEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        sucus.Add(CastDtoDeposito(data));
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
        private static ProductoEe CastDto(SqlDataReader data)
        {
            return new ProductoEe
            {
                Id = int.Parse(data["id"].ToString()),
                Nombre = data["nombre"].ToString(),
                Codigo = data["codigo"].ToString(),
                Precio = double.Parse(data["precio"].ToString()),
                Costo = double.Parse(data["Costo"].ToString())
            };
        }

        private static ProductoEdificioEe CastDtoDeposito(SqlDataReader data)
        {
            return new ProductoEdificioEe
            {
                Id = int.Parse(data["id"].ToString()),
                Nombre = data["nombre"].ToString(),
                Codigo = data["codigo"].ToString(),
                Costo = double.Parse(data["costo"].ToString()),
                Precio = double.Parse(data["precio"].ToString()),
                Cantidad = int.Parse(data["stock"].ToString()),
                Edificio = DepositoDal.Obtener(int.Parse(data["idDeposito"].ToString()))
            };
        }

        private static ProductoEdificioEe CastDtoSucursal(SqlDataReader data)
        {
            return new ProductoEdificioEe
            {
                Id = int.Parse(data["id"].ToString()),
                Nombre = data["nombre"].ToString(),
                Codigo = data["codigo"].ToString(),
                Precio = double.Parse(data["precio"].ToString()),
                Costo = double.Parse(data["Costo"].ToString()),
                Cantidad = int.Parse(data["stock"].ToString()),
                Edificio = SucursalDal.Obtener(int.Parse(data["idSucursal"].ToString()))
            };
        }
    }
}