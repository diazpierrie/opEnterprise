using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace DAL
{
    public abstract class ConnectionDal
    {
		protected SqlConnection Conn;
		
        protected ConnectionDal()
		{
			try
			{
				Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["local"].ConnectionString);
			}
			catch (Exception e)
			{
				Console.WriteLine(e);
			}
		}

        protected static bool IsForeignKey(string colName)
		{
			if (colName.Length < 4)
			{
				return false;
			}

			if (colName.Substring(colName.Length - 3, 3).Equals("_id"))
			{
				return true;
			}

			return false;
		}

        protected bool DeleteByid(string table, int id)
		{
			try
			{
				if (Conn.State == ConnectionState.Open)
				{
					return false;
				}

				var query = new SqlCommand($"DELETE FROM {table} WHERE id = {id}", Conn);

				Conn.Open();
				query.ExecuteNonQuery();
				Conn.Close();
				return true;
			}
			catch (Exception e)
			{
				ErrorManagerDal.AgregarMensaje(e.ToString());
				return false;
			}
		}

        protected int Insert(string table, string[] columns, string[] values)
		{
			try
			{
				var queryString = new StringBuilder().AppendFormat("INSERT INTO {0} (", table);

				for (var i = 0; i < columns.Length; i++)
				{
					if (i != 0)
					{
						queryString.Append(", ");
					}

					queryString.Append(columns[i]);
				}

				queryString.Append(") VALUES (");

				for (var i = 0; i < columns.Length; i++)
				{
					if (i != 0)
					{
						queryString.Append(", ");
					}

					queryString.Append("@" + columns[i]);
				}

				queryString.Append(")");

				var query = new SqlCommand(queryString.ToString(), Conn);

				query.Parameters.AddWithValue("@table", table);
				for (var i = 0; i < columns.Length; i++)
				{
					if (values[i] == null)
					{
						query.Parameters.AddWithValue("@" + columns[i], DBNull.Value);
					}
					else
					{
						query.Parameters.AddWithValue("@" + columns[i], Truncate(values[i], 200));
					}
				}

				if (Conn.State == ConnectionState.Open)
				{
					return 0;
				}

				Conn.Open();
				query.ExecuteNonQuery();
				Conn.Close();

				return GetLastid(table);
			}
			catch (Exception e)
			{
				ErrorManagerDal.AgregarMensaje(e.ToString());
				return 0;
			}
		}
        protected int Insert(string table, string[] columns, List<string[]> values)
        {
            try
            {
                var queryString = new StringBuilder().AppendFormat("INSERT INTO {0} (", table);

                for (var i = 0; i < columns.Length; i++)
                {
                    if (i != 0)
                    {
                        queryString.Append(", ");
                    }

                    queryString.Append(columns[i]);
                }

                queryString.Append(") VALUES");

                var loopCount = 0;
                foreach (var value in values)
                {
                    loopCount++;
                    queryString.Append(" (");
                    for (var i = 0; i < value.Length; i++)
                    {
                        if (i != 0)
                        {
                            queryString.Append(", ");
                        }

                        queryString.Append(value[i]);
                    }

                    queryString.Append(")");
                    if (loopCount != values.Count)
                    {
                        queryString.Append(",");
                    }
                }

                var query = new SqlCommand(queryString.ToString(), Conn);

                if (Conn.State == ConnectionState.Open)
                {
                    return 0;
                }

                Conn.Open();
                query.ExecuteNonQuery();
                Conn.Close();

                return GetLastid(table);
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return 0;
            }
        }

		public bool ExecuteQuery(SqlCommand strQuery)
		{
			try
			{
				if (Conn.State == ConnectionState.Open)
				{
					return false;
				}

				Conn.Open();
				strQuery.ExecuteNonQuery();
				Conn.Close();

				return true;
			}
			catch (Exception e)
			{
				ErrorManagerDal.AgregarMensaje(e.ToString());
				return false;
			}
		}

        private string Truncate(string value, int maxChars)
		{
			return value.Length <= maxChars ? value : value.Substring(0, maxChars) + " ...";
		}

        protected int GetLastid(string table)
		{
			try
			{
				if (Conn.State == ConnectionState.Open)
				{
					return 0;
				}

				var query = new SqlCommand($"SELECT TOP 1 id FROM {table} ORDER BY id DESC", Conn);
				Conn.Open();
				var data = query.ExecuteReader();
				var result = 0;

				if (data.HasRows)
				{
					data.Read();
					result = int.Parse(data["id"].ToString());
				}

				Conn.Close();
				return result;
			}
			catch (Exception e)
			{
				ErrorManagerDal.AgregarMensaje(e.ToString());
				return 0;
			}
		}

		public bool ColumnExists(IDataReader reader, string columnName)
		{
			for (var i = 0; i < reader.FieldCount; i++)
			{
				if (reader.GetName(i).Equals(columnName, StringComparison.InvariantCultureIgnoreCase))
				{
					return true;
				}
			}

			return false;
		}

		public string GetTimestamp(DateTime value)
		{
			return value.ToString("yyyyMMdd");
		}
	}
}
