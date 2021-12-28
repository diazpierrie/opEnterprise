using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace DAL
{
    public class BackupDal : ConnectionDal
    {
        public bool BackUp()
        {
            try
            {
                var query = new SqlCommand("SP_Backup", Conn);
                query.CommandType = CommandType.StoredProcedure;
                var path = @"C:\openEnterprise Backup\";
                if (!Directory.Exists(path))
                {
                    Directory.CreateDirectory(path);
                }
                var bkpPath = path + "\\bkp" + GetTimestamp(DateTime.Now) + ".bak";
                File.Delete(bkpPath);
                query.Parameters.AddWithValue("@bkpPath", bkpPath);

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

        public bool Restore(string nombreArchivo)
        {
            try
            {
                var singleUser = new SqlCommand("SP_Restore_Step_1", Conn);
                singleUser.CommandType = CommandType.StoredProcedure;

                var query = new SqlCommand("SP_Restore_Step_2", Conn);
                query.CommandType = CommandType.StoredProcedure;
                query.Parameters.AddWithValue("@bkpPath", nombreArchivo);

                var multiUser = new SqlCommand("SP_Restore_Step_3", Conn);
                multiUser.CommandType = CommandType.StoredProcedure;

                Conn.Open();
                singleUser.ExecuteNonQuery();
                query.ExecuteNonQuery();
                multiUser.ExecuteNonQuery();
                Conn.Close();

                return true;
            }
            catch (Exception e)
            {
                ErrorManagerDal.AgregarMensaje(e.ToString());
                return false;
            }
        }
    }
}