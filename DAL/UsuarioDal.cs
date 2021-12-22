using EE;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;

namespace DAL
{
    public class UsuarioDal : ConnectionDal
    {
        private static readonly FamiliaDal DalFamilia = new FamiliaDal();
        private static readonly PuestoDal DalPuesto = new PuestoDal();

        public UsuarioEe Login(string username, string password)
        {
            try
            {
                var query = new SqlCommand("SELECT password FROM usuario WHERE nombreUsuario = @username AND activo = 1", Conn);
                query.Parameters.AddWithValue("@username", username);

                UsuarioEe user = null;
                Conn.Open();
                var data = query.ExecuteReader();

                while (data.Read())
                {
                    if (data["password"].ToString() == password)
                    {
                        user = new UsuarioEe();
                    }
                }
                Conn.Close();

                if (user != null)
                {
                    user = ObtenerPorNombreUsuario(username);
                }

                return user;
            }
            catch (Exception e)
            {
                Conn.Close();
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public int SumarIntentoFallido(string username)
        {
            try
            {
                var queryGet = new SqlCommand("SELECT intentosFallidos FROM usuario WHERE nombreUsuario = @username", Conn);
                queryGet.Parameters.AddWithValue("@username", username);
                Conn.Open();
                var data = queryGet.ExecuteReader();
                var intentosFallidos = 0;

                if (data.HasRows)
                {
                    data.Read();
                    intentosFallidos = Convert.ToInt32(data["intentosFallidos"]);
                }

                Conn.Close();

                intentosFallidos++;

                var querySet = new SqlCommand("UPDATE usuario SET intentosFallidos = @intentosFallidos WHERE nombreUsuario = @username", Conn);
                querySet.Parameters.AddWithValue("@username", username);
                querySet.Parameters.AddWithValue("@intentosFallidos", intentosFallidos);

                ExecuteQuery(querySet);

                return intentosFallidos;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return 0;
            }
        }

        public void ResetearIntentosFallidos(string username)
        {
            try
            {
                var querySet = new SqlCommand("UPDATE usuario SET intentosFallidos = @intentosFallidos WHERE nombreUsuario = @username", Conn);
                querySet.Parameters.AddWithValue("@username", username);
                querySet.Parameters.AddWithValue("@intentosFallidos", 0);

                ExecuteQuery(querySet);
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
            }
        }

        public UsuarioEe ObtenerPorNombreUsuario(string username)
        {
            try
            {
                var query = new SqlCommand("SELECT id, nombreUsuario, nombre, apellido, mail, dni, telefono, idFamilia, idPuesto FROM usuario WHERE nombreUsuario = @username AND activo = 1", Conn);
                query.Parameters.AddWithValue("@username", username);
                Conn.Open();
                var data = query.ExecuteReader();
                UsuarioEe user = null;

                if (data.HasRows)
                {
                    data.Read();
                    user = CastDto(data);
                }

                Conn.Close();
                return user;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public string ObtenerPasswordPorid(int id)
        {
            try
            {
                var query = new SqlCommand("SELECT password FROM usuario WHERE id = @id", Conn);
                query.Parameters.AddWithValue("@id", id);
                Conn.Open();
                var data = query.ExecuteReader();
                string pass = null;

                if (data.HasRows)
                {
                    data.Read();
                    pass = data["password"].ToString();
                }

                Conn.Close();
                return pass;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public List<UsuarioEe> Obtener(string name = null)
        {
            try
            {
                var strQuery = "SELECT id, nombreUsuario, nombre,  apellido, mail, dni, telefono, idFamilia, idPuesto " +
                               "FROM usuario";

                if (name != null)
                {
                    strQuery += " WHERE nombre LIKE CONCAT('%', @name, '%') OR apellido LIKE CONCAT('%', @name, '%')";
                }

                var query = new SqlCommand(strQuery, Conn);
                query.Parameters.AddWithValue("@name", name);

                Conn.Open();
                var data = query.ExecuteReader();
                var users = new List<UsuarioEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        users.Add(CastDto(data));
                    }
                }

                Conn.Close();
                return users;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public List<UsuarioEe> ObtenerActivos(string name = null)
        {
            try
            {
                var strQuery = "SELECT id, nombreUsuario, nombre, apellido, mail, dni, telefono, idFamilia, idPuesto " +
                                     "FROM usuario WHERE activo = 1";

                if (name != null)
                {
                    strQuery += " AND ( nombre LIKE CONCAT('%', @name, '%') OR apellido LIKE CONCAT('%', @name, '%') )";
                }

                var query = new SqlCommand(strQuery, Conn);
                if (name != null)
                {
                    query.Parameters.AddWithValue("@name", name);
                }

                Conn.Open();
                var data = query.ExecuteReader();
                var users = new List<UsuarioEe>();

                if (data.HasRows)
                {
                    while (data.Read())
                    {
                        users.Add(CastDto(data));
                    }
                }

                Conn.Close();
                return users;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public UsuarioEe Obtener(int id)
        {
            try
            {
                var strQuery = "SELECT id, nombreUsuario, nombre, apellido, mail, dni, telefono, idFamilia, idPuesto " +
                               $"FROM usuario WHERE id = {id}";

                var query = new SqlCommand(strQuery, Conn);

                Conn.Open();
                var data = query.ExecuteReader();
                UsuarioEe user = null;

                if (data.HasRows)
                {
                    data.Read();
                    user = CastDto(data);
                }

                Conn.Close();
                return user;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return null;
            }
        }

        public bool Actualizar(UsuarioEe user)
        {
            var query = new SqlCommand("UPDATE usuario SET nombreUsuario = @nombreUsuario, nombre = @nombre, apellido = @apellido, mail = @mail, dni = @dni, " +
                                             "telefono = @telefono, idPuesto = @idPuesto WHERE id = @id", Conn);
            query.Parameters.AddWithValue("@id", user.Id);
            query.Parameters.AddWithValue("@mail", user.Mail);
            query.Parameters.AddWithValue("@nombre", user.Nombre);
            query.Parameters.AddWithValue("@apellido", user.Apellido);
            query.Parameters.AddWithValue("@nombreUsuario", user.NombreUsuario);
            query.Parameters.AddWithValue("@dni", user.Dni);
            query.Parameters.AddWithValue("@telefono", user.Telefono);
            query.Parameters.AddWithValue("@idPuesto", user.Puesto.Id);

            return ExecuteQuery(query);
        }

        public bool Eliminar(int id)
        {
            var query = new SqlCommand("UPDATE usuario SET activo = 0 WHERE id = @id", Conn);
            query.Parameters.AddWithValue("@id", id);

            return ExecuteQuery(query);
        }

        public int Crear(UsuarioEe us, string pass, FamiliaEe fam = null)
        {
            var columns = new List<string>
            {
                "nombre",
                "apellido",
                "dni",
                "mail",
                "telefono",
                "nombreUsuario",
                "password",
                "fechaCreacion",
                "activo",
                "intentosFallidos"
            };

            var values = new List<string>
            {
                us.Nombre,
                us.Apellido,
                us.Dni.ToString(),
                us.Mail,
                us.Telefono,
                us.NombreUsuario,
                pass,
                DateTime.Today.ToString(CultureInfo.InvariantCulture),
                1.ToString(),
                0.ToString()
            };

            if (us.Permiso != null)
            {
                columns.Add("idFamilia");
                values.Add(us.Permiso.Id.ToString());
            }

            if (us.Puesto != null)
            {
                columns.Add("idPuesto");
                values.Add(us.Puesto.Id.ToString());
            }

            return Insert("usuario", columns.ToArray(), values.ToArray());
        }

        public bool ActualizarPassword(int id, string newPass)
        {
            var query = new SqlCommand("UPDATE usuario SET password = @password WHERE id = @id", Conn);
            query.Parameters.AddWithValue("@id", id);
            query.Parameters.AddWithValue("@password", newPass);

            return ExecuteQuery(query);
        }

        public UsuarioEe CastDto(SqlDataReader data)
        {
            var result = new UsuarioEe
            {
                Id = Convert.ToInt32(data["id"]),
                NombreUsuario = data["nombreUsuario"].ToString(),
                Nombre = data["nombre"].ToString(),
                Apellido = data["apellido"].ToString(),
                Mail = data["mail"].ToString(),
                Dni = int.Parse(data["dni"].ToString()),
                Telefono = data["telefono"].ToString(),
                Permiso = DalFamilia.Obtener(int.Parse(data["idFamilia"].ToString())),
                Puesto = DalPuesto.Obtener(new UsuarioEe { Id = int.Parse(data["id"].ToString()) }),
            };

            return result;
        }

        public bool AgregarPuesto(UsuarioEe us)
        {
            var query = new SqlCommand("UPDATE usuario SET idPuesto = @puestoid WHERE id = @id", Conn);
            query.Parameters.AddWithValue("@puestoid", us.Puesto.Id);
            query.Parameters.AddWithValue("@id", us.Id);

            return ExecuteQuery(query);
        }
    }
}