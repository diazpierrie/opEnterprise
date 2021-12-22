using System;
using BLL;
using EE;
using Security;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class VentaVerDetalle : UpdatableForm
    {
        public VentaVerDetalle(VentaEe venta)
        {
            InitializeComponent();

            AllControls = Program.GetAllControls(this);
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

            gridDetalle.DataSource = VentaBll.ObtenerDetalles(venta);

            if (gridDetalle.ColumnCount == 0 || gridDetalle.RowCount == 0)
            {
                return;
            }

            gridDetalle.Columns["id"].Visible = false;
            gridDetalle.Columns["Venta"].Visible = false;

            gridDetalle.Columns["producto"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["product"];
            gridDetalle.Columns["costo"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["cost"];
            gridDetalle.Columns["precio"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["price"];
            gridDetalle.Columns["cantidad"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["amount"];
            gridDetalle.Columns["totaldetalle"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["total_detail"];

            lblTotal.Text = Sesion.ObtenerSesion().Idioma.Textos["total"] + $@": ${venta.Total}";

            Show();

        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
