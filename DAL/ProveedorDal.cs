using EE;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;

namespace DAL
{
    public class ProveedorDal : ConnectionDal
    {
        private static PenalizacionMotivoEe CastDtoPenalizacionMotivo(SqlDataReader data)
        {
            var result = new PenalizacionMotivoEe
            {
                Id = Convert.ToInt32(data["id"]),
                Descripcion = data["Descripcion"].ToString(),
            };

            return result;
        }

        private static PenalizacionProveedorEe CastDtoPenalizacionProveedor(SqlDataReader data)
        {
            var result = new PenalizacionProveedorEe
            {
                Descripcion = data["Descripcion"].ToString(),
                Fecha = Convert.ToDateTime(data["fecha"].ToString())
        };

            return result;
        }
        public bool Actualizar(ProveedorEe proveedor)
        {
            var query = new SqlCommand("UPDATE proveedor SET nombre = @nombre, direccion = @direccion, mail = @mail, codigoPostal = @codigoPostal, telefono = @telefono WHERE id = @id", Conn);
            query.Parameters.AddWithValue("@id", proveedor.Id);
            query.Parameters.AddWithValue("@nombre", proveedor.Nombre);
            query.Parameters.AddWithValue("@direccion", proveedor.Direccion);
            query.Parameters.AddWithValue("@mail", proveedor.Mail);
            query.Parameters.AddWithValue("@codigoPostal", proveedor.CodigoPostal);
            query.Parameters.AddWithValue("@telefono", proveedor.Telefono);

            return ExecuteQuery(query);
        }

        public ProveedorEe CastDto(SqlDataReader data)
        {
            var result = new ProveedorEe
            {
                Id = Convert.ToInt32(data["id"]),
                Nombre = data["nombre"].ToString(),
                Direccion = data["direccion"].ToString(),
                CodigoPostal = int.Parse(data["codigoPostal"].ToString()),
                Mail = data["mail"].ToString(),
                Telefono = data["telefono"].ToString(),
                CantidadErrores = int.Parse(data["cantidadErrores"].ToString())
            };

            return result;
        }

        public int Crear(ProveedorEe proveedor)
        {
            var columns = new List<string>
            {
                "nombre",
                "direccion",
                "codigoPostal",
                "mail",
                "telefono",
                "cantidadErrores",
                "activo"
            };

            var values = new List<string>
            {
               proveedor.Nombre,
               proveedor.Direccion,
               proveedor.CodigoPostal.ToString(),
               proveedor.Mail,
               proveedor.Telefono,
               0.ToString(),
               1.ToString()
            };

            return Insert("proveedor", columns.ToArray(), values.ToArray());
        }

        public bool Eliminar(int id)
        {
            var query = new SqlCommand("UPDATE proveedor SET activo = 0 WHERE id = @id", Conn);
            query.Parameters.AddWithValue("@id", id);

            return ExecuteQuery(query);
        }

        public List<ProveedorEe> Obtener(string name = null)
        {
            try
            {
                var strQuery = "SELECT id, nombre, direccion, codigoPostal, mail, telefono, cantidadErrores " +
                               "FROM proveedor";

                if (name != null)
                {
                    strQuery += " WHERE nombre LIKE CONCAT('%', @name, '%') AND activo = 1";
                }
                else
                {
                    strQuery += " WHERE activo = 1";
                }

                var query = new SqlCommand(strQuery, Conn);
                if (name != null)
                {
                    query.Parameters.AddWithValue("@name", name);
                }

                Conn.Open();
                var data = query.ExecuteReader();
                var proveedors = new List<ProveedorEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        proveedors.Add(CastDto(data));
                    }
                }

                Conn.Close();
                return proveedors;
            }
            catch (Exception e)
            {
                Conn.Close();
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public ProveedorEe Obtener(int id)
        {
            try
            {
                var strQuery = "SELECT id, nombre, direccion, mail, codigoPostal, telefono, cantidadErrores " +
                               $"FROM proveedor WHERE id = {id} AND activo = 1";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                ProveedorEe proveedor = null;

                if (data.HasRows)
                {
                    data.Read();
                    proveedor = CastDto(data);
                }

                Conn.Close();
                return proveedor;
            }
            catch (Exception e)
            {
                Conn.Close();
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public List<PenalizacionMotivoEe> ObtenerMotivosPenalizacion()
        {
            try
            {
                var strQuery = "SELECT [id] ,[descripcion] FROM [openEnterprise].[dbo].[cMotivoPenalizacion]";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var motivosPenalizacion = new List<PenalizacionMotivoEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        motivosPenalizacion.Add(CastDtoPenalizacionMotivo(data));
                    }
                }

                Conn.Close();
                return motivosPenalizacion;
            }
            catch (Exception e)
            {
                Conn.Close();
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public List<PenalizacionProveedorEe> ObtenerPenalizaciones(ProveedorEe selectedProveedor)
        {
            try
            {
                var strQuery = "SELECT cm.descripcion, pp.[fecha] FROM[openEnterprise].[dbo].[proveedor_penalizacion] as pp " +
                                     "INNER JOIN cMotivoPenalizacion as cm ON cm.id = pp.idMotivo " +
                                     $"WHERE idProveedor = {selectedProveedor.Id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                var motivosPenalizacion = new List<PenalizacionProveedorEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        motivosPenalizacion.Add(CastDtoPenalizacionProveedor(data));
                    }
                }

                Conn.Close();
                return motivosPenalizacion;
            }
            catch (Exception e)
            {
                Conn.Close();
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public int Penalizar(ProveedorEe proveedor, int idMotivo)
        {
            SumarError(proveedor);
            return CrearPenalizacion(proveedor, idMotivo);
        }

        public bool Restaurar(int proveedorAntesId, ProveedorEe proveedorDespues)
        {
            var query = new SqlCommand("UPDATE proveedor " +
                                              "SET nombre = @nombre, " +
                                              "direccion = @direccion," +
                                              "codigoPostal = @codigoPostal, " +
                                              "mail = @mail," +
                                              "telefono = @telefono, " +
                                              "cantidadErrores = @cantidadErrores " +
                                              "WHERE id = @id", Conn);

            query.Parameters.AddWithValue("@id", proveedorAntesId);
            query.Parameters.AddWithValue("@nombre", proveedorDespues.Nombre);
            query.Parameters.AddWithValue("@direccion", proveedorDespues.Direccion);
            query.Parameters.AddWithValue("@codigoPostal", proveedorDespues.CodigoPostal);
            query.Parameters.AddWithValue("@mail", proveedorDespues.Mail);
            query.Parameters.AddWithValue("@telefono", proveedorDespues.Telefono);
            query.Parameters.AddWithValue("@cantidadErrores", proveedorDespues.CantidadErrores);

            return ExecuteQuery(query);
        }

        private int CrearPenalizacion(ProveedorEe proveedor, int idMotivo)
        {
            var columns = new List<string>
            {
                "idProveedor",
                "fecha",
                "idMotivo",
            };

            var values = new List<string>
            {
                proveedor.Id.ToString(),
                DateTime.Now.ToString(CultureInfo.InvariantCulture),
                idMotivo.ToString(),
            };

            return Insert("proveedor_penalizacion", columns.ToArray(), values.ToArray());
        }

        private void SumarError(ProveedorEe proveedor)
        {
            var query = new SqlCommand("UPDATE [dbo].[proveedor] " +
                                       "SET [cantidadErrores] = cantidadErrores + 1 " +
                                       "WHERE id = @id", Conn);

            query.Parameters.AddWithValue("@id", proveedor.Id);
            ExecuteQuery(query);
        }
    }
}