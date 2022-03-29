USE [openEnterprise]
GO
/****** Object:  Table [dbo].[bitacora]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bitacora](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[titulo] [varchar](250) NOT NULL,
	[descripcion] [varchar](max) NOT NULL,
	[tipo] [varchar](50) NOT NULL,
	[idUsuario] [int] NOT NULL,
 CONSTRAINT [PK_bitacora] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cEstadoEnvio]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cEstadoEnvio](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_EstadoEnvio] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cMetodoPago]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cMetodoPago](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_metodoDePago] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cMotivoPenalizacion]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cMotivoPenalizacion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](max) NOT NULL,
 CONSTRAINT [PK_cMotivoPenalizacion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comprador]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comprador](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[dni] [int] NOT NULL,
	[mail] [varchar](100) NULL,
	[idDireccion] [int] NULL,
	[telefono] [varchar](100) NULL,
	[esSocio] [bit] NOT NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_Comprador] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[control]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[control](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idIdioma] [int] NOT NULL,
	[tag] [varchar](50) NOT NULL,
	[texto] [varchar](max) NOT NULL,
 CONSTRAINT [PK_control] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cPedidoEstado]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cPedidoEstado](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_entrada_estado] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cTipoEntrega]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cTipoEntrega](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tipoEnvio] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cVentaEstado]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cVentaEstado](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_venta_estado] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deposito]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deposito](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[direccion] [varchar](100) NOT NULL,
	[mail] [varchar](100) NOT NULL,
	[codigoPostal] [int] NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[dvh] [varchar](50) NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_Deposito] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deposito_producto]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deposito_producto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idDeposito] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[stock] [int] NOT NULL,
 CONSTRAINT [PK_deposito_producto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[devolucion]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[devolucion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idSucursal] [int] NOT NULL,
	[idVenta] [int] NOT NULL,
	[idUsuario] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_devolucion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[devolucion_detalle]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[devolucion_detalle](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idDevolucion] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [PK_devolucion_detalle] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[direccion]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[direccion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idComprador] [int] NOT NULL,
	[calle] [varchar](50) NOT NULL,
	[localidad] [varchar](50) NOT NULL,
	[provincia] [varchar](50) NOT NULL,
	[pais] [varchar](50) NOT NULL,
	[codigoPostal] [varchar](15) NOT NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_direccion_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dvv]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dvv](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombreTabla] [varchar](50) NOT NULL,
	[dvv] [varchar](50) NOT NULL,
 CONSTRAINT [PK_dvv] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[envio_deposito]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[envio_deposito](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idVenta] [int] NOT NULL,
	[idDireccion] [int] NOT NULL,
	[idDeposito] [int] NOT NULL,
	[fechaSalida] [datetime] NULL,
	[fechaLlegada] [datetime] NULL,
	[idEstado] [int] NOT NULL,
 CONSTRAINT [PK_envio_deposito] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[envio_deposito_detalle]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[envio_deposito_detalle](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idVentaDetalle] [int] NOT NULL,
	[idDeposito] [int] NOT NULL,
 CONSTRAINT [PK_venta_detalle_deposito] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[envio_sucursal]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[envio_sucursal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idVenta] [int] NOT NULL,
	[idDireccion] [int] NOT NULL,
	[idSucursal] [int] NOT NULL,
	[fechaSalida] [datetime] NULL,
	[fechaLlegada] [datetime] NULL,
	[idEstado] [int] NOT NULL,
 CONSTRAINT [PK_envio_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[envio_sucursal_detalle]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[envio_sucursal_detalle](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idVentaDetalle] [int] NOT NULL,
	[idSucursal] [int] NOT NULL,
 CONSTRAINT [PK_venta_detalle_sucursal] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[familia]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[familia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[dvh] [varchar](50) NULL,
 CONSTRAINT [PK_familia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[familia_patente]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[familia_patente](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idFamilia] [int] NOT NULL,
	[idPatente] [int] NOT NULL,
 CONSTRAINT [PK_familia_patente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idioma]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idioma](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[activo] [bit] NULL,
 CONSTRAINT [PK_idioma] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pago]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pago](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idVenta] [int] NOT NULL,
	[montoCobrado] [money] NOT NULL,
	[vuelto] [money] NOT NULL,
 CONSTRAINT [PK_pago] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patente]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patente](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_patente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pedido_deposito]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedido_deposito](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NOT NULL,
	[idSucursal] [int] NOT NULL,
	[fechaPedido] [datetime] NULL,
	[fechaRecepcion] [datetime] NULL,
	[idEstado] [int] NOT NULL,
 CONSTRAINT [PK_entrada_sucursal] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pedido_deposito_detalle]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedido_deposito_detalle](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idPedidoDeposito] [int] NOT NULL,
	[idDeposito] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[costoUnitario] [decimal](14, 2) NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [PK_entrada_sucursal_detalle] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pedido_proveedor]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedido_proveedor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NOT NULL,
	[idProveedor] [int] NOT NULL,
	[idDeposito] [int] NOT NULL,
	[fechaPedido] [datetime] NULL,
	[fechaRecepcion] [datetime] NULL,
	[total] [decimal](14, 2) NOT NULL,
	[idEstado] [int] NOT NULL,
 CONSTRAINT [PK_factura] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pedido_proveedor_detalle]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedido_proveedor_detalle](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idPedidoProveedor] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [PK_factura_detalle] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[perdida]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[perdida](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idSucursal] [int] NOT NULL,
	[idVenta] [int] NOT NULL,
	[idUsuario] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[total] [decimal](14, 2) NOT NULL,
 CONSTRAINT [PK_perdida] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[perdida_detalle]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[perdida_detalle](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idPerdida] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[costoUnitario] [decimal](14, 2) NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [PK_perdida_detalle] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[codigo] [varchar](50) NOT NULL,
	[fechaCreacion] [datetime] NOT NULL,
	[precio] [decimal](14, 2) NOT NULL,
	[costo] [decimal](14, 2) NOT NULL,
	[dvh] [varchar](50) NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_producto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedor]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[direccion] [varchar](100) NOT NULL,
	[codigoPostal] [int] NOT NULL,
	[mail] [varchar](100) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[cantidadErrores] [int] NOT NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_proveedor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedor_penalizacion]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedor_penalizacion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idProveedor] [int] NOT NULL,
	[idMotivo] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_proveedor_penalizacion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[retiro_sucursal]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[retiro_sucursal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idSucursal] [int] NOT NULL,
	[idVentaDetalle] [int] NOT NULL,
 CONSTRAINT [PK_retiro_sucursal] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sucursal]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sucursal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[direccion] [varchar](100) NOT NULL,
	[mail] [varchar](100) NOT NULL,
	[codigoPostal] [int] NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[dvh] [varchar](50) NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_sucursal] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sucursal_producto]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sucursal_producto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idSucursal] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[stock] [int] NOT NULL,
 CONSTRAINT [PK_sucursal_producto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[dni] [int] NOT NULL,
	[mail] [varchar](50) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[nombreUsuario] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[fechaCreacion] [datetime] NOT NULL,
	[intentosFallidos] [int] NOT NULL,
	[dvh] [varchar](50) NULL,
	[activo] [bit] NOT NULL,
	[idFamilia] [int] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario_deposito]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario_deposito](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NOT NULL,
	[idDeposito] [int] NOT NULL,
 CONSTRAINT [PK_usuario_deposito] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario_sucursal]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario_sucursal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NOT NULL,
	[idSucursal] [int] NOT NULL,
 CONSTRAINT [PK_usuario_sucursal] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venta]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NOT NULL,
	[idComprador] [int] NOT NULL,
	[idSucursal] [int] NOT NULL,
	[idMetodoPago] [int] NOT NULL,
	[idTipoEntrega] [int] NOT NULL,
	[idEstado] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[total] [decimal](14, 2) NOT NULL,
 CONSTRAINT [PK_venta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venta_detalle]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta_detalle](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idVenta] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[costoUnitario] [decimal](14, 2) NOT NULL,
	[precioUnitario] [decimal](14, 2) NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [PK_venta_detalle] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[bitacora] ON 
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (1, CAST(N'2021-10-28T16:00:16.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2, CAST(N'2021-10-28T16:01:05.000' AS DateTime), N'Usuario actualizado: ', N'{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":null},"Sector":{"Puestos":[],"Jefe":null,"Nombre":null,"Id":1},"Puesto":{"No ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (3, CAST(N'2021-10-28T16:01:10.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (4, CAST(N'2021-10-28T16:02:24.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (5, CAST(N'2021-10-28T16:02:28.000' AS DateTime), N'Usuario actualizado: ', N'{"NombreUsuario":"kjkljjklhjk","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":1,"Nombre":null},"Sector":{"Puestos":[],"Jefe":null,"Nombre":null,"Id":1},"Puesto ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (6, CAST(N'2021-10-28T16:03:03.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (7, CAST(N'2021-10-28T16:05:51.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (8, CAST(N'2021-10-28T16:05:51.000' AS DateTime), N'Usuario actualizado: ', N'{"NombreUsuario":"kjkljjklhjk","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":1,"Nombre":null},"Sector":{"Puestos":[],"Jefe":null,"Nombre":null,"Id":1},"Puesto ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (9, CAST(N'2021-10-28T16:05:56.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (10, CAST(N'2021-10-28T16:07:58.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (11, CAST(N'2021-10-28T16:08:02.000' AS DateTime), N'Usuario actualizado: ', N'{"NombreUsuario":"kjkljjklhjk","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":1,"Nombre":null},"Sector":{"Puestos":[],"Jefe":null,"Nombre":null,"Id":1},"Puesto ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (12, CAST(N'2021-10-28T16:08:32.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (13, CAST(N'2021-10-28T16:09:50.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (14, CAST(N'2021-10-28T16:09:50.000' AS DateTime), N'Usuario actualizado: ', N'{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":null},"Sector":{"Puestos":[],"Jefe":null,"Nombre":null,"Id":1},"Puesto":{"No ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (15, CAST(N'2021-10-28T16:09:50.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (16, CAST(N'2021-10-28T16:10:35.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (17, CAST(N'2021-10-28T16:10:35.000' AS DateTime), N'Usuario actualizado: ', N'{"NombreUsuario":"kjkljjklhjk","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":1,"Nombre":null},"Sector":{"Puestos":[],"Jefe":null,"Nombre":null,"Id":1},"Puesto ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (18, CAST(N'2021-10-28T16:10:35.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (19, CAST(N'2021-10-28T16:14:21.000' AS DateTime), N'Error DVV en BD', N'Error en la fila: 2', N'Error', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (20, CAST(N'2021-10-28T16:14:37.000' AS DateTime), N'Error DVV en BD', N'Error en la fila: 2', N'Error', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (21, CAST(N'2021-10-28T16:15:14.000' AS DateTime), N'Error DVV en BD', N'Error en la fila: 2', N'Error', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (22, CAST(N'2021-10-28T16:15:28.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (23, CAST(N'2021-10-28T16:15:58.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (24, CAST(N'2021-10-28T16:15:58.000' AS DateTime), N'Usuario actualizado: ', N'{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":null},"Sector":{"Puestos":[],"Jefe":null,"Nombre":null,"Id":1},"Puesto":{"No ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (25, CAST(N'2021-10-28T16:15:59.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (26, CAST(N'2021-10-28T16:16:14.000' AS DateTime), N'Usuario actualizado: ', N'{"NombreUsuario":"kjkljjklhjk","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":2,"Nombre":null},"Sector":{"Puestos":[],"Jefe":null,"Nombre":null,"Id":1},"Puesto ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (27, CAST(N'2021-10-28T16:16:14.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (28, CAST(N'2021-10-28T16:16:24.000' AS DateTime), N'Usuario actualizado: ', N'{"NombreUsuario":"kjkljjklhjk","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":2,"Nombre":null},"Sector":{"Puestos":[],"Jefe":null,"Nombre":null,"Id":1},"Puesto ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (29, CAST(N'2021-10-28T16:16:24.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (30, CAST(N'2021-10-28T16:16:32.000' AS DateTime), N'Usuario actualizado: ', N'{"NombreUsuario":"kjkljjklhjk","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":2,"Nombre":null},"Sector":{"Puestos":[],"Jefe":null,"Nombre":null,"Id":3},"Puesto ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (31, CAST(N'2021-10-28T16:16:32.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (32, CAST(N'2021-10-28T17:21:56.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (33, CAST(N'2021-10-28T17:21:56.000' AS DateTime), N'Usuario Eliminado ', N'{"NombreUsuario":"kjkljjklhjk","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":2,"Nombre":"Tecnico"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Manhattan","Id ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (34, CAST(N'2021-10-28T19:44:47.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (35, CAST(N'2021-10-28T19:44:47.000' AS DateTime), N'Usuario creado: ', N'{"NombreUsuario":"dfgdfgdgf","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":1,"Nombre":null},"Sector":{"Puestos":[],"Jefe":null,"Nombre":null,"Id":1},"Puesto": ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (36, CAST(N'2021-10-29T14:50:37.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (37, CAST(N'2021-10-29T14:50:38.000' AS DateTime), N'Usuario actualizado: ', N'{"NombreUsuario":"dfgdfgdgf","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":1,"Nombre":null},"Sector":{"Puestos":[],"Jefe":null,"Nombre":null,"Id":1},"Puesto": ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (38, CAST(N'2021-10-29T14:50:38.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (39, CAST(N'2021-10-29T14:50:53.000' AS DateTime), N'Usuario actualizado: ', N'{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":null},"Sector":{"Puestos":[],"Jefe":null,"Nombre":null,"Id":1},"Puesto":{"No ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (40, CAST(N'2021-10-29T14:50:53.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (41, CAST(N'2021-10-29T15:05:23.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (42, CAST(N'2021-10-29T15:05:23.000' AS DateTime), N'Usuario actualizado: ', N'{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":null},"Sector":{"Puestos":[],"Jefe":null,"Nombre":null,"Id":1},"Puesto":{"No ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (43, CAST(N'2021-10-29T15:05:23.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (44, CAST(N'2021-11-02T18:20:26.000' AS DateTime), N'Error DVV en BD', N'Error en la fila: 1', N'Error', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (45, CAST(N'2021-11-02T18:20:53.000' AS DateTime), N'Error DVV en BD', N'Error en la fila: 1', N'Error', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (46, CAST(N'2021-11-02T18:20:58.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (47, CAST(N'2021-11-03T16:23:23.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (48, CAST(N'2021-11-03T16:23:23.000' AS DateTime), N'Nuevo Comprador', N'{"EsSocio":true,"Nombre":"gjh","Apellido":"hjg","Mail":"fgh","Dni":687,"Telefono":"576","FechaCreacion":"2021-11-03T16:22:23.126613-03:00","Activo":false,"Id":3}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (49, CAST(N'2021-11-03T17:54:56.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (50, CAST(N'2021-11-03T17:54:56.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (51, CAST(N'2021-11-03T17:59:57.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (52, CAST(N'2021-11-03T17:59:58.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (53, CAST(N'2021-11-03T18:50:31.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (54, CAST(N'2021-11-03T18:50:31.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (55, CAST(N'2021-11-03T19:01:51.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (56, CAST(N'2021-11-03T19:01:51.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (57, CAST(N'2021-11-03T19:33:20.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (58, CAST(N'2021-11-03T19:33:20.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (59, CAST(N'2021-11-04T16:22:00.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (60, CAST(N'2021-11-04T16:22:00.000' AS DateTime), N'Perdida registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (61, CAST(N'2021-11-04T16:22:01.000' AS DateTime), N'Perdida registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (62, CAST(N'2021-11-04T16:22:01.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (63, CAST(N'2021-11-04T16:22:02.000' AS DateTime), N'Perdida registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (64, CAST(N'2021-11-04T16:22:02.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (65, CAST(N'2021-11-04T16:22:04.000' AS DateTime), N'Perdida registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (66, CAST(N'2021-11-04T16:22:04.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (67, CAST(N'2021-11-04T16:22:27.000' AS DateTime), N'Perdida registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (68, CAST(N'2021-11-04T16:23:16.000' AS DateTime), N'Perdida registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (69, CAST(N'2021-11-04T16:28:31.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (70, CAST(N'2021-11-04T16:28:43.000' AS DateTime), N'Perdida registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (71, CAST(N'2021-11-04T16:32:09.000' AS DateTime), N'Perdida registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (72, CAST(N'2021-11-04T16:32:09.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (73, CAST(N'2021-11-04T16:36:59.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (74, CAST(N'2021-11-04T16:39:31.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (75, CAST(N'2021-11-04T16:39:31.000' AS DateTime), N'Perdida registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (76, CAST(N'2021-11-04T16:39:41.000' AS DateTime), N'Devolucion registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (77, CAST(N'2021-11-04T16:39:41.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (78, CAST(N'2021-11-04T16:39:43.000' AS DateTime), N'Devolucion registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (79, CAST(N'2021-11-04T16:39:43.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (80, CAST(N'2021-11-04T16:39:44.000' AS DateTime), N'Devolucion registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (81, CAST(N'2021-11-04T16:39:44.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (82, CAST(N'2021-11-04T18:24:00.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (83, CAST(N'2021-11-04T18:24:12.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (84, CAST(N'2021-11-04T18:33:57.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (85, CAST(N'2021-11-04T18:33:57.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (86, CAST(N'2021-11-04T19:38:18.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (87, CAST(N'2021-11-04T19:38:18.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (88, CAST(N'2021-11-05T12:22:56.000' AS DateTime), N'BackUp', N'Se ha realizado un backUp', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (89, CAST(N'2021-11-05T15:27:48.000' AS DateTime), N'Restore', N'Se ha realizado un restore', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (90, CAST(N'2021-11-05T17:37:12.000' AS DateTime), N'Restore', N'Se ha realizado un restore', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (91, CAST(N'2021-11-09T16:01:22.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (92, CAST(N'2021-11-09T16:01:22.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":4}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (93, CAST(N'2021-11-09T16:04:16.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (94, CAST(N'2021-11-09T16:04:16.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"juanessss","Id":3}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (95, CAST(N'2021-11-09T16:06:38.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (96, CAST(N'2021-11-09T16:06:38.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"hgjhkj","Id":4}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (97, CAST(N'2021-11-09T16:13:39.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (98, CAST(N'2021-11-09T16:13:39.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lengu","Id":7}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (99, CAST(N'2021-11-09T16:15:52.000' AS DateTime), N'BackUp', N'Se ha realizado un backUp', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (101, CAST(N'2021-11-09T16:17:08.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (103, CAST(N'2021-11-09T23:05:22.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (104, CAST(N'2021-11-18T21:37:52.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (105, CAST(N'2021-11-18T21:37:52.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (106, CAST(N'2021-11-18T21:37:52.000' AS DateTime), N'Direccion creada: ', N'{"Comprador":{"EsSocio":true,"NombreCompleto":"Juanes, Ricardo","Nombre":"Ricardo","Apellido":"Juanes","Mail":"juankl@gmail.com","Dni":26782,"Telefono":"26726","FechaCreacion":"2021-11-18T21:37:34.468 ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (107, CAST(N'2021-11-18T21:38:57.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (108, CAST(N'2021-11-18T21:38:57.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (109, CAST(N'2021-11-19T14:38:51.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (110, CAST(N'2021-11-19T14:38:51.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (111, CAST(N'2021-11-19T14:41:19.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (112, CAST(N'2021-11-19T14:41:39.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (113, CAST(N'2021-11-19T14:45:46.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (114, CAST(N'2021-11-19T14:45:46.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (115, CAST(N'2021-11-19T14:57:45.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (116, CAST(N'2021-11-19T14:57:55.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (117, CAST(N'2021-11-19T15:14:09.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (118, CAST(N'2021-11-19T15:14:13.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (119, CAST(N'2021-11-19T15:16:12.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (120, CAST(N'2021-11-19T15:16:12.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (121, CAST(N'2021-11-19T15:21:02.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (122, CAST(N'2021-11-19T15:21:02.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (123, CAST(N'2021-11-19T15:21:21.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (124, CAST(N'2021-11-19T15:21:21.000' AS DateTime), N'Envio de Sucursal creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (125, CAST(N'2021-11-19T15:22:24.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (126, CAST(N'2021-11-19T15:22:24.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (127, CAST(N'2021-11-19T15:24:41.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (128, CAST(N'2021-11-19T15:24:45.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (129, CAST(N'2021-11-19T15:26:11.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (130, CAST(N'2021-11-19T15:26:12.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (131, CAST(N'2021-11-19T15:30:54.000' AS DateTime), N'Envio de Sucursal creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (132, CAST(N'2021-11-19T15:31:27.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (133, CAST(N'2021-11-19T15:31:29.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (134, CAST(N'2021-11-19T15:31:49.000' AS DateTime), N'Envio de Sucursal creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (135, CAST(N'2021-11-19T15:31:55.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (136, CAST(N'2021-11-23T16:33:38.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (137, CAST(N'2021-11-23T16:33:38.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (138, CAST(N'2021-11-23T16:34:55.000' AS DateTime), N'Envio de Sucursal creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (139, CAST(N'2021-11-23T20:01:52.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (140, CAST(N'2021-11-23T20:02:03.000' AS DateTime), N'Envio de Sucursal creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (141, CAST(N'2021-11-23T20:05:21.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (142, CAST(N'2021-11-23T20:05:21.000' AS DateTime), N'Envio de Sucursal creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (143, CAST(N'2021-11-23T20:07:59.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (144, CAST(N'2021-11-23T20:07:59.000' AS DateTime), N'Envio de Sucursal creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (145, CAST(N'2021-11-23T20:09:05.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (146, CAST(N'2021-11-23T20:09:06.000' AS DateTime), N'Envio de Sucursal creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (147, CAST(N'2021-11-23T20:09:06.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (148, CAST(N'2021-11-23T20:09:06.000' AS DateTime), N'Envio de Deposito creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (149, CAST(N'2021-11-23T20:09:06.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (150, CAST(N'2021-11-23T20:09:06.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (151, CAST(N'2021-11-23T20:10:18.000' AS DateTime), N'Envio de Sucursal creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (152, CAST(N'2021-11-23T20:10:18.000' AS DateTime), N'Envio de Deposito creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (153, CAST(N'2021-11-23T20:10:46.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (154, CAST(N'2021-11-23T20:10:46.000' AS DateTime), N'Envio de Sucursal creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (155, CAST(N'2021-11-23T20:10:46.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (156, CAST(N'2021-11-23T20:10:46.000' AS DateTime), N'Envio de Deposito creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (157, CAST(N'2021-11-23T20:12:09.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (158, CAST(N'2021-11-23T20:12:17.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (159, CAST(N'2021-11-23T20:12:17.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (160, CAST(N'2021-11-23T20:17:54.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (161, CAST(N'2021-11-23T20:17:54.000' AS DateTime), N'Envio de Sucursal creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (162, CAST(N'2021-11-23T20:17:54.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (163, CAST(N'2021-11-23T20:17:54.000' AS DateTime), N'Envio de Deposito creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (164, CAST(N'2021-11-23T20:17:57.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (165, CAST(N'2021-11-23T20:17:57.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (166, CAST(N'2021-11-23T20:17:57.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (167, CAST(N'2021-11-23T22:26:38.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (168, CAST(N'2021-11-23T22:26:38.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (169, CAST(N'2021-11-23T22:27:17.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (170, CAST(N'2021-11-23T22:27:18.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (171, CAST(N'2021-11-23T22:28:10.000' AS DateTime), N'Envio de Sucursal creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (172, CAST(N'2021-11-23T22:28:11.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (173, CAST(N'2021-11-23T22:28:24.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (174, CAST(N'2021-11-23T22:28:26.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (175, CAST(N'2021-11-23T23:39:02.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (176, CAST(N'2021-11-23T23:39:03.000' AS DateTime), N'Envio de Sucursal creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (177, CAST(N'2021-11-23T23:39:03.000' AS DateTime), N'Envio de Deposito creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (178, CAST(N'2021-11-23T23:39:06.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (179, CAST(N'2021-11-23T23:39:06.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (180, CAST(N'2021-11-23T23:40:04.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (181, CAST(N'2021-11-23T23:40:04.000' AS DateTime), N'Envio de Sucursal creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (182, CAST(N'2021-11-23T23:40:04.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (183, CAST(N'2021-11-23T23:40:04.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (184, CAST(N'2021-11-23T23:40:04.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (185, CAST(N'2021-11-24T20:58:13.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (186, CAST(N'2021-11-24T20:58:13.000' AS DateTime), N'Envio de Sucursal creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (187, CAST(N'2021-11-24T20:58:13.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (188, CAST(N'2021-11-24T20:58:13.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (189, CAST(N'2021-12-03T16:32:37.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (190, CAST(N'2021-12-03T16:32:37.000' AS DateTime), N'Envio de Deposito creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (191, CAST(N'2021-12-03T16:34:04.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (192, CAST(N'2021-12-03T16:34:32.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (193, CAST(N'2021-12-03T16:49:23.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (194, CAST(N'2021-12-03T16:49:23.000' AS DateTime), N'Envio de Deposito creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (195, CAST(N'2021-12-03T16:49:23.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (196, CAST(N'2021-12-03T16:50:24.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (197, CAST(N'2021-12-03T16:50:24.000' AS DateTime), N'Envio de Sucursal creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (198, CAST(N'2021-12-03T16:50:24.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (199, CAST(N'2021-12-03T16:50:24.000' AS DateTime), N'Envio de Deposito creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (200, CAST(N'2021-12-03T16:50:24.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (201, CAST(N'2021-12-03T16:50:24.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (202, CAST(N'2021-12-03T16:52:13.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (203, CAST(N'2021-12-03T16:53:10.000' AS DateTime), N'Envio de Sucursal creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (204, CAST(N'2021-12-03T16:53:13.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (205, CAST(N'2021-12-03T16:53:22.000' AS DateTime), N'Envio de Deposito creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (206, CAST(N'2021-12-03T16:53:22.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (207, CAST(N'2021-12-03T16:54:29.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (208, CAST(N'2021-12-03T16:57:02.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (209, CAST(N'2021-12-03T16:57:02.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (210, CAST(N'2021-12-03T17:00:27.000' AS DateTime), N'Envio de Sucursal creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (211, CAST(N'2021-12-03T17:00:27.000' AS DateTime), N'Envio de Deposito creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (212, CAST(N'2021-12-03T17:02:03.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (213, CAST(N'2021-12-03T17:02:03.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (214, CAST(N'2021-12-03T17:11:01.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (215, CAST(N'2021-12-03T17:11:01.000' AS DateTime), N'Envio de Deposito creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (216, CAST(N'2021-12-03T17:11:06.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (217, CAST(N'2021-12-03T17:11:06.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (218, CAST(N'2021-12-03T17:28:37.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (219, CAST(N'2021-12-03T17:28:37.000' AS DateTime), N'Envio de Deposito creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (220, CAST(N'2021-12-03T17:28:37.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (221, CAST(N'2021-12-03T17:28:37.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (222, CAST(N'2021-12-03T17:28:37.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (223, CAST(N'2021-12-03T17:30:12.000' AS DateTime), N'Envio de Deposito creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (224, CAST(N'2021-12-03T17:30:15.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (225, CAST(N'2021-12-03T17:32:24.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (226, CAST(N'2021-12-03T17:32:24.000' AS DateTime), N'Envio de Deposito creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (227, CAST(N'2021-12-03T17:32:33.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (228, CAST(N'2021-12-03T17:32:33.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (229, CAST(N'2021-12-03T17:32:33.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (230, CAST(N'2021-12-03T18:08:26.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (231, CAST(N'2021-12-03T18:08:26.000' AS DateTime), N'Envio de Deposito creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (232, CAST(N'2021-12-03T18:08:26.000' AS DateTime), N'Envio de Sucursal creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (233, CAST(N'2021-12-03T18:08:43.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (234, CAST(N'2021-12-03T18:08:44.000' AS DateTime), N'Envio de Deposito creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (235, CAST(N'2021-12-03T18:08:44.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (236, CAST(N'2021-12-03T18:08:44.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (237, CAST(N'2021-12-03T18:08:44.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (238, CAST(N'2021-12-03T18:11:24.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (239, CAST(N'2021-12-03T18:11:24.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (240, CAST(N'2021-12-03T18:11:36.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (241, CAST(N'2021-12-03T18:11:36.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (242, CAST(N'2021-12-03T18:16:20.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (243, CAST(N'2021-12-03T18:16:20.000' AS DateTime), N'Envio de Deposito creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (244, CAST(N'2021-12-03T18:16:20.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (245, CAST(N'2021-12-03T18:16:20.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (246, CAST(N'2021-12-03T18:16:20.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (247, CAST(N'2021-12-03T18:16:34.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (248, CAST(N'2021-12-03T18:16:34.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (249, CAST(N'2021-12-03T18:46:28.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (250, CAST(N'2021-12-03T18:46:28.000' AS DateTime), N'Envio de Deposito creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (251, CAST(N'2021-12-03T18:46:28.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (252, CAST(N'2021-12-03T18:46:28.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (253, CAST(N'2021-12-03T18:57:44.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (254, CAST(N'2021-12-03T18:57:44.000' AS DateTime), N'Envio de Deposito creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (255, CAST(N'2021-12-03T18:57:44.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (256, CAST(N'2021-12-03T18:57:44.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (257, CAST(N'2021-12-03T18:58:31.000' AS DateTime), N'Envio de Deposito creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (258, CAST(N'2021-12-03T18:58:31.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (259, CAST(N'2021-12-03T18:58:31.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (260, CAST(N'2021-12-03T18:58:31.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (261, CAST(N'2021-12-03T18:58:31.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (262, CAST(N'2021-12-03T18:58:31.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (263, CAST(N'2021-12-03T19:10:13.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (264, CAST(N'2021-12-03T19:10:13.000' AS DateTime), N'Envio de Deposito creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"C ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (265, CAST(N'2021-12-03T19:10:13.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (266, CAST(N'2021-12-03T19:10:13.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (267, CAST(N'2021-12-03T19:41:36.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (268, CAST(N'2021-12-03T19:41:36.000' AS DateTime), N'Perdida registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (269, CAST(N'2021-12-06T16:50:42.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (270, CAST(N'2021-12-06T16:50:42.000' AS DateTime), N'Devolucion registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (271, CAST(N'2021-12-06T16:55:13.000' AS DateTime), N'Devolucion registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (272, CAST(N'2021-12-06T16:55:14.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (273, CAST(N'2021-12-06T17:24:01.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (274, CAST(N'2021-12-06T17:24:01.000' AS DateTime), N'Devolucion registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (275, CAST(N'2021-12-06T18:13:21.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (276, CAST(N'2021-12-06T18:13:21.000' AS DateTime), N'Devolucion registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (277, CAST(N'2021-12-06T18:13:22.000' AS DateTime), N'Devolucion registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (278, CAST(N'2021-12-06T18:13:22.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (279, CAST(N'2021-12-06T18:14:46.000' AS DateTime), N'Devolucion registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (280, CAST(N'2021-12-06T18:14:46.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (281, CAST(N'2021-12-06T18:15:32.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (282, CAST(N'2021-12-06T18:15:33.000' AS DateTime), N'Devolucion registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (283, CAST(N'2021-12-06T18:42:33.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (284, CAST(N'2021-12-06T18:42:33.000' AS DateTime), N'Devolucion registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (285, CAST(N'2021-12-06T18:45:08.000' AS DateTime), N'Devolucion registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (286, CAST(N'2021-12-06T18:45:08.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (287, CAST(N'2021-12-06T19:19:45.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (288, CAST(N'2021-12-06T19:19:45.000' AS DateTime), N'Devolucion registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (289, CAST(N'2021-12-06T19:20:32.000' AS DateTime), N'Devolucion registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (290, CAST(N'2021-12-06T19:20:32.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (291, CAST(N'2021-12-06T19:21:09.000' AS DateTime), N'Devolucion registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (292, CAST(N'2021-12-06T19:21:09.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (293, CAST(N'2021-12-06T20:21:40.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (294, CAST(N'2021-12-06T20:21:40.000' AS DateTime), N'Devolucion registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (295, CAST(N'2021-12-06T20:22:51.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (296, CAST(N'2021-12-06T20:22:51.000' AS DateTime), N'Devolucion registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (297, CAST(N'2021-12-06T20:25:46.000' AS DateTime), N'Perdida registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (298, CAST(N'2021-12-06T20:25:46.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (1275, CAST(N'2021-12-07T03:41:34.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (1276, CAST(N'2021-12-07T03:41:36.000' AS DateTime), N'Perdida registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (1277, CAST(N'2021-12-07T04:28:15.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (1278, CAST(N'2021-12-07T04:28:15.000' AS DateTime), N'Devolucion registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (1279, CAST(N'2021-12-07T04:29:22.000' AS DateTime), N'Perdida registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (1280, CAST(N'2021-12-07T04:29:22.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (1281, CAST(N'2021-12-07T04:30:38.000' AS DateTime), N'Perdida registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (1282, CAST(N'2021-12-07T04:30:38.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (1283, CAST(N'2021-12-07T04:30:39.000' AS DateTime), N'Perdida registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (1284, CAST(N'2021-12-07T04:30:39.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (1285, CAST(N'2021-12-07T04:32:48.000' AS DateTime), N'Perdida registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (1286, CAST(N'2021-12-07T04:32:48.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (1287, CAST(N'2021-12-07T04:45:14.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (1288, CAST(N'2021-12-07T04:45:14.000' AS DateTime), N'Perdida registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (1289, CAST(N'2021-12-07T04:47:55.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (1290, CAST(N'2021-12-07T04:47:55.000' AS DateTime), N'Perdida registrada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2275, CAST(N'2021-12-08T18:25:36.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2276, CAST(N'2021-12-08T18:26:15.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2277, CAST(N'2021-12-08T18:26:19.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2278, CAST(N'2021-12-08T23:00:24.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2279, CAST(N'2021-12-08T23:00:24.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2280, CAST(N'2021-12-08T23:02:19.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2281, CAST(N'2021-12-08T23:02:19.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2282, CAST(N'2021-12-09T04:39:56.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2283, CAST(N'2021-12-09T04:39:56.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2284, CAST(N'2021-12-09T23:20:31.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2285, CAST(N'2021-12-09T23:20:31.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2286, CAST(N'2021-12-09T23:22:10.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2287, CAST(N'2021-12-09T23:22:10.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2288, CAST(N'2021-12-09T23:34:58.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2289, CAST(N'2021-12-09T23:35:00.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2290, CAST(N'2021-12-13T18:41:07.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2291, CAST(N'2021-12-13T18:41:07.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2292, CAST(N'2021-12-13T18:51:42.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2293, CAST(N'2021-12-13T18:51:42.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2294, CAST(N'2021-12-13T19:28:59.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2295, CAST(N'2021-12-13T19:28:59.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2296, CAST(N'2021-12-13T20:37:49.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2297, CAST(N'2021-12-13T20:37:49.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2298, CAST(N'2021-12-20T21:47:07.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2299, CAST(N'2021-12-20T21:47:07.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2300, CAST(N'2021-12-20T22:00:03.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2301, CAST(N'2021-12-20T22:00:12.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2302, CAST(N'2021-12-21T00:30:41.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2303, CAST(N'2021-12-21T00:30:49.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2304, CAST(N'2021-12-21T00:32:35.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2305, CAST(N'2021-12-21T00:32:38.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2306, CAST(N'2021-12-21T00:36:57.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2307, CAST(N'2021-12-21T00:36:57.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2308, CAST(N'2021-12-21T00:41:24.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2309, CAST(N'2021-12-21T00:41:24.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2310, CAST(N'2021-12-21T00:44:49.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2311, CAST(N'2021-12-21T00:44:49.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2312, CAST(N'2021-12-21T00:55:37.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2313, CAST(N'2021-12-21T00:55:38.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Bloqueado":false,"Permiso":{"Patentes":null,"Id":4,"Nombre":"Admin"},"Sector":{"Puestos":[],"Jefe":null,"Nombre":"Canary","I ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2314, CAST(N'2021-12-21T18:30:20.000' AS DateTime), N'Restore', N'Se ha realizado un restore', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2315, CAST(N'2021-12-21T18:34:19.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2316, CAST(N'2021-12-21T19:21:00.000' AS DateTime), N'Error DVV en BD', N'Error en la fila: 1', N'Error', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2317, CAST(N'2021-12-21T19:21:00.000' AS DateTime), N'Error DVV en BD', N'Error en la fila: 2', N'Error', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2318, CAST(N'2021-12-21T19:21:00.000' AS DateTime), N'Error DVV en BD', N'Error en la fila: 3', N'Error', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2319, CAST(N'2021-12-21T19:21:05.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2320, CAST(N'2021-12-22T16:36:49.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2321, CAST(N'2021-12-22T16:37:27.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2322, CAST(N'2021-12-22T16:37:27.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":9}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2323, CAST(N'2021-12-22T23:09:53.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2324, CAST(N'2021-12-22T23:10:14.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2325, CAST(N'2021-12-22T23:11:07.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2326, CAST(N'2021-12-22T23:13:08.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2327, CAST(N'2021-12-22T23:13:09.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2328, CAST(N'2021-12-22T23:13:10.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2329, CAST(N'2021-12-22T23:13:44.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 6)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2330, CAST(N'2021-12-22T23:18:23.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2331, CAST(N'2021-12-22T23:18:44.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 6)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2332, CAST(N'2021-12-22T23:19:41.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 7)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2333, CAST(N'2021-12-22T23:21:15.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 7)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2334, CAST(N'2021-12-22T23:21:31.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 6)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2335, CAST(N'2021-12-22T23:23:10.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 9)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2336, CAST(N'2021-12-22T23:23:27.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2337, CAST(N'2021-12-22T23:23:48.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 9)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2338, CAST(N'2021-12-22T23:24:04.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 8)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2339, CAST(N'2021-12-22T23:24:46.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 8)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2340, CAST(N'2021-12-22T23:28:44.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 12)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2341, CAST(N'2021-12-22T23:31:40.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2342, CAST(N'2021-12-22T23:31:56.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 12)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2343, CAST(N'2021-12-22T23:35:43.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 12)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2344, CAST(N'2021-12-22T23:37:00.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 12)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2345, CAST(N'2021-12-22T23:42:38.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2346, CAST(N'2021-12-22T23:42:54.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2347, CAST(N'2021-12-22T23:45:58.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2348, CAST(N'2021-12-22T23:46:16.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2349, CAST(N'2021-12-22T23:48:33.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 12)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2350, CAST(N'2021-12-23T00:29:09.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2351, CAST(N'2021-12-23T00:29:47.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2352, CAST(N'2021-12-23T00:32:39.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2353, CAST(N'2021-12-23T00:33:02.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2354, CAST(N'2021-12-23T00:33:57.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2355, CAST(N'2021-12-23T00:34:31.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2356, CAST(N'2021-12-23T00:35:23.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2357, CAST(N'2021-12-23T00:36:51.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2358, CAST(N'2021-12-23T00:37:41.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2359, CAST(N'2021-12-23T00:38:32.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2360, CAST(N'2021-12-23T00:41:27.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2361, CAST(N'2021-12-23T00:45:58.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2362, CAST(N'2021-12-23T01:19:47.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2363, CAST(N'2021-12-23T01:22:20.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 12)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2364, CAST(N'2021-12-23T01:45:49.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2365, CAST(N'2021-12-23T01:47:30.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2366, CAST(N'2021-12-23T01:48:27.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2367, CAST(N'2021-12-23T01:53:45.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2368, CAST(N'2021-12-23T02:41:21.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2369, CAST(N'2021-12-23T02:41:25.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2370, CAST(N'2021-12-23T02:43:14.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2371, CAST(N'2021-12-23T02:45:18.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2372, CAST(N'2021-12-23T02:45:29.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2373, CAST(N'2021-12-23T02:46:01.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2374, CAST(N'2021-12-23T02:46:06.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2375, CAST(N'2021-12-23T02:52:54.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2376, CAST(N'2021-12-23T02:59:27.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2377, CAST(N'2021-12-23T03:00:17.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2378, CAST(N'2021-12-23T03:00:46.000' AS DateTime), N'Error DVV en BD', N'Error DVV en la tabla: sucursal', N'Error', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2379, CAST(N'2021-12-23T03:01:02.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2380, CAST(N'2021-12-23T03:01:29.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2381, CAST(N'2021-12-23T03:05:04.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 12)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2382, CAST(N'2021-12-23T03:10:45.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2383, CAST(N'2021-12-23T16:45:58.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2385, CAST(N'2021-12-23T16:48:14.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2386, CAST(N'2021-12-23T16:48:31.000' AS DateTime), N'Intentos fallidos', N'admin ha intentado iniciar sesion 5 veces', N'Warning', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2387, CAST(N'2021-12-23T16:48:32.000' AS DateTime), N'Intentos fallidos', N'admin ha intentado iniciar sesion 6 veces', N'Warning', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2388, CAST(N'2021-12-23T16:48:33.000' AS DateTime), N'Intentos fallidos', N'admin ha intentado iniciar sesion 7 veces', N'Warning', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2389, CAST(N'2021-12-23T16:48:43.000' AS DateTime), N'Intentos fallidos', N'admin ha intentado iniciar sesion 8 veces', N'Warning', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2390, CAST(N'2021-12-23T16:48:43.000' AS DateTime), N'Intentos fallidos', N'admin ha intentado iniciar sesion 9 veces', N'Warning', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2391, CAST(N'2021-12-23T16:48:44.000' AS DateTime), N'Intentos fallidos', N'admin ha intentado iniciar sesion 10 veces', N'Warning', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2392, CAST(N'2021-12-23T16:48:45.000' AS DateTime), N'Intentos fallidos', N'admin ha intentado iniciar sesion 11 veces', N'Warning', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2393, CAST(N'2021-12-23T16:48:46.000' AS DateTime), N'Intentos fallidos', N'admin ha intentado iniciar sesion 12 veces', N'Warning', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2394, CAST(N'2021-12-23T16:48:47.000' AS DateTime), N'Intentos fallidos', N'admin ha intentado iniciar sesion 13 veces', N'Warning', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2395, CAST(N'2021-12-23T17:01:25.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2396, CAST(N'2021-12-23T17:55:14.000' AS DateTime), N'Error DVV en BD', N'Error en la fila: 2', N'Error', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2397, CAST(N'2021-12-23T17:55:16.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2398, CAST(N'2021-12-23T17:58:59.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2399, CAST(N'2021-12-23T17:58:59.000' AS DateTime), N'Sucursal creado: ', N'{"Nombre":"juan","Codigo":"278","FechaCreacion":"0001-01-01T00:00:00","Cantidad":0,"Precio":727.0,"Costo":798.0,"TotalProducto":0.0,"Activo":false,"Id":5}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2400, CAST(N'2021-12-23T17:59:04.000' AS DateTime), N'Sucursal actualizado: ', N'{"Nombre":"juancho","Codigo":"278","FechaCreacion":"0001-01-01T00:00:00","Cantidad":0,"Precio":727.0,"Costo":798.0,"TotalProducto":0.0,"Activo":false,"Id":5}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2401, CAST(N'2021-12-23T17:59:04.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2402, CAST(N'2021-12-23T18:00:53.000' AS DateTime), N'Sucursal actualizado: ', N'{"Nombre":"juancho","Codigo":"278","FechaCreacion":"0001-01-01T00:00:00","Cantidad":0,"Precio":727.0,"Costo":798.0,"TotalProducto":0.0,"Activo":false,"Id":5}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2403, CAST(N'2021-12-23T18:00:53.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2404, CAST(N'2021-12-23T18:01:08.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2405, CAST(N'2021-12-23T18:01:08.000' AS DateTime), N'Producto Eliminado ', N'{"Nombre":"juancho","Codigo":"278","FechaCreacion":"0001-01-01T00:00:00","Cantidad":0,"Precio":727.0,"Costo":798.0,"TotalProducto":0.0,"Activo":false,"Id":5}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2406, CAST(N'2021-12-23T19:30:50.000' AS DateTime), N'Error DVV en BD', N'Error en la fila: 2', N'Error', 12)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2407, CAST(N'2021-12-23T19:30:57.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 12)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2408, CAST(N'2021-12-23T19:32:26.000' AS DateTime), N'Restore', N'Se ha realizado un restore', N'Info', 12)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2409, CAST(N'2021-12-23T19:42:31.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 12)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2410, CAST(N'2021-12-23T19:42:31.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"global","FechaCreacion":"0001-01-01T00:00:00","Permiso":{"Patentes":[{"Id":1,"Nombre":"Admin"},{"Id":2,"Nombre":"Sucursal"},{"Id":3,"Nombre":"Deposito"},{"Id":4,"Nombre": ...', N'Control', 12)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2411, CAST(N'2021-12-23T19:43:36.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 12)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2412, CAST(N'2021-12-23T19:43:36.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"global","FechaCreacion":"0001-01-01T00:00:00","Permiso":{"Patentes":[{"Id":1,"Nombre":"Admin"},{"Id":2,"Nombre":"Sucursal"},{"Id":3,"Nombre":"Deposito"},{"Id":4,"Nombre": ...', N'Control', 12)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2413, CAST(N'2021-12-23T19:44:04.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 12)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2414, CAST(N'2021-12-23T19:44:04.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"global","FechaCreacion":"0001-01-01T00:00:00","Permiso":{"Patentes":null,"Id":7,"Nombre":"Global"},"Puesto":{"Nombre":"Empleado","Id":1},"Depositos":null,"Sucursales":nul ...', N'Control', 12)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2415, CAST(N'2021-12-23T20:10:39.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 12)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2416, CAST(N'2021-12-24T21:12:34.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2417, CAST(N'2021-12-24T21:12:34.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":10}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2418, CAST(N'2021-12-24T21:12:37.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2419, CAST(N'2021-12-24T21:12:37.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":11}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2420, CAST(N'2021-12-24T21:12:40.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2421, CAST(N'2021-12-24T21:12:40.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":12}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2422, CAST(N'2021-12-28T16:48:06.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2423, CAST(N'2021-12-28T16:50:01.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2424, CAST(N'2022-02-21T22:04:03.000' AS DateTime), N'BackUp', N'Se ha realizado un backUp', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2425, CAST(N'2022-03-11T14:14:10.000' AS DateTime), N'BackUp', N'Se ha realizado un backUp', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2426, CAST(N'2022-03-11T14:21:45.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2427, CAST(N'2022-03-11T14:31:20.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2428, CAST(N'2022-03-11T15:34:22.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2429, CAST(N'2022-03-11T15:34:22.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":14}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2430, CAST(N'2022-03-11T15:34:25.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2431, CAST(N'2022-03-11T15:34:25.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":15}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2432, CAST(N'2022-03-11T15:34:28.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2433, CAST(N'2022-03-11T15:34:28.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":16}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2434, CAST(N'2022-03-11T15:34:31.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2435, CAST(N'2022-03-11T15:34:31.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":17}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2436, CAST(N'2022-03-11T15:34:35.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2437, CAST(N'2022-03-11T15:34:35.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":18}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2438, CAST(N'2022-03-11T15:34:38.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2439, CAST(N'2022-03-11T15:34:38.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":19}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2440, CAST(N'2022-03-11T15:34:40.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2441, CAST(N'2022-03-11T15:34:40.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":20}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2442, CAST(N'2022-03-11T15:34:52.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2443, CAST(N'2022-03-11T15:34:52.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"JUAN","Id":21}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2444, CAST(N'2022-03-11T15:34:55.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2445, CAST(N'2022-03-11T15:34:55.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":22}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2446, CAST(N'2022-03-11T15:34:58.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2447, CAST(N'2022-03-11T15:34:58.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":23}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2448, CAST(N'2022-03-11T15:35:02.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2449, CAST(N'2022-03-11T15:35:02.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":24}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2450, CAST(N'2022-03-11T16:32:07.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2451, CAST(N'2022-03-11T16:37:31.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2452, CAST(N'2022-03-11T16:37:31.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":25}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2453, CAST(N'2022-03-11T16:37:34.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2454, CAST(N'2022-03-11T16:37:34.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":27}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2455, CAST(N'2022-03-11T16:37:37.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2456, CAST(N'2022-03-11T16:37:37.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":26}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2457, CAST(N'2022-03-11T16:37:40.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2458, CAST(N'2022-03-11T16:37:40.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":28}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2459, CAST(N'2022-03-11T16:37:43.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2460, CAST(N'2022-03-11T16:37:43.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":29}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2461, CAST(N'2022-03-11T16:37:45.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2462, CAST(N'2022-03-11T16:37:45.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":30}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2463, CAST(N'2022-03-11T16:37:48.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2464, CAST(N'2022-03-11T16:37:48.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":31}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2465, CAST(N'2022-03-11T17:20:54.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2466, CAST(N'2022-03-11T17:20:54.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Castellano","Id":1}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2467, CAST(N'2022-03-11T17:22:09.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2468, CAST(N'2022-03-11T17:22:09.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":32}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2469, CAST(N'2022-03-11T17:22:11.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2470, CAST(N'2022-03-11T17:22:11.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":32}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2471, CAST(N'2022-03-11T17:22:13.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2472, CAST(N'2022-03-11T17:22:13.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":32}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2473, CAST(N'2022-03-11T17:23:16.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2474, CAST(N'2022-03-11T17:23:20.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":32}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2475, CAST(N'2022-03-11T17:24:18.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2476, CAST(N'2022-03-11T17:24:18.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":32}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2477, CAST(N'2022-03-11T17:25:03.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2478, CAST(N'2022-03-11T17:25:03.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":34}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2479, CAST(N'2022-03-11T17:28:31.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2480, CAST(N'2022-03-11T17:28:31.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":33}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2481, CAST(N'2022-03-11T17:29:08.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2482, CAST(N'2022-03-11T17:29:08.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":33}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2483, CAST(N'2022-03-11T17:30:15.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2484, CAST(N'2022-03-11T17:30:15.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"JUAN","Id":35}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2485, CAST(N'2022-03-12T15:25:37.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2486, CAST(N'2022-03-12T15:26:00.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2487, CAST(N'2022-03-12T15:26:07.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2488, CAST(N'2022-03-12T15:26:42.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2489, CAST(N'2022-03-12T16:38:08.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2490, CAST(N'2022-03-12T16:38:13.000' AS DateTime), N'Error DVV en BD', N'Error en la fila: 1', N'Error', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2491, CAST(N'2022-03-12T16:38:17.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2492, CAST(N'2022-03-14T15:12:01.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2493, CAST(N'2022-03-14T15:15:52.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2494, CAST(N'2022-03-14T15:16:42.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2495, CAST(N'2022-03-14T15:23:54.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2496, CAST(N'2022-03-14T15:30:12.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2497, CAST(N'2022-03-14T15:35:17.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2498, CAST(N'2022-03-14T15:45:22.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2499, CAST(N'2022-03-14T15:47:21.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2500, CAST(N'2022-03-14T15:57:31.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2501, CAST(N'2022-03-14T15:58:20.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2502, CAST(N'2022-03-16T02:24:39.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2503, CAST(N'2022-03-16T02:32:56.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2504, CAST(N'2022-03-16T02:33:22.000' AS DateTime), N'BackUp', N'Se ha realizado un backUp', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2505, CAST(N'2022-03-16T02:41:34.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2506, CAST(N'2022-03-16T03:06:39.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2507, CAST(N'2022-03-16T03:17:04.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2508, CAST(N'2022-03-16T03:20:37.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2509, CAST(N'2022-03-16T03:21:04.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2510, CAST(N'2022-03-16T03:22:30.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2511, CAST(N'2022-03-16T03:26:28.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2512, CAST(N'2022-03-16T03:29:44.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2513, CAST(N'2022-03-16T03:33:52.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2514, CAST(N'2022-03-16T03:40:16.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2515, CAST(N'2022-03-16T03:41:27.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2516, CAST(N'2022-03-16T03:43:11.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2517, CAST(N'2022-03-16T03:45:13.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2518, CAST(N'2022-03-16T03:47:01.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2519, CAST(N'2022-03-16T03:47:32.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2520, CAST(N'2022-03-16T03:47:33.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"JUAN","Id":37}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2521, CAST(N'2022-03-16T03:47:35.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2522, CAST(N'2022-03-16T03:47:35.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"ROBERT","Id":38}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2523, CAST(N'2022-03-16T03:47:41.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2524, CAST(N'2022-03-16T03:47:41.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Lenguaje sin nombre","Id":39}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2525, CAST(N'2022-03-16T03:47:45.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2526, CAST(N'2022-03-16T03:47:45.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"ytuiu","Id":40}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2527, CAST(N'2022-03-16T03:48:50.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2528, CAST(N'2022-03-16T03:52:54.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2529, CAST(N'2022-03-16T03:53:27.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2530, CAST(N'2022-03-16T03:57:30.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2531, CAST(N'2022-03-16T03:58:06.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2532, CAST(N'2022-03-16T14:52:31.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2533, CAST(N'2022-03-16T14:53:52.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2534, CAST(N'2022-03-16T14:54:24.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2535, CAST(N'2022-03-16T14:54:39.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2536, CAST(N'2022-03-16T14:55:26.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2537, CAST(N'2022-03-16T14:57:11.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2538, CAST(N'2022-03-16T14:58:51.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2539, CAST(N'2022-03-16T14:59:15.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2540, CAST(N'2022-03-16T14:59:15.000' AS DateTime), N'Usuario creado: ', N'{"NombreUsuario":"juancahhj","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":null,"Id":2,"Nombre":null},"Depositos":null,"Sucursales":null,"Bloqueado":false,"NombreCompleto":"Pedro, Juan","Nom ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2541, CAST(N'2022-03-16T14:59:28.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2542, CAST(N'2022-03-16T14:59:28.000' AS DateTime), N'Usuario actualizado: ', N'{"NombreUsuario":"juancahhj","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":null,"Id":1,"Nombre":null},"Depositos":null,"Sucursales":null,"Bloqueado":false,"NombreCompleto":"Pedro, Juan","Nom ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2543, CAST(N'2022-03-16T14:59:28.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2544, CAST(N'2022-03-16T14:59:35.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2545, CAST(N'2022-03-16T14:59:35.000' AS DateTime), N'Usuario Eliminado ', N'{"NombreUsuario":"juancahhj","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":null,"Id":1,"Nombre":"Deposito"},"Depositos":null,"Sucursales":null,"Bloqueado":false,"NombreCompleto":"Pedro, Juan ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2546, CAST(N'2022-03-16T15:03:42.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2547, CAST(N'2022-03-16T15:05:20.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2548, CAST(N'2022-03-16T15:06:45.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2549, CAST(N'2022-03-16T15:07:53.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2550, CAST(N'2022-03-16T15:08:15.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2551, CAST(N'2022-03-16T15:19:05.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2552, CAST(N'2022-03-16T15:19:59.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2553, CAST(N'2022-03-16T15:20:23.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2554, CAST(N'2022-03-16T15:21:23.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2555, CAST(N'2022-03-16T15:21:44.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2556, CAST(N'2022-03-16T15:21:44.000' AS DateTime), N'Usuario Eliminado ', N'{"NombreUsuario":"juancahhj","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":null,"Id":1,"Nombre":"Deposito"},"Depositos":null,"Sucursales":null,"Bloqueado":false,"NombreCompleto":"Pedro, Juan ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2557, CAST(N'2022-03-16T15:22:31.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2558, CAST(N'2022-03-16T19:40:25.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2559, CAST(N'2022-03-16T19:45:20.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2560, CAST(N'2022-03-16T19:46:52.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2561, CAST(N'2022-03-16T19:48:47.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2562, CAST(N'2022-03-16T19:53:14.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2563, CAST(N'2022-03-16T19:54:46.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2564, CAST(N'2022-03-16T19:55:57.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2565, CAST(N'2022-03-16T19:56:25.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2566, CAST(N'2022-03-16T19:56:25.000' AS DateTime), N'Proveedor creado: ', N'{"CantidadErrores":0,"Nombre":"robert","Direccion":"27827","Mail":"shjjks@snksn","Telefono":"7878","CodigoPostal":3728,"Activo":false,"Id":4}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2567, CAST(N'2022-03-16T19:56:30.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2568, CAST(N'2022-03-16T19:56:30.000' AS DateTime), N'Proveedor eliminado ', N'{"CantidadErrores":0,"Nombre":"robert","Direccion":"27827","Mail":"shjjks@snksn","Telefono":"7878","CodigoPostal":3728,"Activo":false,"Id":4}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2569, CAST(N'2022-03-16T19:58:49.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2570, CAST(N'2022-03-16T20:38:14.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2571, CAST(N'2022-03-16T20:40:06.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2572, CAST(N'2022-03-16T20:46:59.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2573, CAST(N'2022-03-16T20:53:03.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2574, CAST(N'2022-03-16T21:11:01.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2575, CAST(N'2022-03-16T21:11:22.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2576, CAST(N'2022-03-16T21:11:22.000' AS DateTime), N'Deposito creado: ', N'{"Nombre":"Juan","Direccion":"Juan 2782","Mail":"juan@gshjsj.com","Telefono":"678687","CodigoPostal":678678,"Activo":false,"Id":0}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2577, CAST(N'2022-03-16T21:11:53.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2578, CAST(N'2022-03-16T21:12:14.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2579, CAST(N'2022-03-16T21:12:14.000' AS DateTime), N'Deposito creado: ', N'{"Nombre":"hjk","Direccion":"hjk","Mail":"hkj","Telefono":"678","CodigoPostal":67,"Activo":false,"Id":0}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2580, CAST(N'2022-03-16T21:12:28.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2581, CAST(N'2022-03-16T21:16:21.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2582, CAST(N'2022-03-16T21:16:23.000' AS DateTime), N'Deposito creado: ', N'{"Nombre":"fgh","Direccion":"gh","Mail":"fgh","Telefono":"787","CodigoPostal":78,"Activo":false,"Id":3}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2583, CAST(N'2022-03-16T21:16:38.000' AS DateTime), N'Deposito actualizado: ', N'{"Nombre":"fghdfgdgf","Direccion":"gh","Mail":"fgh","Telefono":"787","CodigoPostal":78,"Activo":false,"Id":3}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2584, CAST(N'2022-03-16T21:16:38.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2585, CAST(N'2022-03-16T21:16:44.000' AS DateTime), N'Deposito actualizado: ', N'{"Nombre":"fghdfgdgf","Direccion":"ghdfg","Mail":"fghdgf","Telefono":"787455","CodigoPostal":7856,"Activo":false,"Id":3}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2586, CAST(N'2022-03-16T21:16:44.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2587, CAST(N'2022-03-16T21:25:57.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2588, CAST(N'2022-03-16T21:26:05.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2589, CAST(N'2022-03-16T21:26:05.000' AS DateTime), N'Deposito Eliminado ', N'{"Nombre":"fghdfgdgf","Direccion":"ghdfg","Mail":"fghdgf","Telefono":"787455","CodigoPostal":7856,"Activo":false,"Id":3}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2590, CAST(N'2022-03-16T21:27:45.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2591, CAST(N'2022-03-16T21:29:00.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2592, CAST(N'2022-03-16T21:29:54.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2593, CAST(N'2022-03-16T21:30:47.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2594, CAST(N'2022-03-16T21:31:07.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2595, CAST(N'2022-03-16T21:31:08.000' AS DateTime), N'Sucursal creado: ', N'{"Nombre":"hjkhkj","Direccion":"hkjhkj","Mail":"h778","Telefono":"768","CodigoPostal":78,"Activo":false,"Id":0}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2596, CAST(N'2022-03-16T21:31:42.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2597, CAST(N'2022-03-16T21:32:02.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2598, CAST(N'2022-03-16T21:32:02.000' AS DateTime), N'Sucursal creado: ', N'{"Nombre":"yu","Direccion":"yu","Mail":"yu","Telefono":"78","CodigoPostal":78,"Activo":false,"Id":0}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2599, CAST(N'2022-03-16T23:53:42.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2600, CAST(N'2022-03-16T23:54:26.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2601, CAST(N'2022-03-16T23:54:27.000' AS DateTime), N'Deposito creado: ', N'{"Nombre":"tyu","Direccion":"tyu","Mail":"tyu","Telefono":"787","CodigoPostal":787,"Activo":false,"Id":4}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2602, CAST(N'2022-03-16T23:54:43.000' AS DateTime), N'Deposito actualizado: ', N'{"Nombre":"ghjgjh","Direccion":"tyugjhgjh","Mail":"tyu","Telefono":"787","CodigoPostal":787,"Activo":false,"Id":4}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2603, CAST(N'2022-03-16T23:54:43.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2604, CAST(N'2022-03-16T23:54:47.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2605, CAST(N'2022-03-16T23:54:47.000' AS DateTime), N'Deposito Eliminado ', N'{"Nombre":"ghjgjh","Direccion":"tyugjhgjh","Mail":"tyu","Telefono":"787","CodigoPostal":787,"Activo":false,"Id":4}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2606, CAST(N'2022-03-16T23:54:59.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2607, CAST(N'2022-03-16T23:54:59.000' AS DateTime), N'Sucursal creado: ', N'{"Nombre":"tutu","Direccion":"tyutut","Mail":"tuyuy","Telefono":"678678","CodigoPostal":678687,"Activo":false,"Id":0}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2608, CAST(N'2022-03-16T23:58:10.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2609, CAST(N'2022-03-16T23:58:19.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2610, CAST(N'2022-03-16T23:58:19.000' AS DateTime), N'Sucursal creado: ', N'{"Nombre":"gjhgh","Direccion":"gjhghj","Mail":"ghjgjh","Telefono":"678","CodigoPostal":678,"Activo":false,"Id":3}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2611, CAST(N'2022-03-16T23:58:25.000' AS DateTime), N'Sucursal actualizado: ', N'{"Nombre":"678687","Direccion":"gjhghj","Mail":"ghjgjh","Telefono":"678","CodigoPostal":678,"Activo":false,"Id":3}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2612, CAST(N'2022-03-16T23:58:25.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2613, CAST(N'2022-03-16T23:58:27.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2614, CAST(N'2022-03-16T23:58:27.000' AS DateTime), N'Sucursal Eliminado ', N'{"Nombre":"678687","Direccion":"gjhghj","Mail":"ghjgjh","Telefono":"678","CodigoPostal":678,"Activo":false,"Id":3}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2615, CAST(N'2022-03-17T00:02:22.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2616, CAST(N'2022-03-17T00:02:35.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2617, CAST(N'2022-03-17T00:02:35.000' AS DateTime), N'Sucursal creado: ', N'{"Nombre":"fhg","Direccion":"fhg","Mail":"fgh","Telefono":"5567","CodigoPostal":567,"Activo":false,"Id":4}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2618, CAST(N'2022-03-17T00:02:39.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2619, CAST(N'2022-03-17T00:02:39.000' AS DateTime), N'Sucursal Eliminado ', N'{"Nombre":"fhg","Direccion":"fhg","Mail":"fgh","Telefono":"5567","CodigoPostal":567,"Activo":false,"Id":4}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2620, CAST(N'2022-03-17T00:29:16.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2621, CAST(N'2022-03-17T00:33:21.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2622, CAST(N'2022-03-17T00:33:42.000' AS DateTime), N'FamiliaEe creada: ', N'{"Patentes":[],"Id":0,"Nombre":"Juancho"}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2623, CAST(N'2022-03-17T00:33:42.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2624, CAST(N'2022-03-17T01:11:11.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2625, CAST(N'2022-03-17T01:11:54.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2626, CAST(N'2022-03-17T01:14:11.000' AS DateTime), N'FamiliaEe creada: ', N'{"Patentes":[{"Id":2,"Nombre":"Sucursal"},{"Id":3,"Nombre":"Deposito"},{"Id":4,"Nombre":"Caja"}],"Id":0,"Nombre":"Juan"}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2627, CAST(N'2022-03-17T01:14:13.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2628, CAST(N'2022-03-17T01:14:29.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2629, CAST(N'2022-03-17T01:14:47.000' AS DateTime), N'FamiliaEe creada: ', N'{"Patentes":[{"Id":2,"Nombre":"Sucursal"},{"Id":3,"Nombre":"Deposito"}],"Id":0,"Nombre":"RICARDO"}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2630, CAST(N'2022-03-17T01:14:47.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2631, CAST(N'2022-03-17T01:15:17.000' AS DateTime), N'FamiliaEe creada: ', N'{"Patentes":[{"Id":2,"Nombre":"Sucursal"},{"Id":3,"Nombre":"Deposito"}],"Id":0,"Nombre":"RICARDO"}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2632, CAST(N'2022-03-17T01:15:33.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2633, CAST(N'2022-03-17T01:16:19.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2634, CAST(N'2022-03-17T01:26:12.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2635, CAST(N'2022-03-17T01:26:38.000' AS DateTime), N'Familia creada: ', N'{"Patentes":[{"Id":2,"Nombre":"Sucursal"},{"Id":3,"Nombre":"Deposito"}],"Id":0,"Nombre":"fghgh"}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2636, CAST(N'2022-03-17T01:26:38.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2637, CAST(N'2022-03-17T01:27:49.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2638, CAST(N'2022-03-17T01:29:50.000' AS DateTime), N'Familia creada: ', N'{"Patentes":[{"Id":3,"Nombre":"Deposito"},{"Id":4,"Nombre":"Caja"}],"Id":8,"Nombre":"gfjhjh"}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2639, CAST(N'2022-03-17T01:29:51.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2640, CAST(N'2022-03-17T01:31:47.000' AS DateTime), N'FamiliaEe actualizada: ', N'{"Patentes":[{"Id":4,"Nombre":"Caja"},{"Id":5,"Nombre":"EnviosRecepciones"}],"Id":8,"Nombre":"gfjhjh"}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2641, CAST(N'2022-03-17T01:31:47.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2642, CAST(N'2022-03-17T01:33:07.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2643, CAST(N'2022-03-17T01:33:27.000' AS DateTime), N'FamiliaEe actualizada: ', N'{"Patentes":[{"Id":4,"Nombre":"Caja"}],"Id":8,"Nombre":"tgyjtyu"}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2644, CAST(N'2022-03-17T01:33:27.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2645, CAST(N'2022-03-17T01:35:02.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2646, CAST(N'2022-03-17T01:35:20.000' AS DateTime), N'FamiliaEe actualizada: ', N'{"Patentes":[{"Id":4,"Nombre":"Caja"}],"Id":8,"Nombre":"tgyjtyu"}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2647, CAST(N'2022-03-17T01:35:20.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2648, CAST(N'2022-03-17T01:37:08.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2649, CAST(N'2022-03-17T01:56:10.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2650, CAST(N'2022-03-17T01:56:20.000' AS DateTime), N'Familia creada: ', N'{"Patentes":[{"Id":3,"Nombre":"Deposito"},{"Id":4,"Nombre":"Caja"}],"Id":9,"Nombre":"JUAN"}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2651, CAST(N'2022-03-17T01:56:20.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2652, CAST(N'2022-03-17T01:56:29.000' AS DateTime), N'FamiliaEe actualizada: ', N'{"Patentes":[{"Id":4,"Nombre":"Caja"}],"Id":9,"Nombre":"JUAN"}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2653, CAST(N'2022-03-17T01:56:29.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2654, CAST(N'2022-03-17T01:57:02.000' AS DateTime), N'FamiliaEe actualizada: ', N'{"Patentes":[{"Id":4,"Nombre":"Caja"}],"Id":9,"Nombre":"JUAN"}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2655, CAST(N'2022-03-17T01:57:02.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2656, CAST(N'2022-03-17T01:57:14.000' AS DateTime), N'FamiliaEe actualizada: ', N'{"Patentes":[{"Id":4,"Nombre":"Caja"},{"Id":5,"Nombre":"EnviosRecepciones"}],"Id":9,"Nombre":"JUAN"}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2657, CAST(N'2022-03-17T01:57:14.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2658, CAST(N'2022-03-17T01:58:07.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2659, CAST(N'2022-03-17T01:58:39.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2660, CAST(N'2022-03-17T01:58:39.000' AS DateTime), N'Producto creado: ', N'{"Nombre":"juan","Codigo":"2190","FechaCreacion":"0001-01-01T00:00:00","Cantidad":0,"Precio":567.0,"Costo":55.0,"TotalProducto":0.0,"Activo":false,"Id":6}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2661, CAST(N'2022-03-17T01:58:46.000' AS DateTime), N'Producto actualizado: ', N'{"Nombre":"fghfhg","Codigo":"219055","FechaCreacion":"0001-01-01T00:00:00","Cantidad":0,"Precio":56756.0,"Costo":5566.0,"TotalProducto":0.0,"Activo":false,"Id":6}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2662, CAST(N'2022-03-17T01:58:46.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2663, CAST(N'2022-03-17T01:58:50.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2664, CAST(N'2022-03-17T01:58:50.000' AS DateTime), N'Producto Eliminado ', N'{"Nombre":"fghfhg","Codigo":"219055","FechaCreacion":"0001-01-01T00:00:00","Cantidad":0,"Precio":56756.0,"Costo":5566.0,"TotalProducto":0.0,"Activo":false,"Id":6}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2665, CAST(N'2022-03-17T01:59:21.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2666, CAST(N'2022-03-17T01:59:21.000' AS DateTime), N'Producto creado: ', N'{"Nombre":"fgh","Codigo":"5675","FechaCreacion":"0001-01-01T00:00:00","Cantidad":0,"Precio":5656.0,"Costo":55.0,"TotalProducto":0.0,"Activo":false,"Id":7}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2667, CAST(N'2022-03-17T01:59:24.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2668, CAST(N'2022-03-17T01:59:24.000' AS DateTime), N'Producto Eliminado ', N'{"Nombre":"fgh","Codigo":"5675","FechaCreacion":"0001-01-01T00:00:00","Cantidad":0,"Precio":5656.0,"Costo":55.0,"TotalProducto":0.0,"Activo":false,"Id":7}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2669, CAST(N'2022-03-17T02:06:04.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2670, CAST(N'2022-03-17T02:06:54.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2671, CAST(N'2022-03-17T02:07:58.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2672, CAST(N'2022-03-17T02:07:58.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":[{"Id":1,"Nombre":"Admin"},{"Id":9,"Nombre":"BackUp"},{"Id":10,"Nombre":"Bitacora"},{"Id":11,"Nombre":"Digi ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2673, CAST(N'2022-03-17T02:10:16.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2674, CAST(N'2022-03-17T02:10:36.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2675, CAST(N'2022-03-17T02:10:36.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":[{"Id":1,"Nombre":"Admin"},{"Id":9,"Nombre":"BackUp"},{"Id":10,"Nombre":"Bitacora"},{"Id":11,"Nombre":"Digi ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2676, CAST(N'2022-03-17T02:11:23.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2677, CAST(N'2022-03-17T02:11:34.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":[{"Id":1,"Nombre":"Admin"},{"Id":9,"Nombre":"BackUp"},{"Id":10,"Nombre":"Bitacora"},{"Id":11,"Nombre":"Digi ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2678, CAST(N'2022-03-17T02:12:24.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2679, CAST(N'2022-03-17T02:12:34.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":[{"Id":1,"Nombre":"Admin"},{"Id":9,"Nombre":"BackUp"},{"Id":10,"Nombre":"Bitacora"},{"Id":11,"Nombre":"Digi ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2680, CAST(N'2022-03-17T02:13:32.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2681, CAST(N'2022-03-17T02:14:56.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2682, CAST(N'2022-03-17T02:16:31.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2683, CAST(N'2022-03-17T02:20:35.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2684, CAST(N'2022-03-17T02:20:51.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2685, CAST(N'2022-03-17T02:22:19.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2686, CAST(N'2022-03-17T02:22:20.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":[{"Id":1,"Nombre":"Admin"},{"Id":9,"Nombre":"BackUp"},{"Id":10,"Nombre":"Bitacora"},{"Id":11,"Nombre":"Digi ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2687, CAST(N'2022-03-17T02:22:54.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2688, CAST(N'2022-03-17T02:22:54.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":[{"Id":1,"Nombre":"Admin"},{"Id":9,"Nombre":"BackUp"},{"Id":10,"Nombre":"Bitacora"},{"Id":11,"Nombre":"Digi ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2689, CAST(N'2022-03-17T02:32:23.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2690, CAST(N'2022-03-17T02:32:37.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2691, CAST(N'2022-03-17T02:32:37.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":[{"Id":1,"Nombre":"Admin"},{"Id":9,"Nombre":"BackUp"},{"Id":10,"Nombre":"Bitacora"},{"Id":11,"Nombre":"Digi ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2692, CAST(N'2022-03-17T02:32:53.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2693, CAST(N'2022-03-17T02:32:53.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":null,"Id":5,"Nombre":"Admin"},"Depositos":null,"Sucursales":null,"Bloqueado":false,"NombreCompleto":"Admind ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2694, CAST(N'2022-03-17T02:33:06.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2695, CAST(N'2022-03-17T02:33:06.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":null,"Id":5,"Nombre":"Admin"},"Depositos":null,"Sucursales":null,"Bloqueado":false,"NombreCompleto":"Admind ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2696, CAST(N'2022-03-17T02:34:45.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2697, CAST(N'2022-03-17T02:38:59.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2698, CAST(N'2022-03-17T02:39:14.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2699, CAST(N'2022-03-17T02:39:14.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":null,"Id":5,"Nombre":"Admin"},"Depositos":null,"Sucursales":null,"Bloqueado":false,"NombreCompleto":"Admind ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2700, CAST(N'2022-03-17T02:40:01.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2701, CAST(N'2022-03-17T02:40:15.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2702, CAST(N'2022-03-17T02:40:15.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":null,"Id":5,"Nombre":"Admin"},"Depositos":null,"Sucursales":null,"Bloqueado":false,"NombreCompleto":"Admind ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2703, CAST(N'2022-03-17T02:43:45.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2704, CAST(N'2022-03-17T02:43:57.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2705, CAST(N'2022-03-17T02:43:57.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":null,"Id":5,"Nombre":"Admin"},"Depositos":null,"Sucursales":null,"Bloqueado":false,"NombreCompleto":"Admind ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2706, CAST(N'2022-03-17T02:46:04.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2707, CAST(N'2022-03-17T02:46:23.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2708, CAST(N'2022-03-17T02:46:23.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":null,"Id":5,"Nombre":"Admin"},"Depositos":null,"Sucursales":null,"Bloqueado":false,"NombreCompleto":"Admind ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2709, CAST(N'2022-03-17T02:49:24.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2710, CAST(N'2022-03-17T02:49:24.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":null,"Id":5,"Nombre":"Admin"},"Depositos":null,"Sucursales":null,"Bloqueado":false,"NombreCompleto":"Admind ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2711, CAST(N'2022-03-17T11:42:15.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2712, CAST(N'2022-03-17T11:44:01.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2713, CAST(N'2022-03-17T11:49:43.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2714, CAST(N'2022-03-17T11:50:21.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2715, CAST(N'2022-03-17T12:08:48.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2716, CAST(N'2022-03-17T12:12:14.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2717, CAST(N'2022-03-17T12:21:16.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2718, CAST(N'2022-03-17T12:26:02.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2719, CAST(N'2022-03-17T12:26:31.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2720, CAST(N'2022-03-17T12:26:32.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":[{"Id":1,"Nombre":"Admin"},{"Id":9,"Nombre":"BackUp"},{"Id":10,"Nombre":"Bitacora"},{"Id":11,"Nombre":"Digi ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2721, CAST(N'2022-03-17T12:42:52.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2722, CAST(N'2022-03-17T12:43:10.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2723, CAST(N'2022-03-17T12:43:10.000' AS DateTime), N'Envio de Sucursal creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":[{"Id":1,"Nombre":"Admin"},{"Id":9,"Nombre":"BackUp"},{"Id":10,"Nombre":"Bitacora"},{"Id":11,"Nomb ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2724, CAST(N'2022-03-17T12:43:10.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2725, CAST(N'2022-03-17T12:43:10.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2726, CAST(N'2022-03-17T12:43:10.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":[{"Id":1,"Nombre":"Admin"},{"Id":9,"Nombre":"BackUp"},{"Id":10,"Nombre":"Bitacora"},{"Id":11,"Nombre":"Digi ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2727, CAST(N'2022-03-17T13:00:58.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2728, CAST(N'2022-03-17T13:03:21.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2729, CAST(N'2022-03-17T13:17:15.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2730, CAST(N'2022-03-17T13:17:45.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2731, CAST(N'2022-03-17T13:19:27.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2732, CAST(N'2022-03-17T13:19:33.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2733, CAST(N'2022-03-17T13:23:03.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2734, CAST(N'2022-03-17T13:27:02.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2735, CAST(N'2022-03-17T13:31:45.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2736, CAST(N'2022-03-17T13:37:27.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2737, CAST(N'2022-03-17T13:39:29.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2738, CAST(N'2022-03-17T13:44:07.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2739, CAST(N'2022-03-17T13:44:34.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2740, CAST(N'2022-03-17T13:44:34.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":[{"Id":1,"Nombre":"Admin"},{"Id":9,"Nombre":"BackUp"},{"Id":10,"Nombre":"Bitacora"},{"Id":11,"Nombre":"Digi ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2741, CAST(N'2022-03-17T13:47:43.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2742, CAST(N'2022-03-17T13:50:07.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2743, CAST(N'2022-03-17T13:50:26.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2744, CAST(N'2022-03-17T13:50:26.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":null,"Id":5,"Nombre":"Admin"},"Depositos":null,"Sucursales":null,"Bloqueado":false,"NombreCompleto":"Admind ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2745, CAST(N'2022-03-17T13:51:24.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2746, CAST(N'2022-03-17T13:51:38.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2747, CAST(N'2022-03-17T13:51:38.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":[{"Id":1,"Nombre":"Admin"},{"Id":9,"Nombre":"BackUp"},{"Id":10,"Nombre":"Bitacora"},{"Id":11,"Nombre":"Digi ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2748, CAST(N'2022-03-17T13:52:09.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2749, CAST(N'2022-03-17T13:52:09.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":null,"Id":5,"Nombre":"Admin"},"Depositos":null,"Sucursales":null,"Bloqueado":false,"NombreCompleto":"Admind ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2750, CAST(N'2022-03-17T13:54:02.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2751, CAST(N'2022-03-17T13:54:18.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2752, CAST(N'2022-03-17T13:54:19.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":[{"Id":1,"Nombre":"Admin"},{"Id":9,"Nombre":"BackUp"},{"Id":10,"Nombre":"Bitacora"},{"Id":11,"Nombre":"Digi ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2753, CAST(N'2022-03-17T13:54:26.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2754, CAST(N'2022-03-17T13:54:26.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":null,"Id":5,"Nombre":"Admin"},"Depositos":null,"Sucursales":null,"Bloqueado":false,"NombreCompleto":"Admind ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2755, CAST(N'2022-03-17T14:06:30.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2756, CAST(N'2022-03-17T14:12:09.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2757, CAST(N'2022-03-17T14:12:33.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2758, CAST(N'2022-03-17T14:13:21.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2759, CAST(N'2022-03-17T14:13:21.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"YIUI","Id":44}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2760, CAST(N'2022-03-17T14:17:37.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2761, CAST(N'2022-03-17T14:18:10.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2762, CAST(N'2022-03-17T14:18:34.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2763, CAST(N'2022-03-17T14:18:34.000' AS DateTime), N'Envio de Sucursal creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":[{"Id":1,"Nombre":"Admin"},{"Id":9,"Nombre":"BackUp"},{"Id":10,"Nombre":"Bitacora"},{"Id":11,"Nomb ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2764, CAST(N'2022-03-17T14:18:34.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2765, CAST(N'2022-03-17T14:18:34.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2766, CAST(N'2022-03-17T14:18:34.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":[{"Id":1,"Nombre":"Admin"},{"Id":9,"Nombre":"BackUp"},{"Id":10,"Nombre":"Bitacora"},{"Id":11,"Nombre":"Digi ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2767, CAST(N'2022-03-17T14:20:49.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2768, CAST(N'2022-03-17T14:21:34.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2769, CAST(N'2022-03-17T14:21:34.000' AS DateTime), N'Envio de Sucursal creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":[{"Id":1,"Nombre":"Admin"},{"Id":9,"Nombre":"BackUp"},{"Id":10,"Nombre":"Bitacora"},{"Id":11,"Nomb ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2770, CAST(N'2022-03-17T14:21:34.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2771, CAST(N'2022-03-17T14:21:34.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2772, CAST(N'2022-03-17T14:21:34.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":[{"Id":1,"Nombre":"Admin"},{"Id":9,"Nombre":"BackUp"},{"Id":10,"Nombre":"Bitacora"},{"Id":11,"Nombre":"Digi ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2773, CAST(N'2022-03-17T14:22:24.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2774, CAST(N'2022-03-17T14:29:21.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2775, CAST(N'2022-03-17T14:31:29.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2776, CAST(N'2022-03-17T14:33:02.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2777, CAST(N'2022-03-17T14:33:23.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2778, CAST(N'2022-03-17T14:37:12.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2779, CAST(N'2022-03-17T14:41:39.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2780, CAST(N'2022-03-17T14:42:37.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2781, CAST(N'2022-03-17T14:44:34.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2782, CAST(N'2022-03-17T14:48:52.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2783, CAST(N'2022-03-17T14:50:52.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2784, CAST(N'2022-03-17T14:53:32.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2785, CAST(N'2022-03-17T14:58:27.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2786, CAST(N'2022-03-17T15:00:03.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2787, CAST(N'2022-03-17T15:01:04.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2788, CAST(N'2022-03-17T15:15:49.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2789, CAST(N'2022-03-17T15:21:08.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2790, CAST(N'2022-03-17T15:25:25.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2791, CAST(N'2022-03-17T15:27:40.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2792, CAST(N'2022-03-17T15:32:05.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2793, CAST(N'2022-03-17T15:54:22.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2794, CAST(N'2022-03-17T15:56:28.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2795, CAST(N'2022-03-17T15:56:28.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"Portugues","Id":45}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2796, CAST(N'2022-03-17T15:57:33.000' AS DateTime), N'Proveedor actualizado: ', N'{"CantidadErrores":2,"Nombre":"Sariftg","Direccion":"Roma 162","Mail":"sarif@gmail.com","Telefono":"0303456","CodigoPostal":2000,"Activo":false,"Id":3}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2797, CAST(N'2022-03-17T15:57:33.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2798, CAST(N'2022-03-17T15:58:01.000' AS DateTime), N'Proveedor actualizado: ', N'{"CantidadErrores":2,"Nombre":"Sarif","Direccion":"Roma 162","Mail":"sarif@gmail.com","Telefono":"0303456","CodigoPostal":2000,"Activo":false,"Id":3}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2799, CAST(N'2022-03-17T15:58:01.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2800, CAST(N'2022-03-17T16:03:27.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2801, CAST(N'2022-03-17T16:04:49.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2802, CAST(N'2022-03-17T16:04:49.000' AS DateTime), N'Familia borrada: ', N'{"Patentes":null,"Id":8,"Nombre":null}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2803, CAST(N'2022-03-17T16:05:25.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2804, CAST(N'2022-03-17T16:05:39.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2805, CAST(N'2022-03-17T16:05:39.000' AS DateTime), N'Familia borrada: ', N'{"Patentes":null,"Id":8,"Nombre":null}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2806, CAST(N'2022-03-17T16:05:51.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2807, CAST(N'2022-03-17T16:06:40.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2808, CAST(N'2022-03-17T16:06:40.000' AS DateTime), N'Familia borrada: ', N'{"Patentes":null,"Id":9,"Nombre":null}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2809, CAST(N'2022-03-17T16:07:06.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2810, CAST(N'2022-03-17T16:09:15.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2811, CAST(N'2022-03-17T16:09:15.000' AS DateTime), N'Familia borrada: ', N'{"Patentes":null,"Id":9,"Nombre":null}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2812, CAST(N'2022-03-17T16:09:38.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2813, CAST(N'2022-03-17T16:09:38.000' AS DateTime), N'Familia borrada: ', N'{"Patentes":null,"Id":9,"Nombre":null}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2814, CAST(N'2022-03-17T16:09:59.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2815, CAST(N'2022-03-17T16:10:40.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2816, CAST(N'2022-03-17T16:10:40.000' AS DateTime), N'Familia borrada: ', N'{"Patentes":null,"Id":9,"Nombre":null}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2817, CAST(N'2022-03-17T16:10:54.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2818, CAST(N'2022-03-17T16:12:51.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2819, CAST(N'2022-03-17T16:13:17.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2820, CAST(N'2022-03-17T16:13:39.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2821, CAST(N'2022-03-17T16:13:39.000' AS DateTime), N'Familia borrada: ', N'{"Patentes":null,"Id":9,"Nombre":null}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2822, CAST(N'2022-03-17T16:13:47.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2823, CAST(N'2022-03-17T16:13:47.000' AS DateTime), N'Familia borrada: ', N'{"Patentes":null,"Id":8,"Nombre":null}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2824, CAST(N'2022-03-17T16:27:23.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2825, CAST(N'2022-03-17T16:27:30.000' AS DateTime), N'BackUp', N'Se ha realizado un backUp', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2826, CAST(N'2022-03-17T16:29:48.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2827, CAST(N'2022-03-17T16:30:57.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2828, CAST(N'2022-03-17T16:35:39.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2829, CAST(N'2022-03-17T16:35:49.000' AS DateTime), N'BackUp', N'Se ha realizado un backUp', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2830, CAST(N'2022-03-17T16:41:37.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2831, CAST(N'2022-03-17T16:48:42.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2832, CAST(N'2022-03-17T16:50:34.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2833, CAST(N'2022-03-17T16:50:45.000' AS DateTime), N'BackUp', N'Se ha realizado un backUp', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2834, CAST(N'2022-03-17T16:59:07.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2835, CAST(N'2022-03-17T17:05:33.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2836, CAST(N'2022-03-17T17:05:37.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2837, CAST(N'2022-03-17T17:05:58.000' AS DateTime), N'BackUp', N'Se ha realizado un backUp', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2838, CAST(N'2022-03-17T17:10:00.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2839, CAST(N'2022-03-17T17:10:49.000' AS DateTime), N'BackUp', N'Se ha realizado un backUp', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2840, CAST(N'2022-03-17T17:11:46.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2841, CAST(N'2022-03-17T17:12:14.000' AS DateTime), N'Restore', N'Se ha realizado un restore', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2842, CAST(N'2022-03-17T17:12:59.000' AS DateTime), N'Restore', N'Se ha realizado un restore', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2843, CAST(N'2022-03-17T17:13:40.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2844, CAST(N'2022-03-17T17:13:59.000' AS DateTime), N'Restore', N'Se ha realizado un restore', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2845, CAST(N'2022-03-17T17:14:23.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2846, CAST(N'2022-03-17T17:14:45.000' AS DateTime), N'Restore', N'Se ha realizado un restore', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2847, CAST(N'2022-03-17T17:15:08.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2848, CAST(N'2022-03-17T17:16:24.000' AS DateTime), N'Error DVV en BD', N'Error en la fila: 10', N'Error', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2849, CAST(N'2022-03-17T17:16:42.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2850, CAST(N'2022-03-17T17:16:44.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2851, CAST(N'2022-03-17T17:16:44.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2852, CAST(N'2022-03-17T17:16:44.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2853, CAST(N'2022-03-17T17:16:44.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2854, CAST(N'2022-03-17T17:18:58.000' AS DateTime), N'Error DVV en BD', N'Error en la fila: 10', N'Error', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2855, CAST(N'2022-03-17T17:19:03.000' AS DateTime), N'Error DVV en BD', N'Error en la fila: 10', N'Error', 7)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2856, CAST(N'2022-03-17T17:20:29.000' AS DateTime), N'Error DVV en BD', N'Error en la fila: 10', N'Error', 7)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2857, CAST(N'2022-03-17T17:20:44.000' AS DateTime), N'Error DVV en BD', N'Error en la fila: 10', N'Error', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2858, CAST(N'2022-03-17T17:20:52.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2859, CAST(N'2022-03-17T17:20:52.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2860, CAST(N'2022-03-17T17:20:52.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2861, CAST(N'2022-03-17T17:22:34.000' AS DateTime), N'Error DVV en BD', N'Error en la fila: 2', N'Error', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2862, CAST(N'2022-03-17T17:22:34.000' AS DateTime), N'Error DVV en BD', N'Error en la fila: 11', N'Error', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2863, CAST(N'2022-03-17T17:22:35.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2864, CAST(N'2022-03-17T17:22:36.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2865, CAST(N'2022-03-17T17:22:36.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2866, CAST(N'2022-03-17T17:25:43.000' AS DateTime), N'Restore', N'Se ha realizado un restore', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2867, CAST(N'2022-03-17T17:27:26.000' AS DateTime), N'Error DVV en BD', N'Error en la fila: 9', N'Error', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2868, CAST(N'2022-03-17T17:32:38.000' AS DateTime), N'Error DVH en BD', N'Error DVH en la tabla: usuario', N'Error', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2869, CAST(N'2022-03-17T17:32:40.000' AS DateTime), N'Error DVV en BD', N'Error en la fila: 9', N'Error', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2870, CAST(N'2022-03-17T17:33:53.000' AS DateTime), N'Error DVH en BD', N'Error DVH en la tabla: usuario', N'Error', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2871, CAST(N'2022-03-17T17:33:55.000' AS DateTime), N'Error DVV en BD', N'Error en la fila: 9', N'Error', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2872, CAST(N'2022-03-17T17:33:58.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2873, CAST(N'2022-03-17T17:33:59.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2874, CAST(N'2022-03-17T17:33:59.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2875, CAST(N'2022-03-17T17:33:59.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2876, CAST(N'2022-03-17T17:34:43.000' AS DateTime), N'Intentos fallidos', N'admin ha intentado iniciar sesion 5 veces', N'Warning', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2877, CAST(N'2022-03-17T17:34:44.000' AS DateTime), N'Intentos fallidos', N'admin ha intentado iniciar sesion 6 veces', N'Warning', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2878, CAST(N'2022-03-17T17:34:45.000' AS DateTime), N'Intentos fallidos', N'admin ha intentado iniciar sesion 7 veces', N'Warning', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2879, CAST(N'2022-03-17T17:34:46.000' AS DateTime), N'Intentos fallidos', N'admin ha intentado iniciar sesion 8 veces', N'Warning', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2880, CAST(N'2022-03-17T17:34:47.000' AS DateTime), N'Intentos fallidos', N'admin ha intentado iniciar sesion 9 veces', N'Warning', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2881, CAST(N'2022-03-17T17:35:24.000' AS DateTime), N'Intentos fallidos', N'admin ha intentado iniciar sesion 5 veces', N'Warning', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2882, CAST(N'2022-03-17T17:35:25.000' AS DateTime), N'Intentos fallidos', N'admin ha intentado iniciar sesion 6 veces', N'Warning', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2883, CAST(N'2022-03-17T17:35:26.000' AS DateTime), N'Intentos fallidos', N'admin ha intentado iniciar sesion 7 veces', N'Warning', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2884, CAST(N'2022-03-17T17:35:27.000' AS DateTime), N'Intentos fallidos', N'admin ha intentado iniciar sesion 8 veces', N'Warning', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2885, CAST(N'2022-03-17T17:52:45.000' AS DateTime), N'Intentos fallidos', N'admin ha bloqueado la cuenta', N'Warning', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2886, CAST(N'2022-03-17T17:53:14.000' AS DateTime), N'Error DVH en BD', N'Error DVH en la tabla: usuario', N'Error', 12)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2887, CAST(N'2022-03-17T17:53:14.000' AS DateTime), N'Error DVV en BD', N'Error en la fila: 1', N'Error', 12)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2888, CAST(N'2022-03-17T17:53:15.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 12)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2889, CAST(N'2022-03-17T17:54:01.000' AS DateTime), N'Intentos fallidos', N'admin ha bloqueado la cuenta', N'Warning', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2890, CAST(N'2022-03-17T17:54:46.000' AS DateTime), N'Intentos fallidos', N'admin ha bloqueado la cuenta', N'Warning', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2891, CAST(N'2022-03-17T17:55:41.000' AS DateTime), N'Error DVH en BD', N'Error DVH en la tabla: usuario', N'Error', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2892, CAST(N'2022-03-17T17:55:41.000' AS DateTime), N'Error DVV en BD', N'Error en la fila: 1', N'Error', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2893, CAST(N'2022-03-17T17:55:42.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2894, CAST(N'2022-03-17T17:55:43.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2895, CAST(N'2022-03-17T17:55:43.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2896, CAST(N'2022-03-17T18:02:45.000' AS DateTime), N'Intentos fallidos', N'sales ha bloqueado la cuenta', N'Warning', 0)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2897, CAST(N'2022-03-17T18:02:56.000' AS DateTime), N'Error DVH en BD', N'Error DVH en la tabla: usuario', N'Error', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2898, CAST(N'2022-03-17T18:02:56.000' AS DateTime), N'Error DVV en BD', N'Error en la fila: 4', N'Error', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2899, CAST(N'2022-03-17T18:03:07.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2900, CAST(N'2022-03-17T18:09:30.000' AS DateTime), N'Error DVH en BD', N'Error DVH en la tabla: usuario', N'Error', 12)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2901, CAST(N'2022-03-17T18:09:30.000' AS DateTime), N'Error DVV en BD', N'Error en la fila: 1', N'Error', 12)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2902, CAST(N'2022-03-17T18:09:32.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 12)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2903, CAST(N'2022-03-17T18:09:33.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 12)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2904, CAST(N'2022-03-17T18:09:33.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 12)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2905, CAST(N'2022-03-17T18:11:20.000' AS DateTime), N'Error DVH en BD', N'Error DVH en la tabla: usuario', N'Error', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2906, CAST(N'2022-03-17T18:11:20.000' AS DateTime), N'Error DVV en BD', N'Error en la fila: 1', N'Error', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2907, CAST(N'2022-03-17T18:11:22.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2908, CAST(N'2022-03-17T18:11:51.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2909, CAST(N'2022-03-17T18:11:51.000' AS DateTime), N'Envio de Sucursal creado: ', N'{"Venta":{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":[{"Id":1,"Nombre":"Admin"},{"Id":9,"Nombre":"BackUp"},{"Id":10,"Nombre":"Bitacora"},{"Id":11,"Nomb ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2910, CAST(N'2022-03-17T18:11:51.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2911, CAST(N'2022-03-17T18:11:51.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2912, CAST(N'2022-03-17T18:11:51.000' AS DateTime), N'Venta creada: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":[{"Id":1,"Nombre":"Admin"},{"Id":9,"Nombre":"BackUp"},{"Id":10,"Nombre":"Bitacora"},{"Id":11,"Nombre":"Digi ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2913, CAST(N'2022-03-17T18:12:13.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2914, CAST(N'2022-03-17T18:12:13.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":[{"Id":1,"Nombre":"Admin"},{"Id":9,"Nombre":"BackUp"},{"Id":10,"Nombre":"Bitacora"},{"Id":11,"Nombre":"Digi ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2915, CAST(N'2022-03-17T18:12:33.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2916, CAST(N'2022-03-17T18:12:33.000' AS DateTime), N'Pedido creado: ', N'{"Empleado":{"NombreUsuario":"admin","FechaCreacion":"0001-01-01T00:00:00","Rol":{"Patentes":null,"Id":5,"Nombre":"Admin"},"Depositos":null,"Sucursales":null,"Bloqueado":false,"NombreCompleto":"Admins ...', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2917, CAST(N'2022-03-17T18:13:17.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (2918, CAST(N'2022-03-17T18:13:17.000' AS DateTime), N'Idioma eliminado: ', N'{"Forms":[],"Textos":{},"Nombre":"fhgtfhg","Id":46}', N'Control', 4)
GO
SET IDENTITY_INSERT [dbo].[bitacora] OFF
GO
SET IDENTITY_INSERT [dbo].[cEstadoEnvio] ON 
GO
INSERT [dbo].[cEstadoEnvio] ([id], [descripcion]) VALUES (1, N'Sin despachar')
GO
INSERT [dbo].[cEstadoEnvio] ([id], [descripcion]) VALUES (2, N'Despachado')
GO
INSERT [dbo].[cEstadoEnvio] ([id], [descripcion]) VALUES (3, N'Recepcion confirmada')
GO
SET IDENTITY_INSERT [dbo].[cEstadoEnvio] OFF
GO
SET IDENTITY_INSERT [dbo].[cMetodoPago] ON 
GO
INSERT [dbo].[cMetodoPago] ([id], [nombre]) VALUES (1, N'cash')
GO
INSERT [dbo].[cMetodoPago] ([id], [nombre]) VALUES (2, N'debit')
GO
INSERT [dbo].[cMetodoPago] ([id], [nombre]) VALUES (3, N'credit')
GO
SET IDENTITY_INSERT [dbo].[cMetodoPago] OFF
GO
SET IDENTITY_INSERT [dbo].[cMotivoPenalizacion] ON 
GO
INSERT [dbo].[cMotivoPenalizacion] ([id], [descripcion]) VALUES (1, N'missing_products')
GO
INSERT [dbo].[cMotivoPenalizacion] ([id], [descripcion]) VALUES (2, N'damaged_products')
GO
INSERT [dbo].[cMotivoPenalizacion] ([id], [descripcion]) VALUES (3, N'incorrect_products')
GO
INSERT [dbo].[cMotivoPenalizacion] ([id], [descripcion]) VALUES (4, N'late_delivery')
GO
INSERT [dbo].[cMotivoPenalizacion] ([id], [descripcion]) VALUES (5, N'no_delivery')
GO
SET IDENTITY_INSERT [dbo].[cMotivoPenalizacion] OFF
GO
SET IDENTITY_INSERT [dbo].[comprador] ON 
GO
INSERT [dbo].[comprador] ([id], [nombre], [apellido], [dni], [mail], [idDireccion], [telefono], [esSocio], [activo]) VALUES (1, N'Juan', N'Juanes', 252525, N'juan@gmail.com', NULL, N'1789', 1, 1)
GO
INSERT [dbo].[comprador] ([id], [nombre], [apellido], [dni], [mail], [idDireccion], [telefono], [esSocio], [activo]) VALUES (2, N'Ricardo', N'Gomez', 5456787, N'ricardo@gmail.,com', NULL, N'2672', 0, 1)
GO
INSERT [dbo].[comprador] ([id], [nombre], [apellido], [dni], [mail], [idDireccion], [telefono], [esSocio], [activo]) VALUES (3, N'Lucas', N'Lopez', 454565, N'lucas@gmail.com', NULL, N'576', 1, 1)
GO
INSERT [dbo].[comprador] ([id], [nombre], [apellido], [dni], [mail], [idDireccion], [telefono], [esSocio], [activo]) VALUES (4, N'Fernando', N'Contra', 262562, N'fernando@gmail.com', NULL, N'26726', 1, 1)
GO
SET IDENTITY_INSERT [dbo].[comprador] OFF
GO
SET IDENTITY_INSERT [dbo].[control] ON 
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1, 1, N'language', N'Idioma')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2, 2, N'language', N'Language')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3, 1, N'bitacore', N'Log del Sistema')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4, 2, N'bitacore', N'System Log')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (5, 1, N'username', N'Nombre de usuario')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (6, 2, N'username', N'Username')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (7, 1, N'password', N'Contraseña')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (8, 2, N'password', N'Password')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (9, 1, N'login', N'Iniciar sesion')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (10, 2, N'login', N'Log in')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (11, 1, N'updateDV', N'Actualizar DV')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12, 2, N'updateDV', N'Update DV')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (13, 1, N'employees', N'Empleados')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (14, 2, N'employees', N'Employees')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (15, 1, N'rest_dv', N'Restaurar DV')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (16, 2, N'rest_dv', N'Restore DV')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (17, 1, N'restore', N'Restaurar')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (18, 2, N'restore', N'Restore')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (19, 1, N'bkp_done', N'Se realizo el backup')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (20, 2, N'bkp_done', N'Backup is done')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (21, 1, N'restore_done', N'Se realizo la restauracion')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (22, 2, N'restore_done', N'Restore is done')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (23, 1, N'login_failed', N'Usuario o contraseña incorrecto')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (24, 2, N'login_failed', N'User or password incorrect')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (25, 1, N'login_success', N'Has iniciado sesion')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (26, 2, N'login_success', N'Login successful')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (27, 1, N'logout_success', N'Has cerrado sesion')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (28, 2, N'logout_success', N'Logout successful')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (29, 1, N'notification', N'Notificacion')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (30, 2, N'notification', N'Notification')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (31, 1, N'dvh_table', N'Error DVH en la tabla: ')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (32, 2, N'dvh_table', N'DVH error in table:')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (33, 1, N'error_row', N'Error en la fila: ')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (34, 2, N'error_row', N'Error in row:')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (35, 1, N'dvv_table', N'Error DVV en la tabla: ')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (36, 2, N'dvv_table', N'Error DVV in table:')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (37, 1, N'error_contact_admin', N'Ha surgido un error. Contacte al administrador.')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (38, 2, N'error_contact_admin', N'There was an error. Contact the admin.')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (39, 1, N'recognize', N'Reconocer')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (40, 2, N'recognize', N'Recognize')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (41, 1, N'see_profile', N'Ver perfil')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (42, 2, N'see_profile', N'Go to profile')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (43, 1, N'search', N'Buscar')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (44, 2, N'search', N'Search')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (45, 1, N'name', N'Nombre')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (46, 2, N'name', N'Name')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (47, 1, N'lastname', N'Apellido')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (48, 2, N'lastname', N'Last Name')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (49, 1, N'save', N'Guardar')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (50, 2, N'save', N'Save')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (51, 1, N'update', N'Actualizar')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (52, 2, N'update', N'Update')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (53, 1, N'new_pass', N'Nueva contraseña')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (54, 2, N'new_pass', N'New password')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (55, 1, N'personal_data', N'Datos personales')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (56, 2, N'personal_data', N'Personal data')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (57, 1, N'error', N'Hubo un error')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (58, 2, N'error', N'There was an error')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (59, 1, N'add_user', N'Agregar usuario')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (60, 2, N'add_user', N'Add user')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (61, 1, N'role', N'Rol')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (62, 2, N'role', N'Role')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (63, 1, N'delete', N'Eliminar')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (64, 2, N'delete', N'Delete')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (65, 1, N'date', N'Fecha')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (66, 2, N'date', N'Date')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (67, 1, N'title', N'Titulo')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (68, 2, N'title', N'Title')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (69, 1, N'description', N'Descripcion')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (70, 2, N'description', N'Description')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (71, 1, N'type', N'Tipo')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (72, 2, N'type', N'Type')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (73, 1, N'valoration', N'Valoracion')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (74, 2, N'valoration', N'Valoration')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (75, 1, N'patents', N'Patentes')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (76, 2, N'patents', N'Patents')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (77, 1, N'add', N'Agregar')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (78, 2, N'add', N'Add')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (79, 1, N'edit', N'Editar')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (80, 2, N'edit', N'Edit')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (81, 1, N'incorrect_data', N'Datos incorrectos')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (82, 2, N'incorrect_data', N'Incorrect data')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (83, 1, N'emblem', N'Emblema')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (84, 2, N'emblem', N'Emblem')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (85, 1, N'recognized', N'Reconocido')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (86, 2, N'recognized', N'Recognized')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (87, 1, N'recognize_create_success', N'El reconocimiento fue creado con exito!')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (88, 2, N'recognize_create_success', N'The recognize was created successfuly!')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (89, 1, N'see_recognize', N'Ver reconocimiento')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (90, 2, N'see_recognize', N'See recognize')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (91, 1, N'last_recognizes', N'Los ultimos reconocimientos')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (92, 2, N'last_recognizes', N'The last recognizes')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (93, 1, N'boss', N'Jefe')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (94, 2, N'boss', N'Boss')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (95, 1, N'suggest', N'Sugerir')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (96, 2, N'suggest', N'Suggest')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (97, 1, N'experience_sent', N'Has recibido un reconocimiento!')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (98, 2, N'experience_sent', N'You have received a recognize!')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (99, 1, N'sent', N'Enviados')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (100, 2, N'sent', N'Sent')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (101, 1, N'received', N'Recibidos')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (102, 2, N'received', N'Received')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (103, 1, N'my_objectives', N'Mis objetivos')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (104, 2, N'my_objectives', N'My objectives')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (105, 1, N'sector_objectives', N'Objetivos del sector')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (106, 2, N'sector_objectives', N'Sectors objetctives')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (107, 1, N'finalize', N'Finalizar')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (108, 2, N'finalize', N'Finalize')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (109, 1, N'not_finalized', N'No finalizado')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (110, 2, N'not_finalized', N'Not finalized')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (111, 1, N'assign_new', N'< Asignarse nuevo <')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (112, 2, N'assign_new', N'< Assign new <')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (113, 1, N'objective', N'Objetivo')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (114, 2, N'objective', N'Objective')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (115, 1, N'pick_valid_date', N'Elija una fecha correcta')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (116, 2, N'pick_valid_date', N'Pick a valid date')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (117, 1, N'close_before', N'Cerrar antes de')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (118, 2, N'close_before', N'Close before')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (119, 1, N'employee_assigned', N'Empleado asignado')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (120, 2, N'employee_assigned', N'Assigned employee')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (121, 1, N'level', N'Nivel')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (122, 2, N'level', N'Level')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (123, 1, N'see_detail', N'Ver detalle')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (124, 2, N'see_detail', N'View detail')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (125, 1, N'open', N'Abierto')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (126, 2, N'open', N'Open')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (127, 1, N'closed', N'Cerrado')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (128, 2, N'closed', N'Closed')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (129, 1, N'manage', N'Gestionar')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (130, 2, N'manage', N'Manage')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (131, 1, N'open_objectives', N'Objetivos abiertos')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (132, 2, N'open_objectives', N'Open objectives')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (133, 1, N'closed_objectives', N'Objetivos cerrados')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (134, 2, N'closed_objectives', N'Closed objectives')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (135, 1, N'objective_taken', N'El objetivo ya tiene un usuario asignado')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (136, 2, N'objective_taken', N'The objective already has a user')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (137, 1, N'archive', N'Archivar')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (138, 2, N'archive', N'Archive')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (139, 1, N'cant_recognize_myself', N'No te podes reconocer a vos mismo')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (140, 2, N'cant_recognize_myself', N'You can''t recognize yourself')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (141, 1, N'cant_delete_my_family', N'No podes eliminar tu propia familia')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (142, 2, N'cant_delete_my_family', N'You can''t delete your own family')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (143, 1, N'position', N'Puesto')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (144, 2, N'position', N'Position')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (145, 1, N'user', N'Usuario')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (146, 2, N'user', N'User')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (147, 1, N'reward', N'Reconocimiento')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (148, 2, N'reward', N'Reward')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (149, 1, N'created', N'Creado')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (150, 2, N'created', N'Created')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (151, 1, N'updated', N'Actualizado')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (152, 2, N'updated', N'Updated')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (153, 1, N'deleted', N'Eliminado')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (154, 2, N'deleted', N'Deleted')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (155, 1, N'appreciation', N'Valoracion')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (156, 2, N'appreciation', N'Appreciation')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (157, 1, N'families', N'Familias')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (158, 2, N'families', N'Families')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (159, 1, N'emblems', N'Emblemas')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (160, 2, N'emblems', N'Emblems')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (161, 1, N'sectors', N'Sectores')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (162, 2, N'sectors', N'Sectors')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (163, 1, N'positions', N'Puestos')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (164, 2, N'positions', N'Positions')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (165, 1, N'rewards', N'Reconocimientos')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (166, 2, N'rewards', N'Rewards')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (167, 1, N'old_pass', N'Antigua contraseña')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (168, 2, N'old_pass', N'Old password')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (169, 1, N'date_creation', N'Fecha creacion')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (170, 2, N'date_creation', N'Date creation')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (173, 1, N'date_close', N'Fecha cierre')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (174, 2, N'date_close', N'Date close')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (175, 1, N'manage_family', N'Gestionar familia')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (176, 2, N'manage_family', N'Manage family')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (177, 1, N'filter', N'Filtrar')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (178, 2, N'filter', N'Filter')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (179, 1, N'recognizer', N'Reconocedor')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (180, 2, N'recognizer', N'Recognizer')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (181, 1, N'select', N'Seleccionar')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (182, 2, N'select', N'Select')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (183, 1, N'enter_date', N'Fecha ingreso')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (184, 2, N'enter_date', N'Enter date')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (185, 1, N'please_add_level', N'Por favor, ingresa un nivel')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (186, 2, N'please_add_level', N'Please, add a level')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (187, 1, N'please_add_position', N'Por favor, ingresa un puesto disponible')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (188, 2, N'please_add_position', N'Please, add anavailable position')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (189, 1, N'please_add_employee', N'Por favor, agrega un empleado')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (190, 2, N'please_add_employee', N'Please, add an employee')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (191, 1, N'name_already_used', N'El nombre ya esta en uso')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (192, 2, N'name_already_used', N'Name already used')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (193, 1, N'help', N'Ayuda')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (194, 2, N'help', N'Help')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (195, 1, N'new_objective', N'Objetivo nuevo')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (196, 2, N'new_objective', N'New objective')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (197, 1, N'export_report', N'Exportar reporte')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (198, 2, N'export_report', N'Export report')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (199, 1, N'telephone', N'Telefono')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (200, 2, N'telephone', N'Telephone')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (201, 1, N'address', N'Direccion')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (202, 2, N'address', N'Address')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (204, 1, N'zipcode', N'Codigo Postal')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (205, 2, N'zipcode', N'Zip Code')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (206, 1, N'mail', N'Correo')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (208, 1, N'assign', N'Asignar')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (209, 2, N'assign', N'Assign')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (210, 1, N'close', N'Cerrar')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (211, 2, N'close', N'Close')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (212, 1, N'unassign', N'Desasignar')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (214, 2, N'unassign', N'Unassign')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (215, 1, N'branches', N'Sucursales')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (216, 2, N'branches', N'Branches')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (217, 1, N'assignedBranches', N'Sucursales Asignadas')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (218, 2, N'assignedBranches', N'Assigned Branches')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (219, 1, N'warehouses', N'Depositos')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (222, 2, N'warehouses', N'Warehouses')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (223, 1, N'assignedWarehosues', N'Depositos Asignados')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (224, 1, N'products', N'Productos')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (225, 2, N'products', N'Products')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (226, 1, N'products_to_add', N'Productos a agregar')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (228, 2, N'products_to_add', N'Products to add')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (238, 1, N'no_warehouse_found', N'Usted no esta asignado a un deposito')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (241, 2, N'no_warehouse_found', N'You are not assigned to a warehouse')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (242, 1, N'no_branch_found', N'Usted no esta asignado a una sucursal')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (243, 2, N'no_branch_found', N'You are not assigned to a branch')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (244, 1, N'choose', N'Elegir')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (245, 2, N'choose', N'Choose')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1231, 1, N'set_up', N'Configurar')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1232, 2, N'set_up', N'Set up')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1233, 1, N'wrong_warehouse', N'Usted no esta asignado a este deposito')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1234, 2, N'wrong_warehouse', N'You are not assigned to this warehouse')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1235, 1, N'wrong_building', N'Usted no esta asignado a este edificio')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1236, 2, N'wrong_building', N'You are not assigned to this building')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1237, 1, N'wrong_branch', N'Usted no esta assignado a esta sucursal')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1238, 2, N'wrong_branch', N'You are not assigned to this branch')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1243, 1, N'wrong_config', N'Error en configuracion. Contacte administrador')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1245, 2, N'wrong_config', N'Configuration error. Contact administrator')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1246, 1, N'remove', N'Remover')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1247, 2, N'remove', N'Remove')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1248, 1, N'remove_product', N'Remover Producto')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1249, 2, N'remove_product', N'Remove Product')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1250, 1, N'create_client', N'Alta Cliente')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1251, 2, N'create_client', N'Create Client')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1252, 1, N'member', N'Socio')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1253, 2, N'member', N'Member')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1254, 1, N'choose_sale', N'Elegir Venta')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1255, 2, N'choose_sale', N'Choose Sale')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1256, 1, N'assign_complaint', N'Asignar Queja')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1257, 2, N'assign_complaint', N'Assign Complaint')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1258, 1, N'complete_order', N'Completar Pedido')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1259, 2, N'complete_order', N'Complete Order')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1260, 1, N'create_vendor', N'Alta Proveedor')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1261, 2, N'create_vendor', N'Create Vendor')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1262, 1, N'vendor', N'Proveedor')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1263, 2, N'vendor', N'Vendor')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1264, 1, N'search_vendor', N'Buscar Proveedor')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1265, 2, N'search_vendor', N'Search Vendor')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2170, 1, N'street', N'Calle')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2171, 2, N'street', N'Street')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2172, 1, N'city', N'Localidad')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2173, 2, N'city', N'City')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2174, 1, N'state', N'Provincia')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2175, 2, N'state', N'State')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2176, 1, N'country', N'Pais')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2177, 2, N'country', N'Country')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3170, 1, N'add_to_cart', N'Agregar al Carrito')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3171, 2, N'add_to_cart', N'Add to Cart')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3172, 1, N'empty_cart', N'Vaciar Carrito')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3173, 2, N'empty_cart', N'Empty Cart')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3176, 1, N'add_local_pickup', N'Agregar al Retiro Local')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3178, 2, N'add_local_pickup', N'Add to Local Pickup')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3180, 1, N'remove_local_pickup', N'Remover del Retiro Local')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3181, 2, N'remove_local_pickup', N'Remove from Local Pickup')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3182, 1, N'empty_local_pickup', N'Vaciar Retiro Local')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3184, 2, N'empty_local_pickup', N'Empty Local Pickup')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3185, 1, N'dispatch_delivery', N'Despachar Envio')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3186, 2, N'dispatch_delivery', N'Dispatch Delivery')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3187, 1, N'confirm_reception', N'Confirmar Recepcion')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3188, 2, N'confirm_reception', N'Confirm Reception')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3329, 1, N'building', N'Edificio')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3330, 2, N'building', N'Building')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3331, 1, N'employee', N'Empleado')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3332, 2, N'employee', N'Employee')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3333, 1, N'make_sale', N'Realizar Venta')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3335, 2, N'make_sale', N'Make Sale')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3336, 1, N'search_sale', N'Buscar Venta')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3337, 2, N'search_sale', N'Search Sale')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3338, 1, N'create_complaint', N'Crear Queja')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3339, 2, N'create_complaint', N'Create Complaint')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3340, 1, N'cancel_sale', N'Cancelar Venta')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3341, 2, N'cancel_sale', N'Cancel Sale')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3342, 1, N'make_order_vendor', N'Realizar Pedido Proveedor')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3343, 2, N'make_order_vendor', N'Make Order Vendor')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3344, 1, N'register_products_entry', N'Registrar Entrada de Productos')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3345, 2, N'register_products_entry', N'Register Products Entry')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3346, 1, N'penalize_vendor', N'Penalizar Proveedor')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3347, 2, N'penalize_vendor', N'Penalize Vendor')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3348, 1, N'check_inventory', N'Ver Inventario')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3349, 2, N'check_inventory', N'Check Inventory')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3350, 1, N'receive_payment', N'Recibir Pago')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3351, 2, N'receive_payment', N'Receive Payment')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3352, 1, N'check_deliveries', N'Ver Envios')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3353, 2, N'check_deliveries', N'Check Deliveries')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3357, 1, N'receive_order_deposit', N'Recepcionar Pedido Deposito')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3358, 2, N'receive_order_deposit', N'Receive Order Deposit')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3359, 1, N'make_order_deposit', N'Realizar Pedido Deposito')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3361, 2, N'make_order_deposit', N'Make Order Deposit')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3362, 1, N'all', N'Todos')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3363, 2, N'all', N'All')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3364, 1, N'configure_building', N'Configurar Edificio')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3365, 2, N'configure_building', N'Configure Building')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3366, 1, N'type_building', N'Tipo Edificio')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3367, 2, N'type_building', N'Building Type')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3368, 1, N'deposit', N'Deposito')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3369, 2, N'deposit', N'Deposit')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3370, 1, N'branch', N'Sucursal')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3371, 2, N'branch', N'Branch')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3372, 1, N'create_employee', N'Crear Empleado')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3373, 2, N'create_employee', N'Create Employee')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3374, 1, N'modify_employee', N'Modificar Empleado')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3375, 2, N'modify_employee', N'Modify Employee')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3376, 1, N'delete_employee', N'Borrar Empleado')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3377, 2, N'delete_employee', N'Delete Employee')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3378, 1, N'manage_employees', N'Gestionar Empleados')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3379, 2, N'manage_employees', N'Manage Employees')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3380, 1, N'create', N'Crear')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3381, 2, N'create', N'Create')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3382, 1, N'modify', N'Modificar')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3383, 2, N'modify', N'Modify')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3384, 2, N'mail', N'Mail')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3385, 1, N'job', N'Puesto')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3386, 2, N'job', N'Job')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3387, 1, N'dni', N'DNI')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3389, 2, N'dni', N'SSN')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3390, 1, N'question_delete', N'¿Está seguro que desea eliminar al')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3393, 2, N'question_delete', N'Are you sure that you want to delete the')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3396, 1, N'confirm_delete', N'Confirmacion de Eliminacion')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3397, 2, N'confirm_delete', N'Confirm Deletion')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3398, 1, N'blocked', N'Bloqueado')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3399, 2, N'blocked', N'Blocked')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3400, 1, N'amount_errors', N'Cantidad de Errores')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3401, 2, N'amount_errors', N'Amount of Errors')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3402, 1, N'modify_vendor', N'Modificar Proveedor')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3403, 2, N'modify_vendor', N'Modify Vendor')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3404, 1, N'delete_vendor', N'Borrar Proveedor')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3405, 2, N'delete_vendor', N'Delete Vendor')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3406, 1, N'restore_vendor', N'Restaurar Proveedor')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3407, 2, N'restore_vendor', N'Restore Vendor')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3408, 1, N'check_penalizations', N'Ver Penalizaciones')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3409, 2, N'check_penalizations', N'Check Penalizations')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3410, 1, N'manage_vendors', N'Gestionar Proveedores')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3411, 2, N'manage_vendors', N'Manage Vendors')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3412, 1, N'vendor_no_versions', N'Este proveedor no cuenta con versiones anteriores')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3413, 2, N'vendor_no_versions', N'This vendor doesn''t have prior versions')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3415, 1, N'missing_products', N'Productos faltantes')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3416, 2, N'missing_products', N'Missing products')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3417, 1, N'damaged_products', N'Productos dañados')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3418, 2, N'damaged_products', N'Damaged products')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3419, 1, N'incorrect_products', N'Productos incorrectos')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3420, 2, N'incorrect_products', N'Incorrect products')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3421, 1, N'late_delivery', N'Entrega tardia')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3422, 2, N'late_delivery', N'Late delivery')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3424, 1, N'no_delivery', N'Entrega no realizada')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3425, 2, N'no_delivery', N'Delivery not done')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3426, 1, N'complaint', N'Queja')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3427, 2, N'complaint', N'Complaint')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3428, 1, N'question_penalize', N'¿Está seguro que desea penalizar a ')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3429, 2, N'question_penalize', N'Are you sure you want to penalize')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3430, 1, N'motive', N'Motivo')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3431, 2, N'motive', N'Motive')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3432, 1, N'confirm_penalization', N'Confirmacion de Penalizacion')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3434, 2, N'confirm_penalization', N'Confirm Penalization ')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3435, 1, N'success_penalization', N'Proveedor penalizado con exito')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3436, 2, N'success_penalization', N'Vendor penalized successfully')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3437, 1, N'success', N'Éxito')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3438, 2, N'success', N'Success')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3439, 1, N'code', N'Codigo')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3440, 2, N'code', N'Code')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3441, 1, N'price', N'Precio')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3442, 2, N'price', N'Price')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3443, 1, N'amount_buy', N'Cantidad a Comprar')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3444, 2, N'amount_buy', N'Amount to Buy')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3445, 1, N'total_product', N'Total del Producto')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3446, 2, N'total_product', N'Product Total')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3447, 1, N'total', N'Total')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3448, 2, N'total', N'Total')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3449, 1, N'add_products', N'Agregar Productos')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3450, 2, N'add_products', N'Add Products')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3451, 1, N'finish_sale', N'Completar Venta')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3452, 2, N'finish_sale', N'Finish Sale')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3453, 1, N'stock', N'Stock')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3454, 2, N'stock', N'Stock')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3456, 1, N'please_add_products', N'Por favor, agregue productos antes de finalizar la venta')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3457, 2, N'please_add_products', N'Please, add products before finishing the sale')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3458, 1, N'installment', N'Cuota')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3459, 2, N'installment', N'Installment')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3461, 1, N'installments', N'Cuotas')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3463, 2, N'installments', N'installments')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3464, 1, N'select_client', N'Seleccione a un cliente')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3465, 2, N'select_client', N'Select a client')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3467, 1, N'initiated', N'Iniciado')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3468, 2, N'initiated', N'Initiated')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3469, 1, N'discount', N'Descuento')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3470, 2, N'discount', N'Discount')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3471, 1, N'branch_takeaway', N'Retiro en Local')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3472, 2, N'branch_takeaway', N'Take away from Branch')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3473, 1, N'delivery_city', N'Envio a Ciudad')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3474, 2, N'delivery_city', N'City Delivery')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3475, 1, N'delivery_province', N'Envio a Provincia')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3477, 2, N'delivery_province', N'Province Delivery')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3478, 1, N'delivery_country', N'Envio a Pais ')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3479, 2, N'delivery_country', N'Country Delivery')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3480, 1, N'amount_takeaway', N'Cantidad a Retirar')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3481, 2, N'amount_takeaway', N'Amount to Take Away')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3482, 1, N'cash', N'Efectivo')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3483, 2, N'cash', N'Cash')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3484, 1, N'debit', N'Debito')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3485, 2, N'debit', N'Debit')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3486, 1, N'credit', N'Credito')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3487, 2, N'credit', N'Credit')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3488, 1, N'search_client', N'Buscar Cliente')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3489, 2, N'search_client', N'Search Client')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3490, 1, N'branch_delivery', N'Envio Local')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3491, 2, N'branch_delivery', N'Branch Delivery')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3492, 1, N'client', N'Cliente')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3493, 2, N'client', N'Client')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3494, 1, N'delivery', N'Entrega')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3495, 2, N'delivery', N'Delivery')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3498, 1, N'payment_method', N'Metodo de Pago')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3499, 2, N'payment_method', N'Payment Method')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3500, 1, N'yes', N'Si')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3501, 2, N'yes', N'Yes')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3502, 1, N'no', N'No')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3503, 2, N'no', N'No')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3504, 1, N'add_address', N'Agregar Direccion')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3505, 2, N'add_address', N'Add Address')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3506, 1, N'success_sale', N'Venta creada exitosamente')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3507, 2, N'success_sale', N'Sale created successfully')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3508, 1, N'status', N'Estado')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3509, 2, N'status', N'Status')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3510, 1, N'product', N'Producto')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3511, 2, N'product', N'Product')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3512, 1, N'cost', N'Costo')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3513, 2, N'cost', N'Cost')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3514, 1, N'amount', N'Cantidad')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3515, 2, N'amount', N'Amount')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3516, 1, N'total_detail', N'Total Detalle')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3517, 2, N'total_detail', N'Total Detail')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3518, 1, N'product_bad_condition', N'El producto llegó en mal estado')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3520, 2, N'product_bad_condition', N'The product arrived in bad condition')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3521, 1, N'product_not_desired', N'El producto no fue el deseado')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3522, 2, N'product_not_desired', N'The product was not the desired one')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3523, 1, N'sale_no_products', N'Esta venta no contiene productos')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3524, 2, N'sale_no_products', N'This sale has no products')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3526, 1, N'loss', N'Perdida')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3527, 2, N'loss', N'Loss')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3528, 1, N'devolution', N'Devolucion')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3529, 2, N'devolution', N'Devolution')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3530, 1, N'choose_complaint', N'Elegir Queja')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3531, 2, N'choose_complaint', N'Choose Complaint')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3532, 1, N'please_positive_number', N'Por favor, ingrese un numero positivo')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3533, 2, N'please_positive_number', N'Please, input a positive number')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3534, 1, N'please_positive_number_or_less', N'Ingrese un valor positivo igual o menor a la cantidad a entrar')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3535, 2, N'please_positive_number_or_less', N'Input a positive number or less than the amount to entry')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3536, 1, N'question_cancel_sale', N'Esta seguro que desea cancelar la venta?')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3538, 2, N'question_cancel_sale', N'Are you sure you want to cancel the sale?')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3539, 1, N'confirmation', N'Confirmacion')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3540, 2, N'confirmation', N'Confirmation')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3541, 1, N'finish_order', N'Completar Pedido')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3542, 2, N'finish_order', N'Finish Order')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3778, 1, N'family', N'Familia')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3779, 2, N'family', N'Family')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3782, 1, N'cashier', N'Banco')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3783, 2, N'cashier', N'Cashier')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3784, 1, N'delivery_receptions', N'Envios y Recepciones')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3785, 2, N'delivery_receptions', N'Deliveries and Receptions')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3786, 1, N'admin', N'Administrador')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3787, 2, N'admin', N'Administrator')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3789, 1, N'check_complaints', N'Ver Quejas')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3790, 2, N'check_complaints', N'Check Complaints')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3791, 1, N'inactive_user', N'El usuario se encuentra inactivo, contacte al administrador')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3792, 2, N'inactive_user', N'User is inactive, please contact your administrator')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4757, 1, N'dv_restored', N'Los digitos verificadores han sido restaurados')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4759, 2, N'dv_restored', N'The verifier digits has been restored')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (9116, 1, N'delete_language', N'¿Está seguro de querer eliminar el idioma')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (9117, 2, N'delete_language', N'Are you sure you want to delete the language')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (9607, 1, N'warning', N'Precaucion')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (9608, 2, N'warning', N'Warning')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (10097, 1, N'admin_config', N'Administrador - Configuracion')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (10098, 2, N'admin_config', N'Administrator - Configuration')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (10099, 1, N'admin_manage', N'Administrador - Gestion')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (10101, 2, N'admin_manage', N'Administrator - Manage')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (10102, 1, N'cash_register', N'Caja Registradora')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (10103, 2, N'cash_register', N'Cash Register')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (10352, 2, N'assignedWarehosues', N'Assigned Warehouses')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12082, 1, N'manage_deposits', N'Gestionar Depositos')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12083, 2, N'manage_deposits', N'Manage Deposits')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12332, 45, N'language', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12333, 45, N'bitacore', N'ROERT')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12334, 45, N'username', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12335, 45, N'password', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12336, 45, N'login', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12337, 45, N'updateDV', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12338, 45, N'employees', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12339, 45, N'rest_dv', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12340, 45, N'restore', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12341, 45, N'bkp_done', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12342, 45, N'restore_done', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12343, 45, N'login_failed', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12344, 45, N'login_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12345, 45, N'logout_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12346, 45, N'notification', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12347, 45, N'dvh_table', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12348, 45, N'error_row', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12349, 45, N'dvv_table', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12350, 45, N'error_contact_admin', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12351, 45, N'recognize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12352, 45, N'see_profile', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12353, 45, N'search', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12354, 45, N'name', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12355, 45, N'lastname', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12356, 45, N'save', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12357, 45, N'update', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12358, 45, N'new_pass', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12359, 45, N'personal_data', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12360, 45, N'error', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12361, 45, N'add_user', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12362, 45, N'role', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12363, 45, N'delete', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12364, 45, N'date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12365, 45, N'title', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12366, 45, N'description', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12367, 45, N'type', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12368, 45, N'valoration', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12369, 45, N'patents', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12370, 45, N'add', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12371, 45, N'edit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12372, 45, N'incorrect_data', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12373, 45, N'emblem', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12374, 45, N'recognized', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12375, 45, N'recognize_create_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12376, 45, N'see_recognize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12377, 45, N'last_recognizes', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12378, 45, N'boss', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12379, 45, N'suggest', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12380, 45, N'experience_sent', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12381, 45, N'sent', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12382, 45, N'received', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12383, 45, N'my_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12384, 45, N'sector_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12385, 45, N'finalize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12386, 45, N'not_finalized', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12387, 45, N'assign_new', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12388, 45, N'objective', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12389, 45, N'pick_valid_date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12390, 45, N'close_before', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12391, 45, N'employee_assigned', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12392, 45, N'level', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12393, 45, N'see_detail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12394, 45, N'open', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12395, 45, N'closed', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12396, 45, N'manage', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12397, 45, N'open_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12398, 45, N'closed_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12399, 45, N'objective_taken', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12400, 45, N'archive', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12401, 45, N'cant_recognize_myself', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12402, 45, N'cant_delete_my_family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12403, 45, N'position', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12404, 45, N'user', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12405, 45, N'reward', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12406, 45, N'created', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12407, 45, N'updated', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12408, 45, N'deleted', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12409, 45, N'appreciation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12410, 45, N'families', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12411, 45, N'emblems', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12412, 45, N'sectors', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12413, 45, N'positions', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12414, 45, N'rewards', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12415, 45, N'old_pass', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12416, 45, N'date_creation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12417, 45, N'date_close', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12418, 45, N'manage_family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12419, 45, N'filter', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12420, 45, N'recognizer', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12421, 45, N'select', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12422, 45, N'enter_date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12423, 45, N'please_add_level', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12424, 45, N'please_add_position', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12425, 45, N'please_add_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12426, 45, N'name_already_used', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12427, 45, N'help', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12428, 45, N'new_objective', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12429, 45, N'export_report', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12430, 45, N'telephone', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12431, 45, N'address', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12432, 45, N'zipcode', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12433, 45, N'mail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12434, 45, N'assign', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12435, 45, N'close', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12436, 45, N'unassign', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12437, 45, N'branches', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12438, 45, N'assignedBranches', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12439, 45, N'warehouses', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12440, 45, N'assignedWarehosues', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12441, 45, N'products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12442, 45, N'products_to_add', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12443, 45, N'no_warehouse_found', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12444, 45, N'no_branch_found', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12445, 45, N'choose', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12446, 45, N'set_up', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12447, 45, N'wrong_warehouse', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12448, 45, N'wrong_building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12449, 45, N'wrong_branch', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12450, 45, N'wrong_config', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12451, 45, N'remove', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12452, 45, N'remove_product', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12453, 45, N'create_client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12454, 45, N'member', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12455, 45, N'choose_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12456, 45, N'assign_complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12457, 45, N'complete_order', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12458, 45, N'create_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12459, 45, N'vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12460, 45, N'search_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12461, 45, N'street', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12462, 45, N'city', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12463, 45, N'state', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12464, 45, N'country', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12465, 45, N'add_to_cart', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12466, 45, N'empty_cart', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12467, 45, N'add_local_pickup', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12468, 45, N'remove_local_pickup', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12469, 45, N'empty_local_pickup', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12470, 45, N'dispatch_delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12471, 45, N'confirm_reception', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12472, 45, N'building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12473, 45, N'employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12474, 45, N'make_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12475, 45, N'search_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12476, 45, N'create_complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12477, 45, N'cancel_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12478, 45, N'make_order_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12479, 45, N'register_products_entry', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12480, 45, N'penalize_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12481, 45, N'check_inventory', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12482, 45, N'receive_payment', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12483, 45, N'check_deliveries', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12484, 45, N'receive_order_deposit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12485, 45, N'make_order_deposit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12486, 45, N'all', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12487, 45, N'configure_building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12488, 45, N'type_building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12489, 45, N'deposit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12490, 45, N'branch', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12491, 45, N'create_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12492, 45, N'modify_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12493, 45, N'delete_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12494, 45, N'manage_employees', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12495, 45, N'create', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12496, 45, N'modify', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12497, 45, N'job', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12498, 45, N'dni', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12499, 45, N'question_delete', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12500, 45, N'confirm_delete', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12501, 45, N'blocked', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12502, 45, N'amount_errors', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12503, 45, N'modify_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12504, 45, N'delete_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12505, 45, N'restore_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12506, 45, N'check_penalizations', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12507, 45, N'manage_vendors', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12508, 45, N'vendor_no_versions', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12509, 45, N'missing_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12510, 45, N'damaged_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12511, 45, N'incorrect_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12512, 45, N'late_delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12513, 45, N'no_delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12514, 45, N'complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12515, 45, N'question_penalize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12516, 45, N'motive', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12517, 45, N'confirm_penalization', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12518, 45, N'success_penalization', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12519, 45, N'success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12520, 45, N'code', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12521, 45, N'price', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12522, 45, N'amount_buy', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12523, 45, N'total_product', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12524, 45, N'total', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12525, 45, N'add_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12526, 45, N'finish_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12527, 45, N'stock', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12528, 45, N'please_add_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12529, 45, N'installment', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12530, 45, N'installments', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12531, 45, N'select_client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12532, 45, N'initiated', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12533, 45, N'discount', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12534, 45, N'branch_takeaway', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12535, 45, N'delivery_city', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12536, 45, N'delivery_province', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12537, 45, N'delivery_country', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12538, 45, N'amount_takeaway', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12539, 45, N'cash', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12540, 45, N'debit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12541, 45, N'credit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12542, 45, N'search_client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12543, 45, N'branch_delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12544, 45, N'client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12545, 45, N'delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12546, 45, N'payment_method', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12547, 45, N'yes', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12548, 45, N'no', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12549, 45, N'add_address', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12550, 45, N'success_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12551, 45, N'status', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12552, 45, N'product', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12553, 45, N'cost', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12554, 45, N'amount', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12555, 45, N'total_detail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12556, 45, N'product_bad_condition', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12557, 45, N'product_not_desired', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12558, 45, N'sale_no_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12559, 45, N'loss', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12560, 45, N'devolution', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12561, 45, N'choose_complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12562, 45, N'please_positive_number', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12563, 45, N'please_positive_number_or_less', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12564, 45, N'question_cancel_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12565, 45, N'confirmation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12566, 45, N'finish_order', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12567, 45, N'family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12568, 45, N'cashier', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12569, 45, N'delivery_receptions', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12570, 45, N'admin', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12571, 45, N'check_complaints', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12572, 45, N'inactive_user', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12573, 45, N'dv_restored', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12574, 45, N'delete_language', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12575, 45, N'warning', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12576, 45, N'admin_config', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12577, 45, N'admin_manage', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12578, 45, N'cash_register', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12579, 45, N'manage_deposits', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12580, 46, N'language', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12581, 46, N'bitacore', N'ghjgjh')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12582, 46, N'username', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12583, 46, N'password', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12584, 46, N'login', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12585, 46, N'updateDV', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12586, 46, N'employees', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12587, 46, N'rest_dv', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12588, 46, N'restore', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12589, 46, N'bkp_done', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12590, 46, N'restore_done', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12591, 46, N'login_failed', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12592, 46, N'login_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12593, 46, N'logout_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12594, 46, N'notification', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12595, 46, N'dvh_table', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12596, 46, N'error_row', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12597, 46, N'dvv_table', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12598, 46, N'error_contact_admin', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12599, 46, N'recognize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12600, 46, N'see_profile', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12601, 46, N'search', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12602, 46, N'name', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12603, 46, N'lastname', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12604, 46, N'save', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12605, 46, N'update', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12606, 46, N'new_pass', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12607, 46, N'personal_data', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12608, 46, N'error', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12609, 46, N'add_user', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12610, 46, N'role', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12611, 46, N'delete', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12612, 46, N'date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12613, 46, N'title', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12614, 46, N'description', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12615, 46, N'type', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12616, 46, N'valoration', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12617, 46, N'patents', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12618, 46, N'add', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12619, 46, N'edit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12620, 46, N'incorrect_data', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12621, 46, N'emblem', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12622, 46, N'recognized', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12623, 46, N'recognize_create_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12624, 46, N'see_recognize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12625, 46, N'last_recognizes', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12626, 46, N'boss', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12627, 46, N'suggest', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12628, 46, N'experience_sent', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12629, 46, N'sent', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12630, 46, N'received', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12631, 46, N'my_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12632, 46, N'sector_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12633, 46, N'finalize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12634, 46, N'not_finalized', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12635, 46, N'assign_new', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12636, 46, N'objective', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12637, 46, N'pick_valid_date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12638, 46, N'close_before', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12639, 46, N'employee_assigned', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12640, 46, N'level', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12641, 46, N'see_detail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12642, 46, N'open', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12643, 46, N'closed', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12644, 46, N'manage', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12645, 46, N'open_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12646, 46, N'closed_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12647, 46, N'objective_taken', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12648, 46, N'archive', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12649, 46, N'cant_recognize_myself', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12650, 46, N'cant_delete_my_family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12651, 46, N'position', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12652, 46, N'user', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12653, 46, N'reward', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12654, 46, N'created', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12655, 46, N'updated', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12656, 46, N'deleted', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12657, 46, N'appreciation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12658, 46, N'families', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12659, 46, N'emblems', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12660, 46, N'sectors', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12661, 46, N'positions', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12662, 46, N'rewards', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12663, 46, N'old_pass', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12664, 46, N'date_creation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12665, 46, N'date_close', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12666, 46, N'manage_family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12667, 46, N'filter', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12668, 46, N'recognizer', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12669, 46, N'select', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12670, 46, N'enter_date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12671, 46, N'please_add_level', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12672, 46, N'please_add_position', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12673, 46, N'please_add_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12674, 46, N'name_already_used', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12675, 46, N'help', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12676, 46, N'new_objective', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12677, 46, N'export_report', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12678, 46, N'telephone', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12679, 46, N'address', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12680, 46, N'zipcode', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12681, 46, N'mail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12682, 46, N'assign', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12683, 46, N'close', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12684, 46, N'unassign', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12685, 46, N'branches', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12686, 46, N'assignedBranches', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12687, 46, N'warehouses', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12688, 46, N'assignedWarehosues', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12689, 46, N'products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12690, 46, N'products_to_add', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12691, 46, N'no_warehouse_found', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12692, 46, N'no_branch_found', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12693, 46, N'choose', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12694, 46, N'set_up', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12695, 46, N'wrong_warehouse', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12696, 46, N'wrong_building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12697, 46, N'wrong_branch', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12698, 46, N'wrong_config', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12699, 46, N'remove', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12700, 46, N'remove_product', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12701, 46, N'create_client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12702, 46, N'member', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12703, 46, N'choose_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12704, 46, N'assign_complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12705, 46, N'complete_order', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12706, 46, N'create_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12707, 46, N'vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12708, 46, N'search_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12709, 46, N'street', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12710, 46, N'city', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12711, 46, N'state', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12712, 46, N'country', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12713, 46, N'add_to_cart', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12714, 46, N'empty_cart', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12715, 46, N'add_local_pickup', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12716, 46, N'remove_local_pickup', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12717, 46, N'empty_local_pickup', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12718, 46, N'dispatch_delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12719, 46, N'confirm_reception', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12720, 46, N'building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12721, 46, N'employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12722, 46, N'make_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12723, 46, N'search_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12724, 46, N'create_complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12725, 46, N'cancel_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12726, 46, N'make_order_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12727, 46, N'register_products_entry', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12728, 46, N'penalize_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12729, 46, N'check_inventory', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12730, 46, N'receive_payment', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12731, 46, N'check_deliveries', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12732, 46, N'receive_order_deposit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12733, 46, N'make_order_deposit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12734, 46, N'all', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12735, 46, N'configure_building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12736, 46, N'type_building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12737, 46, N'deposit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12738, 46, N'branch', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12739, 46, N'create_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12740, 46, N'modify_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12741, 46, N'delete_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12742, 46, N'manage_employees', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12743, 46, N'create', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12744, 46, N'modify', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12745, 46, N'job', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12746, 46, N'dni', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12747, 46, N'question_delete', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12748, 46, N'confirm_delete', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12749, 46, N'blocked', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12750, 46, N'amount_errors', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12751, 46, N'modify_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12752, 46, N'delete_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12753, 46, N'restore_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12754, 46, N'check_penalizations', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12755, 46, N'manage_vendors', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12756, 46, N'vendor_no_versions', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12757, 46, N'missing_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12758, 46, N'damaged_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12759, 46, N'incorrect_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12760, 46, N'late_delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12761, 46, N'no_delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12762, 46, N'complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12763, 46, N'question_penalize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12764, 46, N'motive', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12765, 46, N'confirm_penalization', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12766, 46, N'success_penalization', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12767, 46, N'success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12768, 46, N'code', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12769, 46, N'price', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12770, 46, N'amount_buy', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12771, 46, N'total_product', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12772, 46, N'total', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12773, 46, N'add_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12774, 46, N'finish_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12775, 46, N'stock', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12776, 46, N'please_add_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12777, 46, N'installment', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12778, 46, N'installments', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12779, 46, N'select_client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12780, 46, N'initiated', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12781, 46, N'discount', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12782, 46, N'branch_takeaway', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12783, 46, N'delivery_city', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12784, 46, N'delivery_province', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12785, 46, N'delivery_country', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12786, 46, N'amount_takeaway', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12787, 46, N'cash', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12788, 46, N'debit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12789, 46, N'credit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12790, 46, N'search_client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12791, 46, N'branch_delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12792, 46, N'client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12793, 46, N'delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12794, 46, N'payment_method', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12795, 46, N'yes', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12796, 46, N'no', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12797, 46, N'add_address', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12798, 46, N'success_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12799, 46, N'status', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12800, 46, N'product', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12801, 46, N'cost', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12802, 46, N'amount', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12803, 46, N'total_detail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12804, 46, N'product_bad_condition', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12805, 46, N'product_not_desired', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12806, 46, N'sale_no_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12807, 46, N'loss', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12808, 46, N'devolution', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12809, 46, N'choose_complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12810, 46, N'please_positive_number', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12811, 46, N'please_positive_number_or_less', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12812, 46, N'question_cancel_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12813, 46, N'confirmation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12814, 46, N'finish_order', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12815, 46, N'family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12816, 46, N'cashier', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12817, 46, N'delivery_receptions', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12818, 46, N'admin', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12819, 46, N'check_complaints', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12820, 46, N'inactive_user', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12821, 46, N'dv_restored', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12822, 46, N'delete_language', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12823, 46, N'warning', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12824, 46, N'admin_config', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12825, 46, N'admin_manage', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12826, 46, N'cash_register', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (12827, 46, N'manage_deposits', N'')
GO
SET IDENTITY_INSERT [dbo].[control] OFF
GO
SET IDENTITY_INSERT [dbo].[cPedidoEstado] ON 
GO
INSERT [dbo].[cPedidoEstado] ([id], [nombre]) VALUES (1, N'Iniciado')
GO
INSERT [dbo].[cPedidoEstado] ([id], [nombre]) VALUES (2, N'Recibido')
GO
SET IDENTITY_INSERT [dbo].[cPedidoEstado] OFF
GO
SET IDENTITY_INSERT [dbo].[cTipoEntrega] ON 
GO
INSERT [dbo].[cTipoEntrega] ([id], [descripcion]) VALUES (1, N'branch_takeaway')
GO
INSERT [dbo].[cTipoEntrega] ([id], [descripcion]) VALUES (2, N'delivery_city')
GO
INSERT [dbo].[cTipoEntrega] ([id], [descripcion]) VALUES (3, N'delivery_province')
GO
INSERT [dbo].[cTipoEntrega] ([id], [descripcion]) VALUES (4, N'delivery_country')
GO
SET IDENTITY_INSERT [dbo].[cTipoEntrega] OFF
GO
SET IDENTITY_INSERT [dbo].[cVentaEstado] ON 
GO
INSERT [dbo].[cVentaEstado] ([id], [nombre]) VALUES (1, N'Pendiente de Pago')
GO
INSERT [dbo].[cVentaEstado] ([id], [nombre]) VALUES (2, N'Pagado')
GO
INSERT [dbo].[cVentaEstado] ([id], [nombre]) VALUES (3, N'Cancelado')
GO
INSERT [dbo].[cVentaEstado] ([id], [nombre]) VALUES (4, N'Con Perdidas')
GO
INSERT [dbo].[cVentaEstado] ([id], [nombre]) VALUES (5, N'Con Devoluciones')
GO
INSERT [dbo].[cVentaEstado] ([id], [nombre]) VALUES (6, N'Devuelto')
GO
INSERT [dbo].[cVentaEstado] ([id], [nombre]) VALUES (7, N'Perdido')
GO
INSERT [dbo].[cVentaEstado] ([id], [nombre]) VALUES (8, N'Con Perdidas y Devoluciones')
GO
INSERT [dbo].[cVentaEstado] ([id], [nombre]) VALUES (9, N'Devuelto con Perdidas')
GO
SET IDENTITY_INSERT [dbo].[cVentaEstado] OFF
GO
SET IDENTITY_INSERT [dbo].[deposito] ON 
GO
INSERT [dbo].[deposito] ([id], [nombre], [direccion], [mail], [codigoPostal], [telefono], [dvh], [activo]) VALUES (1, N'Almagro', N'Alem 253', N'almgaro@nsj.com', 1032, N'25671228', N'1697409460', 1)
GO
INSERT [dbo].[deposito] ([id], [nombre], [direccion], [mail], [codigoPostal], [telefono], [dvh], [activo]) VALUES (2, N'Recoleta', N'Roca 124', N'recolata@nsj.com', 1098, N'2571262', N'1275051092', 1)
GO
INSERT [dbo].[deposito] ([id], [nombre], [direccion], [mail], [codigoPostal], [telefono], [dvh], [activo]) VALUES (3, N'fghdfgdgf', N'ghdfg', N'fghdgf', 7856, N'787455', N'717695635', 0)
GO
INSERT [dbo].[deposito] ([id], [nombre], [direccion], [mail], [codigoPostal], [telefono], [dvh], [activo]) VALUES (4, N'ghjgjh', N'tyugjhgjh', N'tyu', 787, N'787', N'-692657947', 0)
GO
SET IDENTITY_INSERT [dbo].[deposito] OFF
GO
SET IDENTITY_INSERT [dbo].[deposito_producto] ON 
GO
INSERT [dbo].[deposito_producto] ([id], [idDeposito], [idProducto], [stock]) VALUES (1, 1, 1, 2)
GO
INSERT [dbo].[deposito_producto] ([id], [idDeposito], [idProducto], [stock]) VALUES (3, 1, 3, 7)
GO
INSERT [dbo].[deposito_producto] ([id], [idDeposito], [idProducto], [stock]) VALUES (4, 2, 1, 7)
GO
INSERT [dbo].[deposito_producto] ([id], [idDeposito], [idProducto], [stock]) VALUES (5, 2, 3, 7)
GO
INSERT [dbo].[deposito_producto] ([id], [idDeposito], [idProducto], [stock]) VALUES (6, 1, 4, 1)
GO
SET IDENTITY_INSERT [dbo].[deposito_producto] OFF
GO
SET IDENTITY_INSERT [dbo].[devolucion] ON 
GO
INSERT [dbo].[devolucion] ([id], [idSucursal], [idVenta], [idUsuario], [fecha]) VALUES (1, 1, 53, 4, CAST(N'2021-12-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[devolucion] ([id], [idSucursal], [idVenta], [idUsuario], [fecha]) VALUES (2, 1, 52, 4, CAST(N'2021-12-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[devolucion] ([id], [idSucursal], [idVenta], [idUsuario], [fecha]) VALUES (3, 1, 52, 4, CAST(N'2021-12-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[devolucion] ([id], [idSucursal], [idVenta], [idUsuario], [fecha]) VALUES (4, 1, 54, 4, CAST(N'2021-12-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[devolucion] ([id], [idSucursal], [idVenta], [idUsuario], [fecha]) VALUES (5, 1, 54, 4, CAST(N'2021-12-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[devolucion] ([id], [idSucursal], [idVenta], [idUsuario], [fecha]) VALUES (6, 1, 51, 4, CAST(N'2021-12-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[devolucion] ([id], [idSucursal], [idVenta], [idUsuario], [fecha]) VALUES (7, 1, 53, 4, CAST(N'2021-12-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[devolucion] ([id], [idSucursal], [idVenta], [idUsuario], [fecha]) VALUES (8, 1, 52, 4, CAST(N'2021-12-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[devolucion] ([id], [idSucursal], [idVenta], [idUsuario], [fecha]) VALUES (9, 1, 50, 4, CAST(N'2021-12-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[devolucion] ([id], [idSucursal], [idVenta], [idUsuario], [fecha]) VALUES (10, 1, 49, 4, CAST(N'2021-12-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[devolucion] ([id], [idSucursal], [idVenta], [idUsuario], [fecha]) VALUES (11, 1, 48, 4, CAST(N'2021-12-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[devolucion] ([id], [idSucursal], [idVenta], [idUsuario], [fecha]) VALUES (12, 1, 49, 4, CAST(N'2021-12-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[devolucion] ([id], [idSucursal], [idVenta], [idUsuario], [fecha]) VALUES (1002, 1, 46, 4, CAST(N'2021-12-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[devolucion] ([id], [idSucursal], [idVenta], [idUsuario], [fecha]) VALUES (1003, 1, 45, 4, CAST(N'2021-12-07T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[devolucion] OFF
GO
SET IDENTITY_INSERT [dbo].[devolucion_detalle] ON 
GO
INSERT [dbo].[devolucion_detalle] ([id], [idDevolucion], [idProducto], [cantidad]) VALUES (2, 3, 1, 1)
GO
INSERT [dbo].[devolucion_detalle] ([id], [idDevolucion], [idProducto], [cantidad]) VALUES (3, 4, 3, 1)
GO
INSERT [dbo].[devolucion_detalle] ([id], [idDevolucion], [idProducto], [cantidad]) VALUES (4, 5, 1, 7)
GO
INSERT [dbo].[devolucion_detalle] ([id], [idDevolucion], [idProducto], [cantidad]) VALUES (5, 6, 3, 2)
GO
INSERT [dbo].[devolucion_detalle] ([id], [idDevolucion], [idProducto], [cantidad]) VALUES (6, 7, 1, 5)
GO
INSERT [dbo].[devolucion_detalle] ([id], [idDevolucion], [idProducto], [cantidad]) VALUES (7, 8, 1, 1)
GO
INSERT [dbo].[devolucion_detalle] ([id], [idDevolucion], [idProducto], [cantidad]) VALUES (8, 9, 1, 3)
GO
INSERT [dbo].[devolucion_detalle] ([id], [idDevolucion], [idProducto], [cantidad]) VALUES (9, 10, 1, 2)
GO
INSERT [dbo].[devolucion_detalle] ([id], [idDevolucion], [idProducto], [cantidad]) VALUES (10, 11, 1, 1)
GO
INSERT [dbo].[devolucion_detalle] ([id], [idDevolucion], [idProducto], [cantidad]) VALUES (11, 12, 1, 1)
GO
INSERT [dbo].[devolucion_detalle] ([id], [idDevolucion], [idProducto], [cantidad]) VALUES (1002, 1002, 1, 1)
GO
INSERT [dbo].[devolucion_detalle] ([id], [idDevolucion], [idProducto], [cantidad]) VALUES (1003, 1003, 1, 2)
GO
SET IDENTITY_INSERT [dbo].[devolucion_detalle] OFF
GO
SET IDENTITY_INSERT [dbo].[direccion] ON 
GO
INSERT [dbo].[direccion] ([id], [idComprador], [calle], [localidad], [provincia], [pais], [codigoPostal], [activo]) VALUES (1, 1, N'Bella Vista 999', N'Merlo', N'Buenos Aires', N'Argentina', N'1722', 1)
GO
INSERT [dbo].[direccion] ([id], [idComprador], [calle], [localidad], [provincia], [pais], [codigoPostal], [activo]) VALUES (2, 1, N'Juan Robnerto 262', N'Moron', N'Buenos Aires', N'Argentina', N'1828', 1)
GO
SET IDENTITY_INSERT [dbo].[direccion] OFF
GO
SET IDENTITY_INSERT [dbo].[dvv] ON 
GO
INSERT [dbo].[dvv] ([id], [nombreTabla], [dvv]) VALUES (1, N'usuario', N'-943132234')
GO
INSERT [dbo].[dvv] ([id], [nombreTabla], [dvv]) VALUES (2, N'producto', N'-2092459432')
GO
INSERT [dbo].[dvv] ([id], [nombreTabla], [dvv]) VALUES (3, N'familia', N'970202579')
GO
INSERT [dbo].[dvv] ([id], [nombreTabla], [dvv]) VALUES (4, N'deposito', N'177661652')
GO
INSERT [dbo].[dvv] ([id], [nombreTabla], [dvv]) VALUES (5, N'sucursal', N'1615648807')
GO
SET IDENTITY_INSERT [dbo].[dvv] OFF
GO
SET IDENTITY_INSERT [dbo].[envio_deposito] ON 
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (1, 22, 1, 1, CAST(N'2021-11-23T20:09:06.000' AS DateTime), NULL, 2)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (2, 23, 1, 1, CAST(N'2021-11-23T20:10:18.000' AS DateTime), NULL, 2)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (3, 24, 1, 1, CAST(N'2021-11-23T20:10:46.000' AS DateTime), NULL, 2)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (4, 25, 1, 1, CAST(N'2021-11-23T20:17:54.000' AS DateTime), NULL, 2)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (5, 32, 1, 1, CAST(N'2021-11-23T23:39:03.000' AS DateTime), NULL, 2)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (6, 33, 1, 1, CAST(N'2021-11-23T23:40:04.000' AS DateTime), NULL, 2)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (8, 37, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (9, 38, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (10, 39, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (11, 40, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (12, 41, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (13, 42, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (14, 43, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (15, 44, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (16, 45, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (17, 46, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (18, 47, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (19, 50, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (20, 52, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (21, 53, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (22, 54, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (23, 55, 1, 1, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[envio_deposito] OFF
GO
SET IDENTITY_INSERT [dbo].[envio_deposito_detalle] ON 
GO
INSERT [dbo].[envio_deposito_detalle] ([id], [idVentaDetalle], [idDeposito]) VALUES (1, 23, 1)
GO
INSERT [dbo].[envio_deposito_detalle] ([id], [idVentaDetalle], [idDeposito]) VALUES (2, 25, 1)
GO
INSERT [dbo].[envio_deposito_detalle] ([id], [idVentaDetalle], [idDeposito]) VALUES (3, 30, 1)
GO
INSERT [dbo].[envio_deposito_detalle] ([id], [idVentaDetalle], [idDeposito]) VALUES (4, 32, 1)
GO
INSERT [dbo].[envio_deposito_detalle] ([id], [idVentaDetalle], [idDeposito]) VALUES (5, 34, 1)
GO
INSERT [dbo].[envio_deposito_detalle] ([id], [idVentaDetalle], [idDeposito]) VALUES (6, 36, 1)
GO
INSERT [dbo].[envio_deposito_detalle] ([id], [idVentaDetalle], [idDeposito]) VALUES (7, 38, 1)
GO
INSERT [dbo].[envio_deposito_detalle] ([id], [idVentaDetalle], [idDeposito]) VALUES (8, 40, 1)
GO
INSERT [dbo].[envio_deposito_detalle] ([id], [idVentaDetalle], [idDeposito]) VALUES (9, 42, 1)
GO
INSERT [dbo].[envio_deposito_detalle] ([id], [idVentaDetalle], [idDeposito]) VALUES (10, 44, 1)
GO
INSERT [dbo].[envio_deposito_detalle] ([id], [idVentaDetalle], [idDeposito]) VALUES (11, 46, 1)
GO
INSERT [dbo].[envio_deposito_detalle] ([id], [idVentaDetalle], [idDeposito]) VALUES (12, 49, 1)
GO
INSERT [dbo].[envio_deposito_detalle] ([id], [idVentaDetalle], [idDeposito]) VALUES (13, 53, 1)
GO
INSERT [dbo].[envio_deposito_detalle] ([id], [idVentaDetalle], [idDeposito]) VALUES (14, 55, 1)
GO
INSERT [dbo].[envio_deposito_detalle] ([id], [idVentaDetalle], [idDeposito]) VALUES (15, 56, 1)
GO
INSERT [dbo].[envio_deposito_detalle] ([id], [idVentaDetalle], [idDeposito]) VALUES (16, 59, 1)
GO
INSERT [dbo].[envio_deposito_detalle] ([id], [idVentaDetalle], [idDeposito]) VALUES (17, 60, 1)
GO
INSERT [dbo].[envio_deposito_detalle] ([id], [idVentaDetalle], [idDeposito]) VALUES (18, 63, 1)
GO
SET IDENTITY_INSERT [dbo].[envio_deposito_detalle] OFF
GO
SET IDENTITY_INSERT [dbo].[envio_sucursal] ON 
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (4, 17, 1, 1, CAST(N'2021-11-19T15:31:35.000' AS DateTime), NULL, 2)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (5, 18, 1, 1, CAST(N'2021-11-23T16:33:44.000' AS DateTime), NULL, 2)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (6, 19, 1, 1, CAST(N'2021-11-23T20:00:53.000' AS DateTime), NULL, 2)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (7, 20, 1, 1, CAST(N'2021-11-23T20:05:21.000' AS DateTime), NULL, 2)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (8, 21, 1, 1, CAST(N'2021-11-23T20:07:59.000' AS DateTime), NULL, 2)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (9, 22, 1, 1, CAST(N'2021-11-23T20:09:05.000' AS DateTime), NULL, 2)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (10, 23, 1, 1, CAST(N'2021-11-23T20:10:18.000' AS DateTime), NULL, 2)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (11, 24, 1, 1, CAST(N'2021-11-23T20:10:45.000' AS DateTime), NULL, 2)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (12, 25, 1, 1, CAST(N'2021-11-23T20:17:54.000' AS DateTime), NULL, 2)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (13, 31, 1, 1, CAST(N'2021-11-23T22:28:06.000' AS DateTime), NULL, 2)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (14, 32, 1, 1, CAST(N'2021-11-23T23:39:00.000' AS DateTime), NULL, 2)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (15, 33, 1, 1, CAST(N'2021-11-23T23:40:04.000' AS DateTime), NULL, 2)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (16, 34, 1, 1, CAST(N'2021-11-24T20:58:13.000' AS DateTime), NULL, 2)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (18, 38, 1, 1, CAST(N'2021-12-08T18:25:36.857' AS DateTime), NULL, 2)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (19, 39, 1, 1, CAST(N'2021-12-08T18:26:15.000' AS DateTime), CAST(N'2021-12-08T18:26:19.577' AS DateTime), 3)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (20, 40, 1, 1, CAST(N'2022-03-17T13:19:27.920' AS DateTime), CAST(N'2022-03-17T13:19:33.160' AS DateTime), 3)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (21, 41, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (22, 46, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (23, 58, 2, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (24, 59, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (25, 60, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (26, 61, 1, 1, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[envio_sucursal] OFF
GO
SET IDENTITY_INSERT [dbo].[envio_sucursal_detalle] ON 
GO
INSERT [dbo].[envio_sucursal_detalle] ([id], [idVentaDetalle], [idSucursal]) VALUES (1, 22, 1)
GO
INSERT [dbo].[envio_sucursal_detalle] ([id], [idVentaDetalle], [idSucursal]) VALUES (2, 24, 1)
GO
INSERT [dbo].[envio_sucursal_detalle] ([id], [idVentaDetalle], [idSucursal]) VALUES (3, 28, 1)
GO
INSERT [dbo].[envio_sucursal_detalle] ([id], [idVentaDetalle], [idSucursal]) VALUES (4, 29, 1)
GO
INSERT [dbo].[envio_sucursal_detalle] ([id], [idVentaDetalle], [idSucursal]) VALUES (5, 31, 1)
GO
INSERT [dbo].[envio_sucursal_detalle] ([id], [idVentaDetalle], [idSucursal]) VALUES (6, 33, 1)
GO
INSERT [dbo].[envio_sucursal_detalle] ([id], [idVentaDetalle], [idSucursal]) VALUES (7, 35, 1)
GO
INSERT [dbo].[envio_sucursal_detalle] ([id], [idVentaDetalle], [idSucursal]) VALUES (8, 37, 1)
GO
INSERT [dbo].[envio_sucursal_detalle] ([id], [idVentaDetalle], [idSucursal]) VALUES (9, 39, 1)
GO
INSERT [dbo].[envio_sucursal_detalle] ([id], [idVentaDetalle], [idSucursal]) VALUES (10, 41, 1)
GO
INSERT [dbo].[envio_sucursal_detalle] ([id], [idVentaDetalle], [idSucursal]) VALUES (11, 43, 1)
GO
INSERT [dbo].[envio_sucursal_detalle] ([id], [idVentaDetalle], [idSucursal]) VALUES (12, 45, 1)
GO
INSERT [dbo].[envio_sucursal_detalle] ([id], [idVentaDetalle], [idSucursal]) VALUES (13, 48, 1)
GO
INSERT [dbo].[envio_sucursal_detalle] ([id], [idVentaDetalle], [idSucursal]) VALUES (14, 52, 1)
GO
INSERT [dbo].[envio_sucursal_detalle] ([id], [idVentaDetalle], [idSucursal]) VALUES (15, 58, 1)
GO
INSERT [dbo].[envio_sucursal_detalle] ([id], [idVentaDetalle], [idSucursal]) VALUES (16, 62, 1)
GO
INSERT [dbo].[envio_sucursal_detalle] ([id], [idVentaDetalle], [idSucursal]) VALUES (17, 68, 1)
GO
INSERT [dbo].[envio_sucursal_detalle] ([id], [idVentaDetalle], [idSucursal]) VALUES (18, 69, 1)
GO
INSERT [dbo].[envio_sucursal_detalle] ([id], [idVentaDetalle], [idSucursal]) VALUES (19, 70, 1)
GO
INSERT [dbo].[envio_sucursal_detalle] ([id], [idVentaDetalle], [idSucursal]) VALUES (20, 71, 1)
GO
SET IDENTITY_INSERT [dbo].[envio_sucursal_detalle] OFF
GO
SET IDENTITY_INSERT [dbo].[familia] ON 
GO
INSERT [dbo].[familia] ([id], [nombre], [dvh]) VALUES (1, N'Deposito', N'-869636899')
GO
INSERT [dbo].[familia] ([id], [nombre], [dvh]) VALUES (2, N'Vendedor', N'90623187')
GO
INSERT [dbo].[familia] ([id], [nombre], [dvh]) VALUES (3, N'EnviosRecepciones', N'533418838')
GO
INSERT [dbo].[familia] ([id], [nombre], [dvh]) VALUES (4, N'Caja', N'2045232039')
GO
INSERT [dbo].[familia] ([id], [nombre], [dvh]) VALUES (5, N'Admin', N'1168927941')
GO
INSERT [dbo].[familia] ([id], [nombre], [dvh]) VALUES (7, N'Global', N'1797932041')
GO
SET IDENTITY_INSERT [dbo].[familia] OFF
GO
SET IDENTITY_INSERT [dbo].[familia_patente] ON 
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (36, 1, 3)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (38, 2, 2)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (39, 4, 4)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (40, 3, 5)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (41, 5, 1)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (42, 5, 9)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (43, 5, 10)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (44, 5, 11)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (49, 7, 1)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (50, 7, 2)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (51, 7, 3)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (52, 7, 4)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (53, 7, 5)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (57, 7, 9)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (58, 7, 10)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (59, 7, 11)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (60, 5, 2)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (61, 5, 3)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (62, 5, 4)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (63, 5, 5)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (67, 5, 9)
GO
SET IDENTITY_INSERT [dbo].[familia_patente] OFF
GO
SET IDENTITY_INSERT [dbo].[idioma] ON 
GO
INSERT [dbo].[idioma] ([id], [nombre], [activo]) VALUES (1, N'Castellano', 1)
GO
INSERT [dbo].[idioma] ([id], [nombre], [activo]) VALUES (2, N'English', 1)
GO
INSERT [dbo].[idioma] ([id], [nombre], [activo]) VALUES (44, N'YIUI', 0)
GO
INSERT [dbo].[idioma] ([id], [nombre], [activo]) VALUES (45, N'Portugues', 0)
GO
INSERT [dbo].[idioma] ([id], [nombre], [activo]) VALUES (46, N'fhgtfhg', 0)
GO
SET IDENTITY_INSERT [dbo].[idioma] OFF
GO
SET IDENTITY_INSERT [dbo].[pago] ON 
GO
INSERT [dbo].[pago] ([id], [idVenta], [montoCobrado], [vuelto]) VALUES (1, 33, 2938.2900, -61.7100)
GO
INSERT [dbo].[pago] ([id], [idVenta], [montoCobrado], [vuelto]) VALUES (2, 32, 2938.2900, 61.7100)
GO
INSERT [dbo].[pago] ([id], [idVenta], [montoCobrado], [vuelto]) VALUES (3, 10, 343.6600, 0.0000)
GO
INSERT [dbo].[pago] ([id], [idVenta], [montoCobrado], [vuelto]) VALUES (4, 15, 343.6600, 0.0000)
GO
INSERT [dbo].[pago] ([id], [idVenta], [montoCobrado], [vuelto]) VALUES (5, 51, 760.5100, 39.4900)
GO
INSERT [dbo].[pago] ([id], [idVenta], [montoCobrado], [vuelto]) VALUES (1004, 56, 1169.6300, 0.0000)
GO
INSERT [dbo].[pago] ([id], [idVenta], [montoCobrado], [vuelto]) VALUES (1005, 57, 504.2800, 0.0000)
GO
INSERT [dbo].[pago] ([id], [idVenta], [montoCobrado], [vuelto]) VALUES (1006, 58, 693.7600, 6.2400)
GO
INSERT [dbo].[pago] ([id], [idVenta], [montoCobrado], [vuelto]) VALUES (1007, 44, 2938.2900, 61.7100)
GO
INSERT [dbo].[pago] ([id], [idVenta], [montoCobrado], [vuelto]) VALUES (1008, 11, 343.6600, 0.0000)
GO
INSERT [dbo].[pago] ([id], [idVenta], [montoCobrado], [vuelto]) VALUES (1009, 41, 2938.2900, 61.7100)
GO
INSERT [dbo].[pago] ([id], [idVenta], [montoCobrado], [vuelto]) VALUES (1010, 39, 2938.2900, 61.7100)
GO
SET IDENTITY_INSERT [dbo].[pago] OFF
GO
SET IDENTITY_INSERT [dbo].[patente] ON 
GO
INSERT [dbo].[patente] ([id], [nombre]) VALUES (1, N'Admin')
GO
INSERT [dbo].[patente] ([id], [nombre]) VALUES (2, N'Sucursal')
GO
INSERT [dbo].[patente] ([id], [nombre]) VALUES (3, N'Deposito')
GO
INSERT [dbo].[patente] ([id], [nombre]) VALUES (4, N'Caja')
GO
INSERT [dbo].[patente] ([id], [nombre]) VALUES (5, N'EnviosRecepciones')
GO
INSERT [dbo].[patente] ([id], [nombre]) VALUES (9, N'BackUp')
GO
INSERT [dbo].[patente] ([id], [nombre]) VALUES (10, N'Bitacora')
GO
INSERT [dbo].[patente] ([id], [nombre]) VALUES (11, N'DigitoVerificador')
GO
SET IDENTITY_INSERT [dbo].[patente] OFF
GO
SET IDENTITY_INSERT [dbo].[pedido_deposito] ON 
GO
INSERT [dbo].[pedido_deposito] ([id], [idUsuario], [idSucursal], [fechaPedido], [fechaRecepcion], [idEstado]) VALUES (2, 4, 1, CAST(N'2021-12-20T21:56:18.000' AS DateTime), CAST(N'2021-12-21T00:44:49.043' AS DateTime), 2)
GO
INSERT [dbo].[pedido_deposito] ([id], [idUsuario], [idSucursal], [fechaPedido], [fechaRecepcion], [idEstado]) VALUES (3, 4, 1, CAST(N'2022-03-17T13:44:34.000' AS DateTime), CAST(N'2022-03-17T13:50:26.383' AS DateTime), 2)
GO
INSERT [dbo].[pedido_deposito] ([id], [idUsuario], [idSucursal], [fechaPedido], [fechaRecepcion], [idEstado]) VALUES (4, 4, 1, CAST(N'2022-03-17T13:51:38.000' AS DateTime), CAST(N'2022-03-17T13:52:09.190' AS DateTime), 2)
GO
INSERT [dbo].[pedido_deposito] ([id], [idUsuario], [idSucursal], [fechaPedido], [fechaRecepcion], [idEstado]) VALUES (5, 4, 1, CAST(N'2022-03-17T13:54:18.000' AS DateTime), CAST(N'2022-03-17T13:54:26.433' AS DateTime), 2)
GO
INSERT [dbo].[pedido_deposito] ([id], [idUsuario], [idSucursal], [fechaPedido], [fechaRecepcion], [idEstado]) VALUES (6, 4, 1, CAST(N'2022-03-17T18:12:13.000' AS DateTime), CAST(N'2022-03-17T18:12:33.247' AS DateTime), 2)
GO
SET IDENTITY_INSERT [dbo].[pedido_deposito] OFF
GO
SET IDENTITY_INSERT [dbo].[pedido_deposito_detalle] ON 
GO
INSERT [dbo].[pedido_deposito_detalle] ([id], [idPedidoDeposito], [idDeposito], [idProducto], [costoUnitario], [cantidad]) VALUES (3, 2, 1, 1, CAST(300.00 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[pedido_deposito_detalle] ([id], [idPedidoDeposito], [idDeposito], [idProducto], [costoUnitario], [cantidad]) VALUES (4, 2, 2, 1, CAST(300.00 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[pedido_deposito_detalle] ([id], [idPedidoDeposito], [idDeposito], [idProducto], [costoUnitario], [cantidad]) VALUES (5, 3, 1, 1, CAST(300.00 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[pedido_deposito_detalle] ([id], [idPedidoDeposito], [idDeposito], [idProducto], [costoUnitario], [cantidad]) VALUES (6, 4, 1, 1, CAST(300.00 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[pedido_deposito_detalle] ([id], [idPedidoDeposito], [idDeposito], [idProducto], [costoUnitario], [cantidad]) VALUES (7, 5, 1, 1, CAST(300.00 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[pedido_deposito_detalle] ([id], [idPedidoDeposito], [idDeposito], [idProducto], [costoUnitario], [cantidad]) VALUES (8, 6, 1, 1, CAST(300.00 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[pedido_deposito_detalle] ([id], [idPedidoDeposito], [idDeposito], [idProducto], [costoUnitario], [cantidad]) VALUES (9, 6, 1, 3, CAST(400.00 AS Decimal(14, 2)), 3)
GO
SET IDENTITY_INSERT [dbo].[pedido_deposito_detalle] OFF
GO
SET IDENTITY_INSERT [dbo].[pedido_proveedor] ON 
GO
INSERT [dbo].[pedido_proveedor] ([id], [idUsuario], [idProveedor], [idDeposito], [fechaPedido], [fechaRecepcion], [total], [idEstado]) VALUES (5, 4, 2, 1, CAST(N'2021-12-08T00:00:00.000' AS DateTime), CAST(N'2022-03-17T02:49:24.410' AS DateTime), CAST(600.00 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[pedido_proveedor] ([id], [idUsuario], [idProveedor], [idDeposito], [fechaPedido], [fechaRecepcion], [total], [idEstado]) VALUES (6, 4, 2, 1, CAST(N'2021-12-08T00:00:00.000' AS DateTime), CAST(N'2021-12-09T23:34:58.733' AS DateTime), CAST(900.00 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[pedido_proveedor] ([id], [idUsuario], [idProveedor], [idDeposito], [fechaPedido], [fechaRecepcion], [total], [idEstado]) VALUES (7, 4, 2, 1, CAST(N'2021-12-13T18:41:07.000' AS DateTime), CAST(N'2021-12-13T19:28:59.323' AS DateTime), CAST(900.00 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[pedido_proveedor] ([id], [idUsuario], [idProveedor], [idDeposito], [fechaPedido], [fechaRecepcion], [total], [idEstado]) VALUES (8, 4, 2, 1, CAST(N'2021-12-13T18:51:42.000' AS DateTime), CAST(N'2022-03-17T02:46:23.463' AS DateTime), CAST(600.00 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[pedido_proveedor] ([id], [idUsuario], [idProveedor], [idDeposito], [fechaPedido], [fechaRecepcion], [total], [idEstado]) VALUES (9, 4, 2, 1, CAST(N'2021-12-13T20:37:49.000' AS DateTime), CAST(N'2022-03-17T02:43:57.800' AS DateTime), CAST(1400.00 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[pedido_proveedor] ([id], [idUsuario], [idProveedor], [idDeposito], [fechaPedido], [fechaRecepcion], [total], [idEstado]) VALUES (11, 4, 2, 1, CAST(N'2021-12-21T00:55:34.000' AS DateTime), CAST(N'2022-03-17T02:40:15.650' AS DateTime), CAST(2100.00 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[pedido_proveedor] ([id], [idUsuario], [idProveedor], [idDeposito], [fechaPedido], [fechaRecepcion], [total], [idEstado]) VALUES (12, 12, 3, 1, CAST(N'2021-12-23T19:43:36.000' AS DateTime), CAST(N'2021-12-23T19:44:04.403' AS DateTime), CAST(2900.00 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[pedido_proveedor] ([id], [idUsuario], [idProveedor], [idDeposito], [fechaPedido], [fechaRecepcion], [total], [idEstado]) VALUES (16, 4, 2, 1, CAST(N'2022-03-17T02:21:09.000' AS DateTime), CAST(N'2022-03-17T02:39:14.500' AS DateTime), CAST(600.00 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[pedido_proveedor] ([id], [idUsuario], [idProveedor], [idDeposito], [fechaPedido], [fechaRecepcion], [total], [idEstado]) VALUES (17, 4, 2, 1, CAST(N'2022-03-17T02:22:54.000' AS DateTime), CAST(N'2022-03-17T02:33:06.053' AS DateTime), CAST(600.00 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[pedido_proveedor] ([id], [idUsuario], [idProveedor], [idDeposito], [fechaPedido], [fechaRecepcion], [total], [idEstado]) VALUES (18, 4, 2, 1, CAST(N'2022-03-17T02:32:37.000' AS DateTime), CAST(N'2022-03-17T02:32:53.563' AS DateTime), CAST(300.00 AS Decimal(14, 2)), 2)
GO
SET IDENTITY_INSERT [dbo].[pedido_proveedor] OFF
GO
SET IDENTITY_INSERT [dbo].[pedido_proveedor_detalle] ON 
GO
INSERT [dbo].[pedido_proveedor_detalle] ([id], [idPedidoProveedor], [idProducto], [cantidad]) VALUES (1, 5, 1, 0)
GO
INSERT [dbo].[pedido_proveedor_detalle] ([id], [idPedidoProveedor], [idProducto], [cantidad]) VALUES (2, 5, 3, 0)
GO
INSERT [dbo].[pedido_proveedor_detalle] ([id], [idPedidoProveedor], [idProducto], [cantidad]) VALUES (3, 5, 4, 0)
GO
INSERT [dbo].[pedido_proveedor_detalle] ([id], [idPedidoProveedor], [idProducto], [cantidad]) VALUES (4, 6, 1, 3)
GO
INSERT [dbo].[pedido_proveedor_detalle] ([id], [idPedidoProveedor], [idProducto], [cantidad]) VALUES (5, 7, 1, 3)
GO
INSERT [dbo].[pedido_proveedor_detalle] ([id], [idPedidoProveedor], [idProducto], [cantidad]) VALUES (6, 8, 1, 2)
GO
INSERT [dbo].[pedido_proveedor_detalle] ([id], [idPedidoProveedor], [idProducto], [cantidad]) VALUES (7, 9, 1, 2)
GO
INSERT [dbo].[pedido_proveedor_detalle] ([id], [idPedidoProveedor], [idProducto], [cantidad]) VALUES (8, 9, 3, 2)
GO
INSERT [dbo].[pedido_proveedor_detalle] ([id], [idPedidoProveedor], [idProducto], [cantidad]) VALUES (9, 11, 1, 3)
GO
INSERT [dbo].[pedido_proveedor_detalle] ([id], [idPedidoProveedor], [idProducto], [cantidad]) VALUES (10, 11, 3, 1)
GO
INSERT [dbo].[pedido_proveedor_detalle] ([id], [idPedidoProveedor], [idProducto], [cantidad]) VALUES (11, 11, 4, 1)
GO
INSERT [dbo].[pedido_proveedor_detalle] ([id], [idPedidoProveedor], [idProducto], [cantidad]) VALUES (12, 12, 1, 7)
GO
INSERT [dbo].[pedido_proveedor_detalle] ([id], [idPedidoProveedor], [idProducto], [cantidad]) VALUES (13, 12, 3, 2)
GO
INSERT [dbo].[pedido_proveedor_detalle] ([id], [idPedidoProveedor], [idProducto], [cantidad]) VALUES (14, 16, 1, 2)
GO
INSERT [dbo].[pedido_proveedor_detalle] ([id], [idPedidoProveedor], [idProducto], [cantidad]) VALUES (15, 17, 1, 2)
GO
INSERT [dbo].[pedido_proveedor_detalle] ([id], [idPedidoProveedor], [idProducto], [cantidad]) VALUES (16, 18, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[pedido_proveedor_detalle] OFF
GO
SET IDENTITY_INSERT [dbo].[perdida] ON 
GO
INSERT [dbo].[perdida] ([id], [idSucursal], [idVenta], [idUsuario], [fecha], [total]) VALUES (2, 1, 47, 4, CAST(N'2021-12-06T00:00:00.000' AS DateTime), CAST(600.00 AS Decimal(14, 2)))
GO
INSERT [dbo].[perdida] ([id], [idSucursal], [idVenta], [idUsuario], [fecha], [total]) VALUES (3, 1, 46, 4, CAST(N'2021-12-06T00:00:00.000' AS DateTime), CAST(300.00 AS Decimal(14, 2)))
GO
INSERT [dbo].[perdida] ([id], [idSucursal], [idVenta], [idUsuario], [fecha], [total]) VALUES (1002, 1, 54, 4, CAST(N'2021-12-07T00:00:00.000' AS DateTime), CAST(400.00 AS Decimal(14, 2)))
GO
INSERT [dbo].[perdida] ([id], [idSucursal], [idVenta], [idUsuario], [fecha], [total]) VALUES (1003, 1, 48, 4, CAST(N'2021-12-07T00:00:00.000' AS DateTime), CAST(300.00 AS Decimal(14, 2)))
GO
INSERT [dbo].[perdida] ([id], [idSucursal], [idVenta], [idUsuario], [fecha], [total]) VALUES (1004, 1, 46, 4, CAST(N'2021-12-07T00:00:00.000' AS DateTime), CAST(300.00 AS Decimal(14, 2)))
GO
INSERT [dbo].[perdida] ([id], [idSucursal], [idVenta], [idUsuario], [fecha], [total]) VALUES (1005, 1, 45, 4, CAST(N'2021-12-07T00:00:00.000' AS DateTime), CAST(600.00 AS Decimal(14, 2)))
GO
INSERT [dbo].[perdida] ([id], [idSucursal], [idVenta], [idUsuario], [fecha], [total]) VALUES (1006, 1, 43, 4, CAST(N'2021-12-07T00:00:00.000' AS DateTime), CAST(900.00 AS Decimal(14, 2)))
GO
INSERT [dbo].[perdida] ([id], [idSucursal], [idVenta], [idUsuario], [fecha], [total]) VALUES (1007, 1, 43, 4, CAST(N'2021-12-07T00:00:00.000' AS DateTime), CAST(900.00 AS Decimal(14, 2)))
GO
INSERT [dbo].[perdida] ([id], [idSucursal], [idVenta], [idUsuario], [fecha], [total]) VALUES (1008, 1, 43, 4, CAST(N'2021-12-07T00:00:00.000' AS DateTime), CAST(900.00 AS Decimal(14, 2)))
GO
INSERT [dbo].[perdida] ([id], [idSucursal], [idVenta], [idUsuario], [fecha], [total]) VALUES (1009, 1, 42, 4, CAST(N'2021-12-07T00:00:00.000' AS DateTime), CAST(900.00 AS Decimal(14, 2)))
GO
INSERT [dbo].[perdida] ([id], [idSucursal], [idVenta], [idUsuario], [fecha], [total]) VALUES (1010, 1, 42, 4, CAST(N'2021-12-07T00:00:00.000' AS DateTime), CAST(900.00 AS Decimal(14, 2)))
GO
INSERT [dbo].[perdida] ([id], [idSucursal], [idVenta], [idUsuario], [fecha], [total]) VALUES (1011, 1, 42, 4, CAST(N'2021-12-07T00:00:00.000' AS DateTime), CAST(600.00 AS Decimal(14, 2)))
GO
SET IDENTITY_INSERT [dbo].[perdida] OFF
GO
SET IDENTITY_INSERT [dbo].[perdida_detalle] ON 
GO
INSERT [dbo].[perdida_detalle] ([id], [idPerdida], [idProducto], [costoUnitario], [cantidad]) VALUES (5, 2, 1, CAST(300.00 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[perdida_detalle] ([id], [idPerdida], [idProducto], [costoUnitario], [cantidad]) VALUES (6, 3, 1, CAST(300.00 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[perdida_detalle] ([id], [idPerdida], [idProducto], [costoUnitario], [cantidad]) VALUES (1005, 1002, 3, CAST(400.00 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[perdida_detalle] ([id], [idPerdida], [idProducto], [costoUnitario], [cantidad]) VALUES (1006, 1003, 1, CAST(300.00 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[perdida_detalle] ([id], [idPerdida], [idProducto], [costoUnitario], [cantidad]) VALUES (1007, 1004, 1, CAST(300.00 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[perdida_detalle] ([id], [idPerdida], [idProducto], [costoUnitario], [cantidad]) VALUES (1008, 1005, 1, CAST(300.00 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[perdida_detalle] ([id], [idPerdida], [idProducto], [costoUnitario], [cantidad]) VALUES (1009, 1006, 1, CAST(300.00 AS Decimal(14, 2)), 3)
GO
INSERT [dbo].[perdida_detalle] ([id], [idPerdida], [idProducto], [costoUnitario], [cantidad]) VALUES (1010, 1007, 1, CAST(300.00 AS Decimal(14, 2)), 3)
GO
INSERT [dbo].[perdida_detalle] ([id], [idPerdida], [idProducto], [costoUnitario], [cantidad]) VALUES (1011, 1008, 1, CAST(300.00 AS Decimal(14, 2)), 3)
GO
INSERT [dbo].[perdida_detalle] ([id], [idPerdida], [idProducto], [costoUnitario], [cantidad]) VALUES (1012, 1008, 1, CAST(300.00 AS Decimal(14, 2)), 3)
GO
INSERT [dbo].[perdida_detalle] ([id], [idPerdida], [idProducto], [costoUnitario], [cantidad]) VALUES (1013, 1009, 1, CAST(300.00 AS Decimal(14, 2)), 3)
GO
INSERT [dbo].[perdida_detalle] ([id], [idPerdida], [idProducto], [costoUnitario], [cantidad]) VALUES (1014, 1010, 1, CAST(300.00 AS Decimal(14, 2)), 3)
GO
INSERT [dbo].[perdida_detalle] ([id], [idPerdida], [idProducto], [costoUnitario], [cantidad]) VALUES (1015, 1011, 1, CAST(300.00 AS Decimal(14, 2)), 2)
GO
SET IDENTITY_INSERT [dbo].[perdida_detalle] OFF
GO
SET IDENTITY_INSERT [dbo].[producto] ON 
GO
INSERT [dbo].[producto] ([id], [nombre], [codigo], [fechaCreacion], [precio], [costo], [dvh], [activo]) VALUES (1, N'Heladera', N'267887', CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(383.66 AS Decimal(14, 2)), CAST(300.00 AS Decimal(14, 2)), N'333970982', 1)
GO
INSERT [dbo].[producto] ([id], [nombre], [codigo], [fechaCreacion], [precio], [costo], [dvh], [activo]) VALUES (3, N'Lavarropa', N'522654', CAST(N'2021-02-02T00:00:00.000' AS DateTime), CAST(480.27 AS Decimal(14, 2)), CAST(400.00 AS Decimal(14, 2)), N'-120917102', 1)
GO
INSERT [dbo].[producto] ([id], [nombre], [codigo], [fechaCreacion], [precio], [costo], [dvh], [activo]) VALUES (4, N'Cama', N'272829', CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(1000.21 AS Decimal(14, 2)), CAST(800.00 AS Decimal(14, 2)), N'792425122', 1)
GO
SET IDENTITY_INSERT [dbo].[producto] OFF
GO
SET IDENTITY_INSERT [dbo].[proveedor] ON 
GO
INSERT [dbo].[proveedor] ([id], [nombre], [direccion], [codigoPostal], [mail], [telefono], [cantidadErrores], [activo]) VALUES (1, N'Catalys', N'Romano 172', 2687, N'catalys@gmail.com', N'567576', 0, 0)
GO
INSERT [dbo].[proveedor] ([id], [nombre], [direccion], [codigoPostal], [mail], [telefono], [cantidadErrores], [activo]) VALUES (2, N'Swansson', N'Espada 262', 2152, N'Swansson@gmail.com', N'56567', 17, 1)
GO
INSERT [dbo].[proveedor] ([id], [nombre], [direccion], [codigoPostal], [mail], [telefono], [cantidadErrores], [activo]) VALUES (3, N'Sariftg', N'Roma 162', 2000, N'sarif@gmail.com', N'0303456', 2, 1)
GO
INSERT [dbo].[proveedor] ([id], [nombre], [direccion], [codigoPostal], [mail], [telefono], [cantidadErrores], [activo]) VALUES (4, N'Jensen', N'Detroit 2182', 3728, N'jensen@gmail.com', N'7878', 0, 0)
GO
SET IDENTITY_INSERT [dbo].[proveedor] OFF
GO
SET IDENTITY_INSERT [dbo].[proveedor_penalizacion] ON 
GO
INSERT [dbo].[proveedor_penalizacion] ([id], [idProveedor], [idMotivo], [fecha]) VALUES (1, 2, 1, CAST(N'2021-12-09T23:25:35.000' AS DateTime))
GO
INSERT [dbo].[proveedor_penalizacion] ([id], [idProveedor], [idMotivo], [fecha]) VALUES (2, 2, 1, CAST(N'2021-12-09T23:35:00.000' AS DateTime))
GO
INSERT [dbo].[proveedor_penalizacion] ([id], [idProveedor], [idMotivo], [fecha]) VALUES (3, 2, 1, CAST(N'2021-12-09T23:35:16.000' AS DateTime))
GO
INSERT [dbo].[proveedor_penalizacion] ([id], [idProveedor], [idMotivo], [fecha]) VALUES (4, 2, 2, CAST(N'2021-12-12T23:44:34.000' AS DateTime))
GO
INSERT [dbo].[proveedor_penalizacion] ([id], [idProveedor], [idMotivo], [fecha]) VALUES (5, 2, 1, CAST(N'2021-12-12T23:45:09.000' AS DateTime))
GO
INSERT [dbo].[proveedor_penalizacion] ([id], [idProveedor], [idMotivo], [fecha]) VALUES (6, 2, 1, CAST(N'2021-12-13T18:27:08.000' AS DateTime))
GO
INSERT [dbo].[proveedor_penalizacion] ([id], [idProveedor], [idMotivo], [fecha]) VALUES (7, 2, 1, CAST(N'2021-12-13T19:28:59.000' AS DateTime))
GO
INSERT [dbo].[proveedor_penalizacion] ([id], [idProveedor], [idMotivo], [fecha]) VALUES (8, 2, 1, CAST(N'2021-12-13T19:29:05.000' AS DateTime))
GO
INSERT [dbo].[proveedor_penalizacion] ([id], [idProveedor], [idMotivo], [fecha]) VALUES (10, 2, 1, CAST(N'2021-12-21T21:31:42.000' AS DateTime))
GO
INSERT [dbo].[proveedor_penalizacion] ([id], [idProveedor], [idMotivo], [fecha]) VALUES (11, 2, 2, CAST(N'2021-12-21T22:18:10.000' AS DateTime))
GO
INSERT [dbo].[proveedor_penalizacion] ([id], [idProveedor], [idMotivo], [fecha]) VALUES (12, 3, 1, CAST(N'2021-12-23T19:44:04.000' AS DateTime))
GO
INSERT [dbo].[proveedor_penalizacion] ([id], [idProveedor], [idMotivo], [fecha]) VALUES (13, 3, 1, CAST(N'2021-12-23T19:44:14.000' AS DateTime))
GO
INSERT [dbo].[proveedor_penalizacion] ([id], [idProveedor], [idMotivo], [fecha]) VALUES (14, 2, 1, CAST(N'2022-03-16T20:47:42.000' AS DateTime))
GO
INSERT [dbo].[proveedor_penalizacion] ([id], [idProveedor], [idMotivo], [fecha]) VALUES (15, 2, 1, CAST(N'2022-03-17T02:32:53.000' AS DateTime))
GO
INSERT [dbo].[proveedor_penalizacion] ([id], [idProveedor], [idMotivo], [fecha]) VALUES (16, 2, 1, CAST(N'2022-03-17T02:33:06.000' AS DateTime))
GO
INSERT [dbo].[proveedor_penalizacion] ([id], [idProveedor], [idMotivo], [fecha]) VALUES (17, 2, 1, CAST(N'2022-03-17T02:40:15.000' AS DateTime))
GO
INSERT [dbo].[proveedor_penalizacion] ([id], [idProveedor], [idMotivo], [fecha]) VALUES (18, 2, 1, CAST(N'2022-03-17T02:43:57.000' AS DateTime))
GO
INSERT [dbo].[proveedor_penalizacion] ([id], [idProveedor], [idMotivo], [fecha]) VALUES (19, 2, 1, CAST(N'2022-03-17T02:46:23.000' AS DateTime))
GO
INSERT [dbo].[proveedor_penalizacion] ([id], [idProveedor], [idMotivo], [fecha]) VALUES (20, 3, 1, CAST(N'2022-03-17T02:49:34.000' AS DateTime))
GO
INSERT [dbo].[proveedor_penalizacion] ([id], [idProveedor], [idMotivo], [fecha]) VALUES (21, 3, 3, CAST(N'2022-03-17T02:49:40.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[proveedor_penalizacion] OFF
GO
SET IDENTITY_INSERT [dbo].[sucursal] ON 
GO
INSERT [dbo].[sucursal] ([id], [nombre], [direccion], [mail], [codigoPostal], [telefono], [dvh], [activo]) VALUES (1, N'Merlo', N'merlo 2018', N'merlo@op', 278, N'678678', N'-1203719716', 1)
GO
INSERT [dbo].[sucursal] ([id], [nombre], [direccion], [mail], [codigoPostal], [telefono], [dvh], [activo]) VALUES (2, N'Moron', N'moron 162', N'moron@op', 212, N'256256', N'-1521433821', 1)
GO
SET IDENTITY_INSERT [dbo].[sucursal] OFF
GO
SET IDENTITY_INSERT [dbo].[sucursal_producto] ON 
GO
INSERT [dbo].[sucursal_producto] ([id], [idSucursal], [idProducto], [stock]) VALUES (1, 1, 1, 0)
GO
INSERT [dbo].[sucursal_producto] ([id], [idSucursal], [idProducto], [stock]) VALUES (3, 1, 3, 3)
GO
INSERT [dbo].[sucursal_producto] ([id], [idSucursal], [idProducto], [stock]) VALUES (6, 1, 1, 2)
GO
SET IDENTITY_INSERT [dbo].[sucursal_producto] OFF
GO
SET IDENTITY_INSERT [dbo].[usuario] ON 
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [mail], [telefono], [nombreUsuario], [password], [fechaCreacion], [intentosFallidos], [dvh], [activo], [idFamilia]) VALUES (4, N'Admin', N'Adminson', 38726254, N'admin@asd.com', N'1162538276', N'admin', N'nRy/sK5Z7ENvGsSwfcmLzw==', CAST(N'2019-04-09T00:00:00.000' AS DateTime), 0, N'-1441823615', 1, 5)
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [mail], [telefono], [nombreUsuario], [password], [fechaCreacion], [intentosFallidos], [dvh], [activo], [idFamilia]) VALUES (5, N'Juan', N'Gutierrez', 256767, N'juan@gmail.com', N'567567', N'inactive', N'hsjkjkahaskjhaskjh', CAST(N'2021-10-28T00:00:00.000' AS DateTime), 0, N'1042988577', 0, 1)
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [mail], [telefono], [nombreUsuario], [password], [fechaCreacion], [intentosFallidos], [dvh], [activo], [idFamilia]) VALUES (6, N'Ricardo', N'Gonzalez', 456456, N'ricardo@gmail.com', N'4564', N'sales_not_assigned', N'nRy/sK5Z7ENvGsSwfcmLzw==', CAST(N'2021-10-28T00:00:00.000' AS DateTime), 0, N'1102484370', 1, 2)
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [mail], [telefono], [nombreUsuario], [password], [fechaCreacion], [intentosFallidos], [dvh], [activo], [idFamilia]) VALUES (7, N'Carlos', N'Bala', 456456, N'carlos@gmail.com', N'4564', N'sales', N'nRy/sK5Z7ENvGsSwfcmLzw==', CAST(N'2021-10-28T00:00:00.000' AS DateTime), 3, N'-231299937', 0, 2)
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [mail], [telefono], [nombreUsuario], [password], [fechaCreacion], [intentosFallidos], [dvh], [activo], [idFamilia]) VALUES (8, N'Diego', N'Maradona', 456456, N'diego@gmail.com', N'4564', N'deposit_not_assigned', N'nRy/sK5Z7ENvGsSwfcmLzw==', CAST(N'2021-10-28T00:00:00.000' AS DateTime), 0, N'-149113897', 1, 1)
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [mail], [telefono], [nombreUsuario], [password], [fechaCreacion], [intentosFallidos], [dvh], [activo], [idFamilia]) VALUES (9, N'Lionel', N'Messi', 456456, N'lionel@gmail.com', N'4564', N'deposit', N'nRy/sK5Z7ENvGsSwfcmLzw==', CAST(N'2021-10-28T00:00:00.000' AS DateTime), 0, N'2001248706', 1, 1)
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [mail], [telefono], [nombreUsuario], [password], [fechaCreacion], [intentosFallidos], [dvh], [activo], [idFamilia]) VALUES (10, N'Leonardo', N'Ninja', 456456, N'leo@gmail.com', N'4564', N'delivery', N'nRy/sK5Z7ENvGsSwfcmLzw==', CAST(N'2021-10-28T00:00:00.000' AS DateTime), 0, N'-253393727', 1, 3)
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [mail], [telefono], [nombreUsuario], [password], [fechaCreacion], [intentosFallidos], [dvh], [activo], [idFamilia]) VALUES (11, N'Rafael', N'Coma', 456456, N'rafael@gmail.com', N'4564', N'cashier', N'nRy/sK5Z7ENvGsSwfcmLzw==', CAST(N'2021-10-28T00:00:00.000' AS DateTime), 0, N'1171467927', 1, 4)
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [mail], [telefono], [nombreUsuario], [password], [fechaCreacion], [intentosFallidos], [dvh], [activo], [idFamilia]) VALUES (12, N'fgfg', N'Palo', 456456, N'donatello@gmail.com', N'4564', N'global', N'nRy/sK5Z7ENvGsSwfcmLzw==', CAST(N'2021-10-28T00:00:00.000' AS DateTime), 0, N'-1171026230', 1, 7)
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [mail], [telefono], [nombreUsuario], [password], [fechaCreacion], [intentosFallidos], [dvh], [activo], [idFamilia]) VALUES (13, N'gfhjghj', N'Nunchaku', 2637829, N'migue@gmail.com', N'57676', N'migue', N'3HhxGocas55cs8Bct+/O3Q==', CAST(N'2022-03-16T00:00:00.000' AS DateTime), 0, N'621471724', 0, 1)
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [mail], [telefono], [nombreUsuario], [password], [fechaCreacion], [intentosFallidos], [dvh], [activo], [idFamilia]) VALUES (17, N'tguytyu', N'tyutuy', 678, N'tuytyu', N'67868', N'tyj', N'nRy/sK5Z7ENvGsSwfcmLzw==', CAST(N'2022-03-16T00:00:00.000' AS DateTime), 0, N'990676316', 1, 1)
GO
SET IDENTITY_INSERT [dbo].[usuario] OFF
GO
SET IDENTITY_INSERT [dbo].[usuario_deposito] ON 
GO
INSERT [dbo].[usuario_deposito] ([id], [idUsuario], [idDeposito]) VALUES (11, 8, 1)
GO
INSERT [dbo].[usuario_deposito] ([id], [idUsuario], [idDeposito]) VALUES (12, 9, 2)
GO
SET IDENTITY_INSERT [dbo].[usuario_deposito] OFF
GO
SET IDENTITY_INSERT [dbo].[usuario_sucursal] ON 
GO
INSERT [dbo].[usuario_sucursal] ([id], [idUsuario], [idSucursal]) VALUES (3, 6, 2)
GO
INSERT [dbo].[usuario_sucursal] ([id], [idUsuario], [idSucursal]) VALUES (6, 7, 1)
GO
SET IDENTITY_INSERT [dbo].[usuario_sucursal] OFF
GO
SET IDENTITY_INSERT [dbo].[venta] ON 
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (2, 4, 3, 1, 1, 1, 2, CAST(N'2021-11-03T00:00:00.000' AS DateTime), CAST(2061.96 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (3, 4, 3, 1, 2, 1, 2, CAST(N'2021-11-03T00:00:00.000' AS DateTime), CAST(53610.96 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (4, 4, 3, 1, 2, 1, 3, CAST(N'2021-11-03T00:00:00.000' AS DateTime), CAST(53610.96 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (5, 4, 3, 1, 1, 1, 1, CAST(N'2021-11-03T00:00:00.000' AS DateTime), CAST(12084.71 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (6, 4, 3, 1, 1, 1, 3, CAST(N'2021-11-03T00:00:00.000' AS DateTime), CAST(49576.87 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (7, 4, 2, 1, 1, 1, 3, CAST(N'2021-11-03T00:00:00.000' AS DateTime), CAST(276751.52 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (10, 4, 1, 1, 3, 3, 2, CAST(N'2021-11-19T00:00:00.000' AS DateTime), CAST(343.66 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (11, 4, 1, 1, 3, 2, 2, CAST(N'2021-11-19T00:00:00.000' AS DateTime), CAST(343.66 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (12, 4, 1, 1, 3, 1, 1, CAST(N'2021-11-19T00:00:00.000' AS DateTime), CAST(343.66 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (13, 4, 1, 1, 3, 2, 1, CAST(N'2021-11-19T00:00:00.000' AS DateTime), CAST(343.66 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (14, 4, 1, 1, 1, 2, 1, CAST(N'2021-11-19T00:00:00.000' AS DateTime), CAST(326.48 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (15, 4, 1, 1, 3, 2, 2, CAST(N'2021-11-19T00:00:00.000' AS DateTime), CAST(343.66 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (16, 4, 1, 1, 2, 2, 2, CAST(N'2021-11-19T00:00:00.000' AS DateTime), CAST(343.66 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (17, 4, 1, 1, 3, 2, 2, CAST(N'2021-11-19T00:00:00.000' AS DateTime), CAST(343.66 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (18, 4, 1, 1, 3, 2, 2, CAST(N'2021-11-23T00:00:00.000' AS DateTime), CAST(3092.94 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (19, 4, 1, 1, 1, 2, 1, CAST(N'2021-11-23T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (20, 4, 1, 1, 1, 2, 1, CAST(N'2021-11-23T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (21, 4, 1, 1, 1, 2, 1, CAST(N'2021-11-23T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (22, 4, 1, 1, 1, 2, 1, CAST(N'2021-11-23T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (23, 4, 1, 1, 1, 2, 1, CAST(N'2021-11-23T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (24, 4, 1, 1, 1, 2, 1, CAST(N'2021-11-23T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (25, 4, 1, 1, 1, 2, 1, CAST(N'2021-11-23T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (26, 4, 1, 1, 1, 1, 1, CAST(N'2021-11-23T00:00:00.000' AS DateTime), CAST(1632.39 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (27, 4, 1, 1, 1, 1, 1, CAST(N'2021-11-23T00:00:00.000' AS DateTime), CAST(1632.39 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (28, 4, 1, 1, 1, 1, 1, CAST(N'2021-11-23T00:00:00.000' AS DateTime), CAST(1632.39 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (29, 4, 1, 1, 1, 1, 1, CAST(N'2021-11-23T00:00:00.000' AS DateTime), CAST(1632.39 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (30, 4, 1, 1, 1, 1, 1, CAST(N'2021-11-23T00:00:00.000' AS DateTime), CAST(1632.39 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (31, 4, 1, 1, 1, 2, 3, CAST(N'2021-11-23T00:00:00.000' AS DateTime), CAST(1632.39 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (32, 4, 1, 1, 1, 2, 2, CAST(N'2021-11-23T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (33, 4, 1, 1, 1, 2, 2, CAST(N'2021-11-23T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (34, 4, 1, 1, 1, 2, 3, CAST(N'2021-11-24T00:00:00.000' AS DateTime), CAST(1632.39 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (35, 4, 1, 1, 2, 2, 1, CAST(N'2021-11-25T00:00:00.000' AS DateTime), CAST(4920.46 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (36, 4, 1, 1, 1, 2, 1, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (37, 4, 1, 1, 1, 2, 1, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (38, 4, 1, 1, 1, 2, 3, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(5980.35 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (39, 4, 1, 1, 1, 2, 2, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (40, 4, 1, 1, 1, 2, 3, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (41, 4, 1, 1, 1, 2, 2, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (42, 4, 1, 1, 1, 2, 4, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (43, 4, 1, 1, 1, 2, 9, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (44, 4, 1, 1, 1, 2, 2, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (45, 4, 1, 1, 1, 2, 9, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (46, 4, 1, 1, 1, 2, 9, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(3264.77 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (47, 4, 1, 1, 1, 2, 6, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(3264.77 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (48, 4, 1, 1, 1, 1, 5, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(1632.39 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (49, 4, 1, 1, 1, 1, 6, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(979.43 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (50, 4, 1, 1, 1, 2, 6, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(2500.46 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (51, 4, 1, 1, 1, 1, 2, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(760.51 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (52, 4, 1, 1, 1, 2, 5, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(1305.91 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (53, 4, 1, 1, 1, 2, 5, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(1822.39 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (54, 4, 1, 1, 1, 2, 5, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(2734.90 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (55, 4, 1, 1, 1, 2, 3, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(2553.98 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (56, 12, 4, 0, 3, 2, 2, CAST(N'2021-12-23T00:00:00.000' AS DateTime), CAST(1169.63 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (57, 4, 1, 1, 3, 1, 2, CAST(N'2022-03-17T00:00:00.000' AS DateTime), CAST(504.28 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (58, 4, 1, 1, 1, 2, 2, CAST(N'2022-03-17T00:00:00.000' AS DateTime), CAST(693.76 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (59, 4, 1, 1, 1, 2, 1, CAST(N'2022-03-17T00:00:00.000' AS DateTime), CAST(693.76 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (60, 4, 1, 1, 3, 3, 1, CAST(N'2022-03-17T00:00:00.000' AS DateTime), CAST(1428.57 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (61, 4, 1, 1, 2, 2, 1, CAST(N'2022-03-17T00:00:00.000' AS DateTime), CAST(730.27 AS Decimal(14, 2)))
GO
SET IDENTITY_INSERT [dbo].[venta] OFF
GO
SET IDENTITY_INSERT [dbo].[venta_detalle] ON 
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (3, 2, 3, CAST(300.00 AS Decimal(14, 2)), CAST(400.00 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (4, 2, 3, CAST(300.00 AS Decimal(14, 2)), CAST(400.00 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (5, 2, 3, CAST(400.00 AS Decimal(14, 2)), CAST(500.00 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (6, 6, 1, CAST(300.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (7, 6, 3, CAST(400.00 AS Decimal(14, 2)), CAST(400.27 AS Decimal(14, 2)), 123)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (8, 7, 1, CAST(300.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 789)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (9, 7, 3, CAST(400.00 AS Decimal(14, 2)), CAST(400.27 AS Decimal(14, 2)), 14)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (10, 10, 1, CAST(343.66 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (11, 11, 1, CAST(343.66 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (12, 12, 1, CAST(343.66 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (13, 13, 1, CAST(343.66 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (14, 14, 1, CAST(343.66 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (15, 15, 1, CAST(343.66 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (16, 16, 1, CAST(343.66 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (17, 17, 1, CAST(343.66 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (18, 18, 1, CAST(0.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 5)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (19, 18, 1, CAST(0.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 4)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (20, 22, 1, CAST(0.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 5)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (21, 22, 1, CAST(0.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 4)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (22, 24, 1, CAST(0.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 5)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (23, 24, 1, CAST(0.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 4)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (24, 25, 1, CAST(300.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 5)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (25, 25, 1, CAST(0.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 4)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (26, 29, 1, CAST(300.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 5)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (27, 30, 1, CAST(300.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 5)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (28, 31, 1, CAST(300.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 5)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (29, 32, 1, CAST(300.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 5)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (30, 32, 1, CAST(0.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 4)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (31, 33, 1, CAST(300.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 5)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (32, 33, 1, CAST(0.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 4)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (33, 34, 1, CAST(300.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 5)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (34, 37, 1, CAST(0.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 4)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (35, 39, 1, CAST(300.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 5)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (36, 39, 1, CAST(0.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 4)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (37, 40, 1, CAST(300.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 5)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (38, 40, 1, CAST(0.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 4)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (39, 41, 1, CAST(300.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 5)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (40, 41, 1, CAST(0.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 4)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (41, 42, 1, CAST(300.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 5)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (42, 42, 1, CAST(300.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 4)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (43, 43, 1, CAST(300.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 5)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (44, 43, 1, CAST(300.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 4)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (45, 45, 1, CAST(300.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (46, 45, 1, CAST(300.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 3)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (47, 46, 1, CAST(300.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 3)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (48, 47, 1, CAST(300.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (49, 47, 1, CAST(300.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 3)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (50, 48, 1, CAST(300.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (51, 49, 1, CAST(300.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 3)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (52, 50, 3, CAST(400.00 AS Decimal(14, 2)), CAST(400.27 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (53, 50, 1, CAST(300.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 3)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (54, 51, 3, CAST(400.00 AS Decimal(14, 2)), CAST(400.27 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (55, 52, 1, CAST(300.00 AS Decimal(14, 2)), CAST(343.66 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (56, 53, 1, CAST(300.00 AS Decimal(14, 2)), CAST(383.66 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (57, 53, 1, CAST(300.00 AS Decimal(14, 2)), CAST(383.66 AS Decimal(14, 2)), 3)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (58, 54, 1, CAST(300.00 AS Decimal(14, 2)), CAST(383.66 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (59, 54, 1, CAST(300.00 AS Decimal(14, 2)), CAST(383.66 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (60, 54, 3, CAST(400.00 AS Decimal(14, 2)), CAST(480.27 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (61, 54, 1, CAST(300.00 AS Decimal(14, 2)), CAST(383.66 AS Decimal(14, 2)), 3)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (62, 55, 3, CAST(400.00 AS Decimal(14, 2)), CAST(480.27 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (63, 55, 1, CAST(300.00 AS Decimal(14, 2)), CAST(383.66 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (64, 55, 3, CAST(400.00 AS Decimal(14, 2)), CAST(480.27 AS Decimal(14, 2)), 4)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (65, 56, 1, CAST(300.00 AS Decimal(14, 2)), CAST(383.66 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (66, 56, 3, CAST(400.00 AS Decimal(14, 2)), CAST(480.27 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (67, 57, 3, CAST(400.00 AS Decimal(14, 2)), CAST(480.27 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (68, 58, 3, CAST(400.00 AS Decimal(14, 2)), CAST(480.27 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (69, 59, 3, CAST(400.00 AS Decimal(14, 2)), CAST(480.27 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (70, 60, 3, CAST(400.00 AS Decimal(14, 2)), CAST(480.27 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[venta_detalle] ([id], [idVenta], [idProducto], [costoUnitario], [precioUnitario], [cantidad]) VALUES (71, 61, 3, CAST(400.00 AS Decimal(14, 2)), CAST(480.27 AS Decimal(14, 2)), 1)
GO
SET IDENTITY_INSERT [dbo].[venta_detalle] OFF
GO
ALTER TABLE [dbo].[control]  WITH CHECK ADD  CONSTRAINT [FK_control_idioma] FOREIGN KEY([idIdioma])
REFERENCES [dbo].[idioma] ([id])
GO
ALTER TABLE [dbo].[control] CHECK CONSTRAINT [FK_control_idioma]
GO
ALTER TABLE [dbo].[deposito_producto]  WITH CHECK ADD  CONSTRAINT [FK_deposito_producto_deposito] FOREIGN KEY([idDeposito])
REFERENCES [dbo].[deposito] ([id])
GO
ALTER TABLE [dbo].[deposito_producto] CHECK CONSTRAINT [FK_deposito_producto_deposito]
GO
ALTER TABLE [dbo].[deposito_producto]  WITH CHECK ADD  CONSTRAINT [FK_deposito_producto_producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[producto] ([id])
GO
ALTER TABLE [dbo].[deposito_producto] CHECK CONSTRAINT [FK_deposito_producto_producto]
GO
ALTER TABLE [dbo].[devolucion]  WITH CHECK ADD  CONSTRAINT [FK_devolucion_usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[devolucion] CHECK CONSTRAINT [FK_devolucion_usuario]
GO
ALTER TABLE [dbo].[devolucion_detalle]  WITH CHECK ADD  CONSTRAINT [FK_devolucion_detalle_devolucion] FOREIGN KEY([idDevolucion])
REFERENCES [dbo].[devolucion] ([id])
GO
ALTER TABLE [dbo].[devolucion_detalle] CHECK CONSTRAINT [FK_devolucion_detalle_devolucion]
GO
ALTER TABLE [dbo].[devolucion_detalle]  WITH CHECK ADD  CONSTRAINT [FK_devolucion_detalle_producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[producto] ([id])
GO
ALTER TABLE [dbo].[devolucion_detalle] CHECK CONSTRAINT [FK_devolucion_detalle_producto]
GO
ALTER TABLE [dbo].[direccion]  WITH CHECK ADD  CONSTRAINT [FK_direccion_comprador] FOREIGN KEY([idComprador])
REFERENCES [dbo].[comprador] ([id])
GO
ALTER TABLE [dbo].[direccion] CHECK CONSTRAINT [FK_direccion_comprador]
GO
ALTER TABLE [dbo].[envio_deposito]  WITH CHECK ADD  CONSTRAINT [FK_envio_deposito_deposito] FOREIGN KEY([idDeposito])
REFERENCES [dbo].[deposito] ([id])
GO
ALTER TABLE [dbo].[envio_deposito] CHECK CONSTRAINT [FK_envio_deposito_deposito]
GO
ALTER TABLE [dbo].[envio_deposito]  WITH CHECK ADD  CONSTRAINT [FK_envio_deposito_direccion] FOREIGN KEY([idDireccion])
REFERENCES [dbo].[direccion] ([id])
GO
ALTER TABLE [dbo].[envio_deposito] CHECK CONSTRAINT [FK_envio_deposito_direccion]
GO
ALTER TABLE [dbo].[envio_deposito]  WITH CHECK ADD  CONSTRAINT [FK_envio_deposito_EstadoEnvio] FOREIGN KEY([idEstado])
REFERENCES [dbo].[cEstadoEnvio] ([id])
GO
ALTER TABLE [dbo].[envio_deposito] CHECK CONSTRAINT [FK_envio_deposito_EstadoEnvio]
GO
ALTER TABLE [dbo].[envio_deposito]  WITH CHECK ADD  CONSTRAINT [FK_envio_deposito_venta] FOREIGN KEY([idVenta])
REFERENCES [dbo].[venta] ([id])
GO
ALTER TABLE [dbo].[envio_deposito] CHECK CONSTRAINT [FK_envio_deposito_venta]
GO
ALTER TABLE [dbo].[envio_deposito_detalle]  WITH CHECK ADD  CONSTRAINT [FK_venta_detalle_deposito_deposito] FOREIGN KEY([idDeposito])
REFERENCES [dbo].[deposito] ([id])
GO
ALTER TABLE [dbo].[envio_deposito_detalle] CHECK CONSTRAINT [FK_venta_detalle_deposito_deposito]
GO
ALTER TABLE [dbo].[envio_deposito_detalle]  WITH CHECK ADD  CONSTRAINT [FK_venta_detalle_deposito_venta_detalle] FOREIGN KEY([idVentaDetalle])
REFERENCES [dbo].[venta_detalle] ([id])
GO
ALTER TABLE [dbo].[envio_deposito_detalle] CHECK CONSTRAINT [FK_venta_detalle_deposito_venta_detalle]
GO
ALTER TABLE [dbo].[envio_sucursal]  WITH CHECK ADD  CONSTRAINT [FK_Envio_EstadoEnvio] FOREIGN KEY([idEstado])
REFERENCES [dbo].[cEstadoEnvio] ([id])
GO
ALTER TABLE [dbo].[envio_sucursal] CHECK CONSTRAINT [FK_Envio_EstadoEnvio]
GO
ALTER TABLE [dbo].[envio_sucursal]  WITH CHECK ADD  CONSTRAINT [FK_envio_sucursal_sucursal] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[sucursal] ([id])
GO
ALTER TABLE [dbo].[envio_sucursal] CHECK CONSTRAINT [FK_envio_sucursal_sucursal]
GO
ALTER TABLE [dbo].[envio_sucursal]  WITH CHECK ADD  CONSTRAINT [FK_envio_venta1] FOREIGN KEY([idVenta])
REFERENCES [dbo].[venta] ([id])
GO
ALTER TABLE [dbo].[envio_sucursal] CHECK CONSTRAINT [FK_envio_venta1]
GO
ALTER TABLE [dbo].[envio_sucursal_detalle]  WITH CHECK ADD  CONSTRAINT [FK_envio_sucursal_detalle_sucursal] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[sucursal] ([id])
GO
ALTER TABLE [dbo].[envio_sucursal_detalle] CHECK CONSTRAINT [FK_envio_sucursal_detalle_sucursal]
GO
ALTER TABLE [dbo].[envio_sucursal_detalle]  WITH CHECK ADD  CONSTRAINT [FK_envio_sucursal_detalle_venta_detalle] FOREIGN KEY([idVentaDetalle])
REFERENCES [dbo].[venta_detalle] ([id])
GO
ALTER TABLE [dbo].[envio_sucursal_detalle] CHECK CONSTRAINT [FK_envio_sucursal_detalle_venta_detalle]
GO
ALTER TABLE [dbo].[familia_patente]  WITH CHECK ADD  CONSTRAINT [FK_familia_patente_familia] FOREIGN KEY([idFamilia])
REFERENCES [dbo].[familia] ([id])
GO
ALTER TABLE [dbo].[familia_patente] CHECK CONSTRAINT [FK_familia_patente_familia]
GO
ALTER TABLE [dbo].[familia_patente]  WITH CHECK ADD  CONSTRAINT [FK_familia_patente_patente] FOREIGN KEY([idPatente])
REFERENCES [dbo].[patente] ([id])
GO
ALTER TABLE [dbo].[familia_patente] CHECK CONSTRAINT [FK_familia_patente_patente]
GO
ALTER TABLE [dbo].[pago]  WITH CHECK ADD  CONSTRAINT [FK_pago_venta] FOREIGN KEY([idVenta])
REFERENCES [dbo].[venta] ([id])
GO
ALTER TABLE [dbo].[pago] CHECK CONSTRAINT [FK_pago_venta]
GO
ALTER TABLE [dbo].[pedido_deposito]  WITH CHECK ADD  CONSTRAINT [FK_pedido_deposito_sucursal1] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[sucursal] ([id])
GO
ALTER TABLE [dbo].[pedido_deposito] CHECK CONSTRAINT [FK_pedido_deposito_sucursal1]
GO
ALTER TABLE [dbo].[pedido_deposito]  WITH CHECK ADD  CONSTRAINT [FK_pedido_deposito_usuario1] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[pedido_deposito] CHECK CONSTRAINT [FK_pedido_deposito_usuario1]
GO
ALTER TABLE [dbo].[pedido_deposito_detalle]  WITH CHECK ADD  CONSTRAINT [FK_pedido_deposito_detalle_pedido_deposito] FOREIGN KEY([idPedidoDeposito])
REFERENCES [dbo].[pedido_deposito] ([id])
GO
ALTER TABLE [dbo].[pedido_deposito_detalle] CHECK CONSTRAINT [FK_pedido_deposito_detalle_pedido_deposito]
GO
ALTER TABLE [dbo].[pedido_deposito_detalle]  WITH CHECK ADD  CONSTRAINT [FK_pedido_deposito_detalle_producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[producto] ([id])
GO
ALTER TABLE [dbo].[pedido_deposito_detalle] CHECK CONSTRAINT [FK_pedido_deposito_detalle_producto]
GO
ALTER TABLE [dbo].[pedido_proveedor]  WITH CHECK ADD  CONSTRAINT [FK_pedido_proveedor_deposito] FOREIGN KEY([idDeposito])
REFERENCES [dbo].[deposito] ([id])
GO
ALTER TABLE [dbo].[pedido_proveedor] CHECK CONSTRAINT [FK_pedido_proveedor_deposito]
GO
ALTER TABLE [dbo].[pedido_proveedor]  WITH CHECK ADD  CONSTRAINT [FK_pedido_proveedor_pedido_estado1] FOREIGN KEY([idEstado])
REFERENCES [dbo].[cPedidoEstado] ([id])
GO
ALTER TABLE [dbo].[pedido_proveedor] CHECK CONSTRAINT [FK_pedido_proveedor_pedido_estado1]
GO
ALTER TABLE [dbo].[pedido_proveedor]  WITH CHECK ADD  CONSTRAINT [FK_pedido_proveedor_proveedor1] FOREIGN KEY([idProveedor])
REFERENCES [dbo].[proveedor] ([id])
GO
ALTER TABLE [dbo].[pedido_proveedor] CHECK CONSTRAINT [FK_pedido_proveedor_proveedor1]
GO
ALTER TABLE [dbo].[pedido_proveedor]  WITH CHECK ADD  CONSTRAINT [FK_pedido_proveedor_usuario1] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[pedido_proveedor] CHECK CONSTRAINT [FK_pedido_proveedor_usuario1]
GO
ALTER TABLE [dbo].[pedido_proveedor_detalle]  WITH CHECK ADD  CONSTRAINT [FK_pedido_proveedor_detalle_pedido_proveedor] FOREIGN KEY([idPedidoProveedor])
REFERENCES [dbo].[pedido_proveedor] ([id])
GO
ALTER TABLE [dbo].[pedido_proveedor_detalle] CHECK CONSTRAINT [FK_pedido_proveedor_detalle_pedido_proveedor]
GO
ALTER TABLE [dbo].[pedido_proveedor_detalle]  WITH CHECK ADD  CONSTRAINT [FK_pedido_proveedor_detalle_producto1] FOREIGN KEY([idProducto])
REFERENCES [dbo].[producto] ([id])
GO
ALTER TABLE [dbo].[pedido_proveedor_detalle] CHECK CONSTRAINT [FK_pedido_proveedor_detalle_producto1]
GO
ALTER TABLE [dbo].[perdida]  WITH CHECK ADD  CONSTRAINT [FK_perdida_sucursal] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[sucursal] ([id])
GO
ALTER TABLE [dbo].[perdida] CHECK CONSTRAINT [FK_perdida_sucursal]
GO
ALTER TABLE [dbo].[perdida]  WITH CHECK ADD  CONSTRAINT [FK_perdida_usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[perdida] CHECK CONSTRAINT [FK_perdida_usuario]
GO
ALTER TABLE [dbo].[perdida_detalle]  WITH CHECK ADD  CONSTRAINT [FK_perdida_detalle_perdida] FOREIGN KEY([idPerdida])
REFERENCES [dbo].[perdida] ([id])
GO
ALTER TABLE [dbo].[perdida_detalle] CHECK CONSTRAINT [FK_perdida_detalle_perdida]
GO
ALTER TABLE [dbo].[perdida_detalle]  WITH CHECK ADD  CONSTRAINT [FK_perdida_detalle_producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[producto] ([id])
GO
ALTER TABLE [dbo].[perdida_detalle] CHECK CONSTRAINT [FK_perdida_detalle_producto]
GO
ALTER TABLE [dbo].[proveedor_penalizacion]  WITH CHECK ADD  CONSTRAINT [FK_proveedor_penalizacion_cMotivoPenalizacion] FOREIGN KEY([idMotivo])
REFERENCES [dbo].[cMotivoPenalizacion] ([id])
GO
ALTER TABLE [dbo].[proveedor_penalizacion] CHECK CONSTRAINT [FK_proveedor_penalizacion_cMotivoPenalizacion]
GO
ALTER TABLE [dbo].[proveedor_penalizacion]  WITH CHECK ADD  CONSTRAINT [FK_proveedor_penalizacion_proveedor] FOREIGN KEY([idProveedor])
REFERENCES [dbo].[proveedor] ([id])
GO
ALTER TABLE [dbo].[proveedor_penalizacion] CHECK CONSTRAINT [FK_proveedor_penalizacion_proveedor]
GO
ALTER TABLE [dbo].[retiro_sucursal]  WITH CHECK ADD  CONSTRAINT [FK_retiro_sucursal_sucursal] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[sucursal] ([id])
GO
ALTER TABLE [dbo].[retiro_sucursal] CHECK CONSTRAINT [FK_retiro_sucursal_sucursal]
GO
ALTER TABLE [dbo].[retiro_sucursal]  WITH CHECK ADD  CONSTRAINT [FK_retiro_sucursal_venta_detalle] FOREIGN KEY([idVentaDetalle])
REFERENCES [dbo].[venta_detalle] ([id])
GO
ALTER TABLE [dbo].[retiro_sucursal] CHECK CONSTRAINT [FK_retiro_sucursal_venta_detalle]
GO
ALTER TABLE [dbo].[sucursal_producto]  WITH CHECK ADD  CONSTRAINT [FK_sucursal_producto_producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[producto] ([id])
GO
ALTER TABLE [dbo].[sucursal_producto] CHECK CONSTRAINT [FK_sucursal_producto_producto]
GO
ALTER TABLE [dbo].[sucursal_producto]  WITH CHECK ADD  CONSTRAINT [FK_sucursal_producto_sucursal] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[sucursal] ([id])
GO
ALTER TABLE [dbo].[sucursal_producto] CHECK CONSTRAINT [FK_sucursal_producto_sucursal]
GO
ALTER TABLE [dbo].[usuario_deposito]  WITH CHECK ADD  CONSTRAINT [FK_usuario_deposito_deposito] FOREIGN KEY([idDeposito])
REFERENCES [dbo].[deposito] ([id])
GO
ALTER TABLE [dbo].[usuario_deposito] CHECK CONSTRAINT [FK_usuario_deposito_deposito]
GO
ALTER TABLE [dbo].[usuario_deposito]  WITH CHECK ADD  CONSTRAINT [FK_usuario_deposito_usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[usuario_deposito] CHECK CONSTRAINT [FK_usuario_deposito_usuario]
GO
ALTER TABLE [dbo].[usuario_sucursal]  WITH CHECK ADD  CONSTRAINT [FK_usuario_sucursal_sucursal] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[sucursal] ([id])
GO
ALTER TABLE [dbo].[usuario_sucursal] CHECK CONSTRAINT [FK_usuario_sucursal_sucursal]
GO
ALTER TABLE [dbo].[usuario_sucursal]  WITH CHECK ADD  CONSTRAINT [FK_usuario_sucursal_usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[usuario_sucursal] CHECK CONSTRAINT [FK_usuario_sucursal_usuario]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_comprador] FOREIGN KEY([idComprador])
REFERENCES [dbo].[comprador] ([id])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_comprador]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_metodoDePago] FOREIGN KEY([idMetodoPago])
REFERENCES [dbo].[cMetodoPago] ([id])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_metodoDePago]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_tipoEntrega] FOREIGN KEY([idTipoEntrega])
REFERENCES [dbo].[cTipoEntrega] ([id])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_tipoEntrega]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_usuario]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_venta_estado] FOREIGN KEY([idEstado])
REFERENCES [dbo].[cVentaEstado] ([id])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_venta_estado]
GO
ALTER TABLE [dbo].[venta_detalle]  WITH CHECK ADD  CONSTRAINT [FK_venta_detalle_producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[producto] ([id])
GO
ALTER TABLE [dbo].[venta_detalle] CHECK CONSTRAINT [FK_venta_detalle_producto]
GO
ALTER TABLE [dbo].[venta_detalle]  WITH CHECK ADD  CONSTRAINT [FK_venta_detalle_venta] FOREIGN KEY([idVenta])
REFERENCES [dbo].[venta] ([id])
GO
ALTER TABLE [dbo].[venta_detalle] CHECK CONSTRAINT [FK_venta_detalle_venta]
GO
/****** Object:  StoredProcedure [dbo].[SP_Backup]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Backup]
@bkpPath varchar(max) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
BACKUP DATABASE openEnterprise
  TO DISK = 'C:\openEnterprise Backup\openEnterprise.bak' -- change this path obviously
  WITH INIT;
REVERT;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Restore_Step_1]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Restore_Step_1] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	ALTER DATABASE openEnterprise SET MULTI_USER WITH Rollback Immediate
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Restore_Step_2]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Restore_Step_2]
	-- Add the parameters for the stored procedure here
	@bkpPath varchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
		EXEC ('USE [master]');
	RESTORE DATABASE openEnterprise FROM DISK = @bkpPath WITH REPLACE;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Restore_Step_3]    Script Date: 3/17/2022 18:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Restore_Step_3]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
ALTER DATABASE openEnterprise SET Multi_User
END
GO
