using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class DvDal : ConnectionDal
	{
		public bool VerificarDvv(string tabla)
		{
			var dvvCalculado = CalcularDvv(tabla).GetHashCode().ToString();
			return dvvCalculado.Equals(ObtenerDvv(tabla));
		}

		public string CalcularDvv(string tabla)
		{
			var selectDvh = $"SELECT dvh FROM {tabla}";
			var query = new SqlCommand(selectDvh, Conn);
			Conn.Open();
			var data = query.ExecuteReader();

			var dvhs = new System.Text.StringBuilder();
			while (data.Read())
			{
				dvhs.Append(data["dvh"]);
			}
			Conn.Close();

			return dvhs.ToString();
		}

		public string ObtenerDvv(string tabla)
		{
			var selectDvv = $"SELECT dvv FROM dvv WHERE nombreTabla = '{tabla}'";
			var query = new SqlCommand(selectDvv, Conn);
			Conn.Open();
			var data = query.ExecuteReader();

			var dvv = "";
			while (data.Read())
			{
				dvv = data["dvv"].ToString();
			}
			Conn.Close();

			return dvv;
		}

		public List<string> VerificarDvh(string tabla)
		{
			var result = new List<string>();

			var selectDvh = $"SELECT * FROM {tabla}";
			var query = new SqlCommand(selectDvh, Conn);
			Conn.Open();
			var data = query.ExecuteReader();

			var dvhs = new System.Text.StringBuilder();
			var row = 1;
			while (data.Read())
			{
				for (var i = 0; i < data.FieldCount; i++)
				{
					if (!data.GetName(i).Equals("dvh") && !IsForeignKey(data.GetName(i)))
					{
						dvhs.Append(data.GetValue(i).GetHashCode().ToString());
					}
				}

				var dvhsCalculated = dvhs.ToString().GetHashCode().ToString();
				if (dvhsCalculated != data["dvh"].ToString())
				{
					result.Add(row.ToString());
				}
				row++;
				dvhs.Clear();
			}
			Conn.Close();

			return result;
		}

		public void ActualizarDvv(string tabla)
		{
			try
			{
				if (Conn.State == ConnectionState.Open)
				{
					return;
				}

				var sql = $"UPDATE Dvv SET dvv = '{CalcularDvv(tabla).GetHashCode().ToString()}' WHERE nombreTabla = '{tabla}'";
				Conn.Open();
				var mCom = new SqlCommand(sql, Conn);

				mCom.ExecuteNonQuery();
				Conn.Close();
			}
			catch (Exception e)
			{
				ErrorManagerDal.AgregarMensaje(e.ToString());
			}
		}

		public void ActualizarDvh(string tabla)
		{
			try
			{
				if (Conn.State == ConnectionState.Open)
				{
					return;
				}

                var selectDvh = $"SELECT * FROM {tabla}";
				var selectQuery = new SqlCommand(selectDvh, Conn);
				Conn.Open();
				var data = selectQuery.ExecuteReader();

				var finalQuery = new System.Text.StringBuilder();
				var dvhs = new System.Text.StringBuilder();
                while (data.Read())
				{
					for (var i = 0; i < data.FieldCount; i++)
					{
						if (!data.GetName(i).Equals("dvh") && !IsForeignKey(data.GetName(i)))
						{
							dvhs.Append(data.GetValue(i).GetHashCode().ToString());
						}
					}

					finalQuery.Append(
                        $"UPDATE {tabla} SET dvh = '{dvhs.ToString().GetHashCode().ToString()}' WHERE id = {data["id"]};");
                    dvhs.Clear();
				}
				Conn.Close();

				Conn.Open();
				var updateQuery = new SqlCommand(finalQuery.ToString(), Conn);
				updateQuery.ExecuteNonQuery();
				Conn.Close();
			}
			catch (Exception e)
			{
				ErrorManagerDal.AgregarMensaje(e.ToString());
			}
		}

		public List<string> ObtenerTablas()
		{
			const string selectDvv = "SELECT nombreTabla FROM dvv";
			var query = new SqlCommand(selectDvv, Conn);
			Conn.Open();
			var data = query.ExecuteReader();

			var names = new List<string>();
			while (data.Read())
			{
				names.Add(data["nombreTabla"].ToString());
			}
			Conn.Close();

			return names;
		}
	}
}
