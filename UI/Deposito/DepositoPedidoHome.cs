﻿using BLL;
using EE;
using System;
using System.ComponentModel;
using System.Globalization;
using System.Linq;
using System.Windows.Forms;
using Security;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class DepositoPedidoHome : UpdatableForm
    {
        public readonly BindingList<ProductoEe> ProductosAAsignar = new BindingList<ProductoEe>();
        public BindingList<ProductoEe> ProductosProveedor;
        public double Total;

        public DepositoPedidoHome()
        {
            InitializeComponent();

            AllControls = Program.GetAllControls(this);
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

            TraerProductos();
        }

        public void ActualizarGrid()
        {
            gridPedido.DataSource = ProductosAAsignar;
            gridPedido.Columns["id"].Visible = false;
            gridPedido.Columns["fechaCreacion"].Visible = false;
            gridPedido.Columns["activo"].Visible = false;
            gridPedido.Columns["precio"].Visible = false;
            gridPedido.Columns["codigo"].Visible = false;

            gridPedido.Columns["nombre"].DisplayIndex = 0;
            gridPedido.Columns["costo"].DisplayIndex = 1;
            gridPedido.Columns["cantidad"].DisplayIndex = 2;
            gridPedido.Columns["TotalProducto"].DisplayIndex = 3;

            gridPedido.Columns["nombre"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["name"];
            gridPedido.Columns["costo"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["cost"];
            gridPedido.Columns["Cantidad"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["amount_buy"];
            gridPedido.Columns["TotalProducto"].HeaderText = Sesion.ObtenerSesion().Idioma.Textos["total_product"];

            Total = ProductosAAsignar.Sum(producto => producto.Cantidad * producto.Costo);
            lblTotal.Text = Sesion.ObtenerSesion().Idioma.Textos["total"] + @": $" + Total;

            gridPedido.Refresh();

            var format = (NumberFormatInfo)NumberFormatInfo.CurrentInfo.Clone();
            format.CurrencySymbol = "$";
            gridPedido.Columns["TotalProducto"].DefaultCellStyle.FormatProvider = format;
            gridPedido.Columns["TotalProducto"].DefaultCellStyle.Format = "c";
            gridPedido.Columns["costo"].DefaultCellStyle.FormatProvider = format;
            gridPedido.Columns["costo"].DefaultCellStyle.Format = "c";
        }

        private void btnAgregarProductos_Click(object sender, EventArgs e)
        {
            var agregarProducto = new DepositoProductoAgregar(this);
            agregarProducto.Show();
        }

        private void btnCompletarPedido_Click(object sender, EventArgs e)
        {
            var agregarProducto = new DepositoCompletarPedido(this);
            agregarProducto.Show();
        }

        private void btnRemoverProductos_Click(object sender, EventArgs e)
        {
            if (gridPedido.SelectedRows.Count == 0) return;

            ProductosAAsignar.Clear();
            TraerProductos();
            ActualizarGrid();
        }

        private void gridVenta_CellValueChanged(object sender, DataGridViewCellEventArgs e)
        {
            ActualizarGrid();
        }

        private void TraerProductos()
        {
            ProductosProveedor = new BindingList<ProductoEe>(ProductoBll.ObtenerActivos());
        }

        private void VentaHome_Load(object sender, EventArgs e)
        {
            ActualizarGrid();
        }
    }
}