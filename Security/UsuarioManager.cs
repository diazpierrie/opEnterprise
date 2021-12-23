using DAL;
using EE;
using PdfSharp.Drawing;
using PdfSharp.Drawing.Layout;
using PdfSharp.Pdf;

namespace Security
{
    public static class UsuarioManager
    {
        private static readonly UsuarioDal Dal = new UsuarioDal();

        public static UsuarioEe Obtener(int id)
        {
            return Dal.Obtener(id);
        }

        public static string ExportPdf(string filename)
        {
            var sucursalDal = new SucursalDal();
            var sucursales = sucursalDal.ObtenerActivos();

            PdfDocument document = new PdfDocument();
            document.Info.Title = "openEnterprise";

            XFont fontTitle = new XFont("Verdana", 20, XFontStyle.Bold);
            XFont fontBody = new XFont("Verdana", 14, XFontStyle.Regular);

            foreach (var sucursal in sucursales)
            {
                PdfPage page = document.AddPage();
                XGraphics gfx = XGraphics.FromPdfPage(page);
                XTextFormatter tf = new XTextFormatter(gfx);
                XRect rect = new XRect(40, 40, page.Width, page.Height);

                tf.DrawString($"{sucursal}, {sucursal.Direccion} ", fontTitle, XBrushes.Black, rect, XStringFormats.TopLeft);

                tf.DrawString($"El producto mas vendido: {sucursalDal.CalcularProductoMasVendido(sucursal) ?? "No se registran ventas"} " +
                              $"\n" +
                              $"Ganancias Totales: {sucursalDal.CalcularGananciasTotales(sucursal) ?? "No se registran ganancias"}" +
                              $"\n" +
                              $"Mejor Vendedor: {sucursalDal.CalcularMejorVendedor(sucursal) ?? "No se registran ventas"}", fontBody, XBrushes.Black,
                   new XRect(40, 90, page.Width, page.Height), XStringFormats.TopLeft);
            }

            document.Save(filename);

            return filename;
        }

    }
}