using System;
using System.IO;

namespace DAL
{
    public class ErrorManagerDal
    {
        public static void AgregarMensaje(string errorMsg)
        {
            using (var file =
                new StreamWriter("./error_log.txt", true))
            {
                file.WriteLine(DateTime.Now);
                file.WriteLine("");
                file.WriteLine(errorMsg);
            }
        }
    }
}