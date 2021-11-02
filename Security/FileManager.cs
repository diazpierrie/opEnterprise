using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Jot;

namespace Security
{
    static class FileManager
    {
        public static Tracker Tracker = new Tracker();

        static FileManager()
        {
            //// tell Jot how to track Window objects
            //Tracker.Configure<T>()
            //    .Id(w => w.Name)
            //    .Properties(w => new { w.Height, w.Width, w.Left, w.Top, w.WindowState })
            //    .PersistOn(nameof(Window.WindowClosed))
        }
	}
}
