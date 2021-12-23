using DAL;
using EE;
using System;
using System.Collections.Generic;
using PdfSharp.Drawing;
using PdfSharp.Drawing.Layout;
using PdfSharp.Pdf;

namespace Security
{
    public static class UsuarioManager
    {
        private static readonly UsuarioDal Dal = new UsuarioDal();

        public static void Actualizar(UsuarioEe usuario)
        {
            Dal.Actualizar(usuario);
            PermisosManager.ModificarFamilia(usuario, PermisosManager.ObtenerFamilia(usuario));

            BitacoraManager.AgregarMensajeControl("Usuario actualizado: ", usuario);

            Dv.ActualizarDv();
        }

        public static void Eliminar(UsuarioEe usuario)
        {
            Dal.Eliminar(usuario.Id);
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Usuario Eliminado ", usuario);
        }

        public static int Crear(UsuarioEe usuario)
        {
            if (Dal.ObtenerPorNombreUsuario(usuario.NombreUsuario) != null)
            {
                return 0;
            }

            usuario.Id = Dal.Crear(usuario, Encriptador.Encriptar("123456"), PermisosManager.ObtenerFamilia(usuario));
            Dv.ActualizarDv();

            BitacoraManager.AgregarMensajeControl("Usuario creado: ", usuario);

            return usuario.Id;
        }

        public static bool ActualizarPassword(UsuarioEe usuario, string oldPass, string newPass)
        {
            if (Dal.ObtenerPasswordPorid(usuario.Id).Equals(Encriptador.Encriptar(oldPass)))
            {
                Dal.ActualizarPassword(usuario.Id, Encriptador.Encriptar(newPass));

                BitacoraManager.AgregarMensaje(new BitacoraMensajeEe
                {
                    Titulo = "Cambio de password",
                    Descripcion = "Se ha realizado el cambio de contrasena del usuario: " + usuario.Id,
                    Tipo = Tipo.Info,
                    Fecha = DateTime.Now,
                    Usuario = Sesion.ObtenerSesion().Usuario
                });

                Dv.ActualizarDv();
                return true;
            }

            return false;
        }

        public static List<UsuarioEe> Obtener(string name = "")
        {
            return Dal.Obtener(name);
        }

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