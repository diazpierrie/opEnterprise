﻿namespace EE
{
    public class StockSucursalEe : IdentityEe
    {
        public SucursalEe Sucursal { get; set; }
        public ProductoEe Producto { get; set; }
        public int Cantidad { get; set; }
    }
}