using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Text.RegularExpressions;
using System.Windows.Forms;
using System.Xml;

namespace UI
{
	static class Program
	{
		/// <summary>
		/// The main entry point for the application.
		/// </summary>
		[STAThread]
		static void Main()
		{
			Application.EnableVisualStyles();
			Application.SetCompatibleTextRenderingDefault(false);

			// Check DB installation
			if (ConfigurationManager.AppSettings["database"] == "false" && !CheckDatabaseExists("openEnterprise"))
			{
				try
				{
					CreateDatabase();
					UpdateValue();
				}
				catch (Exception ex)
				{
					Console.WriteLine(ex.ToString());
				}
			}

			Application.Run(new Login());
		}

		private static List<Control> GetAllControls(Control container, List<Control> list)
		{
			foreach (Control c in container.Controls)
			{
				if (c.Controls.Count > 0)
					list = GetAllControls(c, list);
				else
					list.Add(c);
			}

			return list;
		}

		public static List<Control> GetAllControls(Control container)
		{
			return GetAllControls(container, new List<Control>());
		}

		private static void UpdateValue()
		{
			var xmlDoc = new XmlDocument();
			xmlDoc.SelectSingleNode("//appSettings/add[@key='database']").Attributes["value"].Value = "true";
			ConfigurationManager.RefreshSection("appSettings");
		}

		private static void CreateDatabase()
		{
			var str = File.ReadAllText("./script.sql");
			var myConn = new SqlConnection(@"Server=DESKTOP-D2N076T\SQLEXPRESS;Integrated security=SSPI;database=master");

			try
			{
				IEnumerable<string> commandStrings = Regex.Split(str, @"^\s*GO\s*$", RegexOptions.Multiline | RegexOptions.IgnoreCase);

				myConn.Open();
				foreach (var commandString in commandStrings)
				{
					if (!string.IsNullOrWhiteSpace(commandString.Trim()))
					{
						using (var command = new SqlCommand(commandString, myConn))
						{
							command.ExecuteNonQuery();
						}
					}
				}

				myConn.Close();
			}
			catch (Exception ex)
			{
				Console.WriteLine(ex.ToString());
			}
		}

		private static bool CheckDatabaseExists(string databaseName)
		{
			using (var connection = new SqlConnection(@"Server=DESKTOP-D2N076T\SQLEXPRESS;Integrated security=SSPI;database=master"))
			{
				using (var command = new SqlCommand($"SELECT db_id('{databaseName}')", connection))
				{
					connection.Open();
					return (command.ExecuteScalar() != DBNull.Value);
				}
			}
		}
	}
}
