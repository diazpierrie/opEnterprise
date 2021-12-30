USE [master]
GO
/****** Object:  Database [openEnterprise]    Script Date: 12/30/2021 15:58:14 ******/
CREATE DATABASE [openEnterprise]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'openEnterprise', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\openEnterprise.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'openEnterprise_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\openEnterprise_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [openEnterprise] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [openEnterprise].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [openEnterprise] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [openEnterprise] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [openEnterprise] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [openEnterprise] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [openEnterprise] SET ARITHABORT OFF 
GO
ALTER DATABASE [openEnterprise] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [openEnterprise] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [openEnterprise] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [openEnterprise] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [openEnterprise] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [openEnterprise] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [openEnterprise] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [openEnterprise] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [openEnterprise] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [openEnterprise] SET  DISABLE_BROKER 
GO
ALTER DATABASE [openEnterprise] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [openEnterprise] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [openEnterprise] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [openEnterprise] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [openEnterprise] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [openEnterprise] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [openEnterprise] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [openEnterprise] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [openEnterprise] SET  MULTI_USER 
GO
ALTER DATABASE [openEnterprise] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [openEnterprise] SET DB_CHAINING OFF 
GO
ALTER DATABASE [openEnterprise] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [openEnterprise] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [openEnterprise] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [openEnterprise] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [openEnterprise] SET QUERY_STORE = OFF
GO
USE [openEnterprise]
GO
/****** Object:  Table [dbo].[bitacora]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[cEstadoEnvio]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[cMetodoPago]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[cMotivoPenalizacion]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[comprador]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[control]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[cPedidoEstado]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[cTipoEntrega]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[cVentaEstado]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[deposito]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[deposito_producto]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[devolucion]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[devolucion_detalle]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[direccion]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[dvv]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[envio_deposito]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[envio_deposito_detalle]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[envio_sucursal]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[envio_sucursal_detalle]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[familia]    Script Date: 12/30/2021 15:58:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[familia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[dvh] [varchar](50) NOT NULL,
 CONSTRAINT [PK_familia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[familia_patente]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[idioma]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[pago]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[patente]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[pedido_deposito]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[pedido_deposito_detalle]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[pedido_proveedor]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[pedido_proveedor_detalle]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[perdida]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[perdida_detalle]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[producto]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[proveedor]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[proveedor_penalizacion]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[puesto]    Script Date: 12/30/2021 15:58:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[puesto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_puesto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[retiro_sucursal]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[sucursal]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[sucursal_producto]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[usuario]    Script Date: 12/30/2021 15:58:15 ******/
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
	[idPuesto] [int] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario_deposito]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[usuario_sucursal]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[venta]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  Table [dbo].[venta_detalle]    Script Date: 12/30/2021 15:58:15 ******/
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
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (100, CAST(N'2021-11-09T16:17:08.000' AS DateTime), N'Proveedor creado: ', N'{"CantidadErrores":0,"Nombre":"juan","Direccion":"juan 123","Mail":"juan@gmail.com","Telefono":"2135445","CodigoPostal":1788,"Activo":false,"Id":3}', N'Control', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (101, CAST(N'2021-11-09T16:17:08.000' AS DateTime), N'Digitos verificadores', N'Los Digitos verificadores se han actualizado', N'Info', 4)
GO
INSERT [dbo].[bitacora] ([id], [fecha], [titulo], [descripcion], [tipo], [idUsuario]) VALUES (102, CAST(N'2021-11-09T23:05:22.000' AS DateTime), N'Proveedor actualizado: ', N'{"CantidadErrores":0,"Nombre":"juancho","Direccion":"juan 456","Mail":"juancho@gmail.com","Telefono":"0303456","CodigoPostal":2000,"Activo":false,"Id":3}', N'Control', 4)
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
INSERT [dbo].[comprador] ([id], [nombre], [apellido], [dni], [mail], [idDireccion], [telefono], [esSocio], [activo]) VALUES (1, N'juan', N'juanes', 678378, N'juan@gmail.com', NULL, N'1789', 0, 1)
GO
INSERT [dbo].[comprador] ([id], [nombre], [apellido], [dni], [mail], [idDireccion], [telefono], [esSocio], [activo]) VALUES (2, N'ricardo', N'gomez', 5456787, N'ricardo@gmail.,com', NULL, N'2672', 0, 1)
GO
INSERT [dbo].[comprador] ([id], [nombre], [apellido], [dni], [mail], [idDireccion], [telefono], [esSocio], [activo]) VALUES (3, N'gjh', N'hjg', 687, N'fgh', NULL, N'576', 1, 1)
GO
INSERT [dbo].[comprador] ([id], [nombre], [apellido], [dni], [mail], [idDireccion], [telefono], [esSocio], [activo]) VALUES (4, N'Ricardo', N'Juanes', 26782, N'juankl@gmail.com', NULL, N'26726', 1, 1)
GO
SET IDENTITY_INSERT [dbo].[comprador] OFF
GO
SET IDENTITY_INSERT [dbo].[control] ON 
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1, 1, N'language', N'Idioma')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2, 2, N'language', N'Language')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3, 1, N'bitacore', N'log de sistema')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4, 2, N'bitacore', N'log')
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
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (61, 1, N'role', N'Permiso')
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
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3793, 10, N'language', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3794, 10, N'bitacore', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3795, 10, N'username', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3796, 10, N'password', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3797, 10, N'login', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3798, 10, N'updateDV', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3799, 10, N'employees', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3800, 10, N'rest_dv', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3801, 10, N'restore', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3802, 10, N'bkp_done', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3803, 10, N'restore_done', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3804, 10, N'login_failed', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3805, 10, N'login_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3806, 10, N'logout_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3807, 10, N'notification', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3808, 10, N'dvh_table', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3809, 10, N'error_row', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3810, 10, N'dvv_table', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3811, 10, N'error_contact_admin', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3812, 10, N'recognize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3813, 10, N'see_profile', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3814, 10, N'search', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3815, 10, N'name', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3816, 10, N'lastname', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3817, 10, N'save', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3818, 10, N'update', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3819, 10, N'new_pass', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3820, 10, N'personal_data', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3821, 10, N'error', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3822, 10, N'add_user', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3823, 10, N'role', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3824, 10, N'delete', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3825, 10, N'date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3826, 10, N'title', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3827, 10, N'description', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3828, 10, N'type', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3829, 10, N'valoration', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3830, 10, N'patents', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3831, 10, N'add', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3832, 10, N'edit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3833, 10, N'incorrect_data', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3834, 10, N'emblem', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3835, 10, N'recognized', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3836, 10, N'recognize_create_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3837, 10, N'see_recognize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3838, 10, N'last_recognizes', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3839, 10, N'boss', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3840, 10, N'suggest', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3841, 10, N'experience_sent', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3842, 10, N'sent', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3843, 10, N'received', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3844, 10, N'my_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3845, 10, N'sector_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3846, 10, N'finalize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3847, 10, N'not_finalized', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3848, 10, N'assign_new', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3849, 10, N'objective', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3850, 10, N'pick_valid_date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3851, 10, N'close_before', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3852, 10, N'employee_assigned', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3853, 10, N'level', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3854, 10, N'see_detail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3855, 10, N'open', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3856, 10, N'closed', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3857, 10, N'manage', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3858, 10, N'open_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3859, 10, N'closed_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3860, 10, N'objective_taken', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3861, 10, N'archive', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3862, 10, N'cant_recognize_myself', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3863, 10, N'cant_delete_my_family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3864, 10, N'position', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3865, 10, N'user', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3866, 10, N'reward', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3867, 10, N'created', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3868, 10, N'updated', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3869, 10, N'deleted', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3870, 10, N'appreciation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3871, 10, N'families', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3872, 10, N'emblems', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3873, 10, N'sectors', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3874, 10, N'positions', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3875, 10, N'rewards', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3876, 10, N'old_pass', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3877, 10, N'date_creation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3878, 10, N'date_close', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3879, 10, N'manage_family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3880, 10, N'filter', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3881, 10, N'recognizer', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3882, 10, N'select', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3883, 10, N'enter_date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3884, 10, N'please_add_level', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3885, 10, N'please_add_position', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3886, 10, N'please_add_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3887, 10, N'name_already_used', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3888, 10, N'help', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3889, 10, N'new_objective', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3890, 10, N'export_report', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3891, 10, N'telephone', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3892, 10, N'address', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3893, 10, N'zipcode', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3894, 10, N'mail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3895, 10, N'assign', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3896, 10, N'close', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3897, 10, N'unassign', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3898, 10, N'branches', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3899, 10, N'assignedBranches', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3900, 10, N'warehouses', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3901, 10, N'assignedWarehosues', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3902, 10, N'products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3903, 10, N'products_to_add', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3904, 10, N'no_warehouse_found', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3905, 10, N'no_branch_found', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3906, 10, N'choose', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3907, 10, N'set_up', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3908, 10, N'wrong_warehouse', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3909, 10, N'wrong_building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3910, 10, N'wrong_branch', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3911, 10, N'wrong_config', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3912, 10, N'remove', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3913, 10, N'remove_product', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3914, 10, N'create_client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3915, 10, N'member', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3916, 10, N'choose_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3917, 10, N'assign_complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3918, 10, N'complete_order', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3919, 10, N'create_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3920, 10, N'vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3921, 10, N'search_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3922, 10, N'street', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3923, 10, N'city', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3924, 10, N'state', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3925, 10, N'country', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3926, 10, N'add_to_cart', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3927, 10, N'empty_cart', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3928, 10, N'add_local_pickup', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3929, 10, N'remove_local_pickup', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3930, 10, N'empty_local_pickup', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3931, 10, N'dispatch_delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3932, 10, N'confirm_reception', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3933, 10, N'building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3934, 10, N'employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3935, 10, N'make_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3936, 10, N'search_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3937, 10, N'create_complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3938, 10, N'cancel_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3939, 10, N'make_order_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3940, 10, N'register_products_entry', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3941, 10, N'penalize_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3942, 10, N'check_inventory', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3943, 10, N'receive_payment', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3944, 10, N'check_deliveries', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3945, 10, N'receive_order_deposit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3946, 10, N'make_order_deposit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3947, 10, N'all', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3948, 10, N'configure_building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3949, 10, N'type_building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3950, 10, N'deposit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3951, 10, N'branch', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3952, 10, N'create_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3953, 10, N'modify_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3954, 10, N'delete_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3955, 10, N'manage_employees', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3956, 10, N'create', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3957, 10, N'modify', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3958, 10, N'job', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3959, 10, N'dni', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3960, 10, N'question_delete', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3961, 10, N'confirm_delete', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3962, 10, N'blocked', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3963, 10, N'amount_errors', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3964, 10, N'modify_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3965, 10, N'delete_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3966, 10, N'restore_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3967, 10, N'check_penalizations', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3968, 10, N'manage_vendors', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3969, 10, N'vendor_no_versions', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3970, 10, N'missing_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3971, 10, N'damaged_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3972, 10, N'incorrect_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3973, 10, N'late_delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3974, 10, N'no_delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3975, 10, N'complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3976, 10, N'question_penalize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3977, 10, N'motive', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3978, 10, N'confirm_penalization', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3979, 10, N'success_penalization', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3980, 10, N'success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3981, 10, N'code', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3982, 10, N'price', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3983, 10, N'amount_buy', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3984, 10, N'total_product', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3985, 10, N'total', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3986, 10, N'add_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3987, 10, N'finish_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3988, 10, N'stock', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3989, 10, N'please_add_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3990, 10, N'installment', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3991, 10, N'installments', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3992, 10, N'select_client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3993, 10, N'initiated', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3994, 10, N'discount', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3995, 10, N'branch_takeaway', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3996, 10, N'delivery_city', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3997, 10, N'delivery_province', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3998, 10, N'delivery_country', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3999, 10, N'amount_takeaway', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4000, 10, N'cash', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4001, 10, N'debit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4002, 10, N'credit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4003, 10, N'search_client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4004, 10, N'branch_delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4005, 10, N'client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4006, 10, N'delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4007, 10, N'payment_method', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4008, 10, N'yes', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4009, 10, N'no', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4010, 10, N'add_address', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4011, 10, N'success_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4012, 10, N'status', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4013, 10, N'product', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4014, 10, N'cost', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4015, 10, N'amount', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4016, 10, N'total_detail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4017, 10, N'product_bad_condition', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4018, 10, N'product_not_desired', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4019, 10, N'sale_no_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4020, 10, N'loss', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4021, 10, N'devolution', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4022, 10, N'choose_complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4023, 10, N'please_positive_number', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4024, 10, N'please_positive_number_or_less', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4025, 10, N'question_cancel_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4026, 10, N'confirmation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4027, 10, N'finish_order', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4028, 10, N'family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4029, 10, N'cashier', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4030, 10, N'delivery_receptions', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4031, 10, N'admin', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4032, 10, N'check_complaints', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4033, 10, N'inactive_user', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4034, 11, N'language', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4035, 11, N'bitacore', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4036, 11, N'username', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4037, 11, N'password', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4038, 11, N'login', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4039, 11, N'updateDV', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4040, 11, N'employees', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4041, 11, N'rest_dv', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4042, 11, N'restore', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4043, 11, N'bkp_done', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4044, 11, N'restore_done', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4045, 11, N'login_failed', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4046, 11, N'login_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4047, 11, N'logout_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4048, 11, N'notification', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4049, 11, N'dvh_table', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4050, 11, N'error_row', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4051, 11, N'dvv_table', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4052, 11, N'error_contact_admin', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4053, 11, N'recognize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4054, 11, N'see_profile', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4055, 11, N'search', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4056, 11, N'name', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4057, 11, N'lastname', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4058, 11, N'save', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4059, 11, N'update', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4060, 11, N'new_pass', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4061, 11, N'personal_data', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4062, 11, N'error', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4063, 11, N'add_user', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4064, 11, N'role', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4065, 11, N'delete', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4066, 11, N'date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4067, 11, N'title', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4068, 11, N'description', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4069, 11, N'type', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4070, 11, N'valoration', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4071, 11, N'patents', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4072, 11, N'add', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4073, 11, N'edit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4074, 11, N'incorrect_data', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4075, 11, N'emblem', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4076, 11, N'recognized', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4077, 11, N'recognize_create_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4078, 11, N'see_recognize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4079, 11, N'last_recognizes', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4080, 11, N'boss', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4081, 11, N'suggest', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4082, 11, N'experience_sent', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4083, 11, N'sent', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4084, 11, N'received', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4085, 11, N'my_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4086, 11, N'sector_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4087, 11, N'finalize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4088, 11, N'not_finalized', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4089, 11, N'assign_new', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4090, 11, N'objective', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4091, 11, N'pick_valid_date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4092, 11, N'close_before', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4093, 11, N'employee_assigned', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4094, 11, N'level', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4095, 11, N'see_detail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4096, 11, N'open', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4097, 11, N'closed', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4098, 11, N'manage', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4099, 11, N'open_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4100, 11, N'closed_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4101, 11, N'objective_taken', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4102, 11, N'archive', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4103, 11, N'cant_recognize_myself', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4104, 11, N'cant_delete_my_family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4105, 11, N'position', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4106, 11, N'user', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4107, 11, N'reward', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4108, 11, N'created', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4109, 11, N'updated', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4110, 11, N'deleted', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4111, 11, N'appreciation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4112, 11, N'families', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4113, 11, N'emblems', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4114, 11, N'sectors', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4115, 11, N'positions', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4116, 11, N'rewards', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4117, 11, N'old_pass', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4118, 11, N'date_creation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4119, 11, N'date_close', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4120, 11, N'manage_family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4121, 11, N'filter', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4122, 11, N'recognizer', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4123, 11, N'select', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4124, 11, N'enter_date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4125, 11, N'please_add_level', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4126, 11, N'please_add_position', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4127, 11, N'please_add_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4128, 11, N'name_already_used', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4129, 11, N'help', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4130, 11, N'new_objective', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4131, 11, N'export_report', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4132, 11, N'telephone', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4133, 11, N'address', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4134, 11, N'zipcode', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4135, 11, N'mail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4136, 11, N'assign', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4137, 11, N'close', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4138, 11, N'unassign', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4139, 11, N'branches', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4140, 11, N'assignedBranches', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4141, 11, N'warehouses', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4142, 11, N'assignedWarehosues', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4143, 11, N'products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4144, 11, N'products_to_add', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4145, 11, N'no_warehouse_found', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4146, 11, N'no_branch_found', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4147, 11, N'choose', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4148, 11, N'set_up', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4149, 11, N'wrong_warehouse', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4150, 11, N'wrong_building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4151, 11, N'wrong_branch', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4152, 11, N'wrong_config', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4153, 11, N'remove', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4154, 11, N'remove_product', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4155, 11, N'create_client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4156, 11, N'member', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4157, 11, N'choose_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4158, 11, N'assign_complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4159, 11, N'complete_order', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4160, 11, N'create_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4161, 11, N'vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4162, 11, N'search_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4163, 11, N'street', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4164, 11, N'city', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4165, 11, N'state', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4166, 11, N'country', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4167, 11, N'add_to_cart', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4168, 11, N'empty_cart', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4169, 11, N'add_local_pickup', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4170, 11, N'remove_local_pickup', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4171, 11, N'empty_local_pickup', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4172, 11, N'dispatch_delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4173, 11, N'confirm_reception', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4174, 11, N'building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4175, 11, N'employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4176, 11, N'make_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4177, 11, N'search_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4178, 11, N'create_complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4179, 11, N'cancel_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4180, 11, N'make_order_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4181, 11, N'register_products_entry', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4182, 11, N'penalize_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4183, 11, N'check_inventory', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4184, 11, N'receive_payment', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4185, 11, N'check_deliveries', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4186, 11, N'receive_order_deposit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4187, 11, N'make_order_deposit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4188, 11, N'all', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4189, 11, N'configure_building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4190, 11, N'type_building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4191, 11, N'deposit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4192, 11, N'branch', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4193, 11, N'create_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4194, 11, N'modify_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4195, 11, N'delete_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4196, 11, N'manage_employees', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4197, 11, N'create', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4198, 11, N'modify', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4199, 11, N'job', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4200, 11, N'dni', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4201, 11, N'question_delete', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4202, 11, N'confirm_delete', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4203, 11, N'blocked', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4204, 11, N'amount_errors', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4205, 11, N'modify_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4206, 11, N'delete_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4207, 11, N'restore_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4208, 11, N'check_penalizations', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4209, 11, N'manage_vendors', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4210, 11, N'vendor_no_versions', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4211, 11, N'missing_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4212, 11, N'damaged_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4213, 11, N'incorrect_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4214, 11, N'late_delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4215, 11, N'no_delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4216, 11, N'complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4217, 11, N'question_penalize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4218, 11, N'motive', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4219, 11, N'confirm_penalization', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4220, 11, N'success_penalization', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4221, 11, N'success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4222, 11, N'code', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4223, 11, N'price', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4224, 11, N'amount_buy', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4225, 11, N'total_product', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4226, 11, N'total', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4227, 11, N'add_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4228, 11, N'finish_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4229, 11, N'stock', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4230, 11, N'please_add_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4231, 11, N'installment', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4232, 11, N'installments', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4233, 11, N'select_client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4234, 11, N'initiated', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4235, 11, N'discount', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4236, 11, N'branch_takeaway', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4237, 11, N'delivery_city', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4238, 11, N'delivery_province', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4239, 11, N'delivery_country', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4240, 11, N'amount_takeaway', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4241, 11, N'cash', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4242, 11, N'debit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4243, 11, N'credit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4244, 11, N'search_client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4245, 11, N'branch_delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4246, 11, N'client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4247, 11, N'delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4248, 11, N'payment_method', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4249, 11, N'yes', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4250, 11, N'no', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4251, 11, N'add_address', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4252, 11, N'success_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4253, 11, N'status', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4254, 11, N'product', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4255, 11, N'cost', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4256, 11, N'amount', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4257, 11, N'total_detail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4258, 11, N'product_bad_condition', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4259, 11, N'product_not_desired', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4260, 11, N'sale_no_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4261, 11, N'loss', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4262, 11, N'devolution', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4263, 11, N'choose_complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4264, 11, N'please_positive_number', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4265, 11, N'please_positive_number_or_less', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4266, 11, N'question_cancel_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4267, 11, N'confirmation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4268, 11, N'finish_order', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4269, 11, N'family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4270, 11, N'cashier', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4271, 11, N'delivery_receptions', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4272, 11, N'admin', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4273, 11, N'check_complaints', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4274, 11, N'inactive_user', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4275, 12, N'language', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4276, 12, N'bitacore', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4277, 12, N'username', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4278, 12, N'password', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4279, 12, N'login', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4280, 12, N'updateDV', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4281, 12, N'employees', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4282, 12, N'rest_dv', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4283, 12, N'restore', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4284, 12, N'bkp_done', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4285, 12, N'restore_done', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4286, 12, N'login_failed', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4287, 12, N'login_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4288, 12, N'logout_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4289, 12, N'notification', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4290, 12, N'dvh_table', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4291, 12, N'error_row', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4292, 12, N'dvv_table', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4293, 12, N'error_contact_admin', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4294, 12, N'recognize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4295, 12, N'see_profile', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4296, 12, N'search', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4297, 12, N'name', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4298, 12, N'lastname', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4299, 12, N'save', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4300, 12, N'update', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4301, 12, N'new_pass', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4302, 12, N'personal_data', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4303, 12, N'error', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4304, 12, N'add_user', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4305, 12, N'role', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4306, 12, N'delete', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4307, 12, N'date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4308, 12, N'title', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4309, 12, N'description', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4310, 12, N'type', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4311, 12, N'valoration', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4312, 12, N'patents', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4313, 12, N'add', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4314, 12, N'edit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4315, 12, N'incorrect_data', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4316, 12, N'emblem', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4317, 12, N'recognized', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4318, 12, N'recognize_create_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4319, 12, N'see_recognize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4320, 12, N'last_recognizes', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4321, 12, N'boss', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4322, 12, N'suggest', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4323, 12, N'experience_sent', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4324, 12, N'sent', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4325, 12, N'received', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4326, 12, N'my_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4327, 12, N'sector_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4328, 12, N'finalize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4329, 12, N'not_finalized', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4330, 12, N'assign_new', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4331, 12, N'objective', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4332, 12, N'pick_valid_date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4333, 12, N'close_before', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4334, 12, N'employee_assigned', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4335, 12, N'level', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4336, 12, N'see_detail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4337, 12, N'open', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4338, 12, N'closed', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4339, 12, N'manage', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4340, 12, N'open_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4341, 12, N'closed_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4342, 12, N'objective_taken', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4343, 12, N'archive', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4344, 12, N'cant_recognize_myself', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4345, 12, N'cant_delete_my_family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4346, 12, N'position', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4347, 12, N'user', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4348, 12, N'reward', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4349, 12, N'created', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4350, 12, N'updated', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4351, 12, N'deleted', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4352, 12, N'appreciation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4353, 12, N'families', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4354, 12, N'emblems', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4355, 12, N'sectors', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4356, 12, N'positions', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4357, 12, N'rewards', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4358, 12, N'old_pass', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4359, 12, N'date_creation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4360, 12, N'date_close', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4361, 12, N'manage_family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4362, 12, N'filter', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4363, 12, N'recognizer', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4364, 12, N'select', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4365, 12, N'enter_date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4366, 12, N'please_add_level', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4367, 12, N'please_add_position', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4368, 12, N'please_add_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4369, 12, N'name_already_used', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4370, 12, N'help', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4371, 12, N'new_objective', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4372, 12, N'export_report', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4373, 12, N'telephone', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4374, 12, N'address', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4375, 12, N'zipcode', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4376, 12, N'mail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4377, 12, N'assign', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4378, 12, N'close', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4379, 12, N'unassign', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4380, 12, N'branches', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4381, 12, N'assignedBranches', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4382, 12, N'warehouses', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4383, 12, N'assignedWarehosues', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4384, 12, N'products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4385, 12, N'products_to_add', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4386, 12, N'no_warehouse_found', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4387, 12, N'no_branch_found', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4388, 12, N'choose', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4389, 12, N'set_up', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4390, 12, N'wrong_warehouse', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4391, 12, N'wrong_building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4392, 12, N'wrong_branch', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4393, 12, N'wrong_config', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4394, 12, N'remove', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4395, 12, N'remove_product', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4396, 12, N'create_client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4397, 12, N'member', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4398, 12, N'choose_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4399, 12, N'assign_complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4400, 12, N'complete_order', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4401, 12, N'create_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4402, 12, N'vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4403, 12, N'search_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4404, 12, N'street', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4405, 12, N'city', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4406, 12, N'state', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4407, 12, N'country', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4408, 12, N'add_to_cart', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4409, 12, N'empty_cart', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4410, 12, N'add_local_pickup', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4411, 12, N'remove_local_pickup', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4412, 12, N'empty_local_pickup', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4413, 12, N'dispatch_delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4414, 12, N'confirm_reception', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4415, 12, N'building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4416, 12, N'employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4417, 12, N'make_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4418, 12, N'search_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4419, 12, N'create_complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4420, 12, N'cancel_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4421, 12, N'make_order_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4422, 12, N'register_products_entry', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4423, 12, N'penalize_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4424, 12, N'check_inventory', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4425, 12, N'receive_payment', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4426, 12, N'check_deliveries', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4427, 12, N'receive_order_deposit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4428, 12, N'make_order_deposit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4429, 12, N'all', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4430, 12, N'configure_building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4431, 12, N'type_building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4432, 12, N'deposit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4433, 12, N'branch', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4434, 12, N'create_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4435, 12, N'modify_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4436, 12, N'delete_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4437, 12, N'manage_employees', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4438, 12, N'create', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4439, 12, N'modify', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4440, 12, N'job', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4441, 12, N'dni', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4442, 12, N'question_delete', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4443, 12, N'confirm_delete', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4444, 12, N'blocked', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4445, 12, N'amount_errors', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4446, 12, N'modify_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4447, 12, N'delete_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4448, 12, N'restore_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4449, 12, N'check_penalizations', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4450, 12, N'manage_vendors', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4451, 12, N'vendor_no_versions', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4452, 12, N'missing_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4453, 12, N'damaged_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4454, 12, N'incorrect_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4455, 12, N'late_delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4456, 12, N'no_delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4457, 12, N'complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4458, 12, N'question_penalize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4459, 12, N'motive', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4460, 12, N'confirm_penalization', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4461, 12, N'success_penalization', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4462, 12, N'success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4463, 12, N'code', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4464, 12, N'price', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4465, 12, N'amount_buy', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4466, 12, N'total_product', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4467, 12, N'total', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4468, 12, N'add_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4469, 12, N'finish_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4470, 12, N'stock', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4471, 12, N'please_add_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4472, 12, N'installment', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4473, 12, N'installments', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4474, 12, N'select_client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4475, 12, N'initiated', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4476, 12, N'discount', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4477, 12, N'branch_takeaway', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4478, 12, N'delivery_city', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4479, 12, N'delivery_province', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4480, 12, N'delivery_country', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4481, 12, N'amount_takeaway', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4482, 12, N'cash', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4483, 12, N'debit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4484, 12, N'credit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4485, 12, N'search_client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4486, 12, N'branch_delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4487, 12, N'client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4488, 12, N'delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4489, 12, N'payment_method', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4490, 12, N'yes', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4491, 12, N'no', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4492, 12, N'add_address', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4493, 12, N'success_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4494, 12, N'status', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4495, 12, N'product', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4496, 12, N'cost', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4497, 12, N'amount', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4498, 12, N'total_detail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4499, 12, N'product_bad_condition', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4500, 12, N'product_not_desired', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4501, 12, N'sale_no_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4502, 12, N'loss', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4503, 12, N'devolution', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4504, 12, N'choose_complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4505, 12, N'please_positive_number', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4506, 12, N'please_positive_number_or_less', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4507, 12, N'question_cancel_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4508, 12, N'confirmation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4509, 12, N'finish_order', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4510, 12, N'family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4511, 12, N'cashier', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4512, 12, N'delivery_receptions', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4513, 12, N'admin', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4514, 12, N'check_complaints', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4515, 12, N'inactive_user', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4516, 13, N'language', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4517, 13, N'bitacore', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4518, 13, N'username', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4519, 13, N'password', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4520, 13, N'login', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4521, 13, N'updateDV', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4522, 13, N'employees', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4523, 13, N'rest_dv', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4524, 13, N'restore', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4525, 13, N'bkp_done', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4526, 13, N'restore_done', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4527, 13, N'login_failed', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4528, 13, N'login_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4529, 13, N'logout_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4530, 13, N'notification', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4531, 13, N'dvh_table', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4532, 13, N'error_row', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4533, 13, N'dvv_table', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4534, 13, N'error_contact_admin', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4535, 13, N'recognize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4536, 13, N'see_profile', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4537, 13, N'search', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4538, 13, N'name', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4539, 13, N'lastname', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4540, 13, N'save', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4541, 13, N'update', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4542, 13, N'new_pass', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4543, 13, N'personal_data', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4544, 13, N'error', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4545, 13, N'add_user', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4546, 13, N'role', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4547, 13, N'delete', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4548, 13, N'date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4549, 13, N'title', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4550, 13, N'description', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4551, 13, N'type', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4552, 13, N'valoration', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4553, 13, N'patents', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4554, 13, N'add', N'Agregarnho')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4555, 13, N'edit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4556, 13, N'incorrect_data', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4557, 13, N'emblem', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4558, 13, N'recognized', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4559, 13, N'recognize_create_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4560, 13, N'see_recognize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4561, 13, N'last_recognizes', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4562, 13, N'boss', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4563, 13, N'suggest', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4564, 13, N'experience_sent', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4565, 13, N'sent', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4566, 13, N'received', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4567, 13, N'my_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4568, 13, N'sector_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4569, 13, N'finalize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4570, 13, N'not_finalized', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4571, 13, N'assign_new', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4572, 13, N'objective', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4573, 13, N'pick_valid_date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4574, 13, N'close_before', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4575, 13, N'employee_assigned', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4576, 13, N'level', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4577, 13, N'see_detail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4578, 13, N'open', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4579, 13, N'closed', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4580, 13, N'manage', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4581, 13, N'open_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4582, 13, N'closed_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4583, 13, N'objective_taken', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4584, 13, N'archive', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4585, 13, N'cant_recognize_myself', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4586, 13, N'cant_delete_my_family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4587, 13, N'position', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4588, 13, N'user', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4589, 13, N'reward', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4590, 13, N'created', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4591, 13, N'updated', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4592, 13, N'deleted', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4593, 13, N'appreciation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4594, 13, N'families', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4595, 13, N'emblems', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4596, 13, N'sectors', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4597, 13, N'positions', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4598, 13, N'rewards', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4599, 13, N'old_pass', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4600, 13, N'date_creation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4601, 13, N'date_close', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4602, 13, N'manage_family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4603, 13, N'filter', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4604, 13, N'recognizer', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4605, 13, N'select', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4606, 13, N'enter_date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4607, 13, N'please_add_level', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4608, 13, N'please_add_position', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4609, 13, N'please_add_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4610, 13, N'name_already_used', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4611, 13, N'help', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4612, 13, N'new_objective', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4613, 13, N'export_report', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4614, 13, N'telephone', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4615, 13, N'address', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4616, 13, N'zipcode', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4617, 13, N'mail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4618, 13, N'assign', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4619, 13, N'close', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4620, 13, N'unassign', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4621, 13, N'branches', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4622, 13, N'assignedBranches', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4623, 13, N'warehouses', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4624, 13, N'assignedWarehosues', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4625, 13, N'products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4626, 13, N'products_to_add', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4627, 13, N'no_warehouse_found', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4628, 13, N'no_branch_found', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4629, 13, N'choose', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4630, 13, N'set_up', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4631, 13, N'wrong_warehouse', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4632, 13, N'wrong_building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4633, 13, N'wrong_branch', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4634, 13, N'wrong_config', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4635, 13, N'remove', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4636, 13, N'remove_product', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4637, 13, N'create_client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4638, 13, N'member', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4639, 13, N'choose_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4640, 13, N'assign_complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4641, 13, N'complete_order', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4642, 13, N'create_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4643, 13, N'vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4644, 13, N'search_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4645, 13, N'street', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4646, 13, N'city', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4647, 13, N'state', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4648, 13, N'country', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4649, 13, N'add_to_cart', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4650, 13, N'empty_cart', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4651, 13, N'add_local_pickup', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4652, 13, N'remove_local_pickup', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4653, 13, N'empty_local_pickup', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4654, 13, N'dispatch_delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4655, 13, N'confirm_reception', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4656, 13, N'building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4657, 13, N'employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4658, 13, N'make_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4659, 13, N'search_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4660, 13, N'create_complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4661, 13, N'cancel_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4662, 13, N'make_order_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4663, 13, N'register_products_entry', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4664, 13, N'penalize_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4665, 13, N'check_inventory', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4666, 13, N'receive_payment', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4667, 13, N'check_deliveries', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4668, 13, N'receive_order_deposit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4669, 13, N'make_order_deposit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4670, 13, N'all', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4671, 13, N'configure_building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4672, 13, N'type_building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4673, 13, N'deposit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4674, 13, N'branch', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4675, 13, N'create_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4676, 13, N'modify_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4677, 13, N'delete_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4678, 13, N'manage_employees', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4679, 13, N'create', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4680, 13, N'modify', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4681, 13, N'job', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4682, 13, N'dni', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4683, 13, N'question_delete', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4684, 13, N'confirm_delete', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4685, 13, N'blocked', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4686, 13, N'amount_errors', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4687, 13, N'modify_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4688, 13, N'delete_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4689, 13, N'restore_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4690, 13, N'check_penalizations', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4691, 13, N'manage_vendors', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4692, 13, N'vendor_no_versions', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4693, 13, N'missing_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4694, 13, N'damaged_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4695, 13, N'incorrect_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4696, 13, N'late_delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4697, 13, N'no_delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4698, 13, N'complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4699, 13, N'question_penalize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4700, 13, N'motive', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4701, 13, N'confirm_penalization', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4702, 13, N'success_penalization', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4703, 13, N'success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4704, 13, N'code', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4705, 13, N'price', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4706, 13, N'amount_buy', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4707, 13, N'total_product', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4708, 13, N'total', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4709, 13, N'add_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4710, 13, N'finish_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4711, 13, N'stock', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4712, 13, N'please_add_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4713, 13, N'installment', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4714, 13, N'installments', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4715, 13, N'select_client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4716, 13, N'initiated', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4717, 13, N'discount', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4718, 13, N'branch_takeaway', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4719, 13, N'delivery_city', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4720, 13, N'delivery_province', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4721, 13, N'delivery_country', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4722, 13, N'amount_takeaway', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4723, 13, N'cash', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4724, 13, N'debit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4725, 13, N'credit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4726, 13, N'search_client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4727, 13, N'branch_delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4728, 13, N'client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4729, 13, N'delivery', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4730, 13, N'payment_method', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4731, 13, N'yes', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4732, 13, N'no', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4733, 13, N'add_address', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4734, 13, N'success_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4735, 13, N'status', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4736, 13, N'product', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4737, 13, N'cost', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4738, 13, N'amount', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4739, 13, N'total_detail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4740, 13, N'product_bad_condition', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4741, 13, N'product_not_desired', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4742, 13, N'sale_no_products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4743, 13, N'loss', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4744, 13, N'devolution', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4745, 13, N'choose_complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4746, 13, N'please_positive_number', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4747, 13, N'please_positive_number_or_less', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4748, 13, N'question_cancel_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4749, 13, N'confirmation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4750, 13, N'finish_order', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4751, 13, N'family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4752, 13, N'cashier', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4753, 13, N'delivery_receptions', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4754, 13, N'admin', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4755, 13, N'check_complaints', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4756, 13, N'inactive_user', N'')
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
SET IDENTITY_INSERT [dbo].[deposito] OFF
GO
SET IDENTITY_INSERT [dbo].[deposito_producto] ON 
GO
INSERT [dbo].[deposito_producto] ([id], [idDeposito], [idProducto], [stock]) VALUES (1, 1, 1, -6)
GO
INSERT [dbo].[deposito_producto] ([id], [idDeposito], [idProducto], [stock]) VALUES (3, 1, 3, 0)
GO
INSERT [dbo].[deposito_producto] ([id], [idDeposito], [idProducto], [stock]) VALUES (4, 2, 1, 3)
GO
INSERT [dbo].[deposito_producto] ([id], [idDeposito], [idProducto], [stock]) VALUES (5, 2, 3, 2)
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
INSERT [dbo].[dvv] ([id], [nombreTabla], [dvv]) VALUES (1, N'usuario', N'671894005')
GO
INSERT [dbo].[dvv] ([id], [nombreTabla], [dvv]) VALUES (2, N'producto', N'-2092459432')
GO
INSERT [dbo].[dvv] ([id], [nombreTabla], [dvv]) VALUES (3, N'familia', N'970202579')
GO
INSERT [dbo].[dvv] ([id], [nombreTabla], [dvv]) VALUES (4, N'deposito', N'-508331991')
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
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (20, 40, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (21, 41, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstado]) VALUES (22, 46, 1, 1, NULL, NULL, 1)
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
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (45, 1, 11)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (46, 2, 11)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (47, 3, 11)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (48, 4, 11)
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
SET IDENTITY_INSERT [dbo].[familia_patente] OFF
GO
SET IDENTITY_INSERT [dbo].[idioma] ON 
GO
INSERT [dbo].[idioma] ([id], [nombre], [activo]) VALUES (1, N'Castellano', 1)
GO
INSERT [dbo].[idioma] ([id], [nombre], [activo]) VALUES (2, N'English', 1)
GO
INSERT [dbo].[idioma] ([id], [nombre], [activo]) VALUES (9, N'Lenguaje sin nombre', 0)
GO
INSERT [dbo].[idioma] ([id], [nombre], [activo]) VALUES (10, N'Lenguaje sin nombre', 0)
GO
INSERT [dbo].[idioma] ([id], [nombre], [activo]) VALUES (11, N'Lenguaje sin nombre', 0)
GO
INSERT [dbo].[idioma] ([id], [nombre], [activo]) VALUES (12, N'Lenguaje sin nombre', 0)
GO
INSERT [dbo].[idioma] ([id], [nombre], [activo]) VALUES (13, N'Portugues', 1)
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
SET IDENTITY_INSERT [dbo].[pedido_deposito] OFF
GO
SET IDENTITY_INSERT [dbo].[pedido_deposito_detalle] ON 
GO
INSERT [dbo].[pedido_deposito_detalle] ([id], [idPedidoDeposito], [idDeposito], [idProducto], [costoUnitario], [cantidad]) VALUES (3, 2, 1, 1, CAST(300.00 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[pedido_deposito_detalle] ([id], [idPedidoDeposito], [idDeposito], [idProducto], [costoUnitario], [cantidad]) VALUES (4, 2, 2, 1, CAST(300.00 AS Decimal(14, 2)), 1)
GO
SET IDENTITY_INSERT [dbo].[pedido_deposito_detalle] OFF
GO
SET IDENTITY_INSERT [dbo].[pedido_proveedor] ON 
GO
INSERT [dbo].[pedido_proveedor] ([id], [idUsuario], [idProveedor], [idDeposito], [fechaPedido], [fechaRecepcion], [total], [idEstado]) VALUES (5, 4, 2, 1, CAST(N'2021-12-08T00:00:00.000' AS DateTime), CAST(N'2021-12-09T04:39:56.417' AS DateTime), CAST(600.00 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[pedido_proveedor] ([id], [idUsuario], [idProveedor], [idDeposito], [fechaPedido], [fechaRecepcion], [total], [idEstado]) VALUES (6, 4, 2, 1, CAST(N'2021-12-08T00:00:00.000' AS DateTime), CAST(N'2021-12-09T23:34:58.733' AS DateTime), CAST(900.00 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[pedido_proveedor] ([id], [idUsuario], [idProveedor], [idDeposito], [fechaPedido], [fechaRecepcion], [total], [idEstado]) VALUES (7, 4, 2, 1, CAST(N'2021-12-13T18:41:07.000' AS DateTime), CAST(N'2021-12-13T19:28:59.323' AS DateTime), CAST(900.00 AS Decimal(14, 2)), 2)
GO
INSERT [dbo].[pedido_proveedor] ([id], [idUsuario], [idProveedor], [idDeposito], [fechaPedido], [fechaRecepcion], [total], [idEstado]) VALUES (8, 4, 2, 1, CAST(N'2021-12-13T18:51:42.000' AS DateTime), NULL, CAST(600.00 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[pedido_proveedor] ([id], [idUsuario], [idProveedor], [idDeposito], [fechaPedido], [fechaRecepcion], [total], [idEstado]) VALUES (9, 4, 2, 1, CAST(N'2021-12-13T20:37:49.000' AS DateTime), NULL, CAST(1400.00 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[pedido_proveedor] ([id], [idUsuario], [idProveedor], [idDeposito], [fechaPedido], [fechaRecepcion], [total], [idEstado]) VALUES (11, 4, 2, 1, CAST(N'2021-12-21T00:55:34.000' AS DateTime), NULL, CAST(2100.00 AS Decimal(14, 2)), 1)
GO
INSERT [dbo].[pedido_proveedor] ([id], [idUsuario], [idProveedor], [idDeposito], [fechaPedido], [fechaRecepcion], [total], [idEstado]) VALUES (12, 12, 3, 1, CAST(N'2021-12-23T19:43:36.000' AS DateTime), CAST(N'2021-12-23T19:44:04.403' AS DateTime), CAST(2900.00 AS Decimal(14, 2)), 2)
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
INSERT [dbo].[proveedor] ([id], [nombre], [direccion], [codigoPostal], [mail], [telefono], [cantidadErrores], [activo]) VALUES (1, N'juanernesto', N'juan 16237', 2687, N'juan@gmail.com', N'67868', 0, 0)
GO
INSERT [dbo].[proveedor] ([id], [nombre], [direccion], [codigoPostal], [mail], [telefono], [cantidadErrores], [activo]) VALUES (2, N'ricardo', N'ricardo 5656', 21789, N'ricardo@gmail.com', N'678', 11, 1)
GO
INSERT [dbo].[proveedor] ([id], [nombre], [direccion], [codigoPostal], [mail], [telefono], [cantidadErrores], [activo]) VALUES (3, N'juancho', N'juan 456', 2000, N'juancho@gmail.com', N'0303456', 2, 1)
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
SET IDENTITY_INSERT [dbo].[proveedor_penalizacion] OFF
GO
SET IDENTITY_INSERT [dbo].[puesto] ON 
GO
INSERT [dbo].[puesto] ([id], [nombre]) VALUES (1, N'Empleado')
GO
INSERT [dbo].[puesto] ([id], [nombre]) VALUES (2, N'Jefe')
GO
INSERT [dbo].[puesto] ([id], [nombre]) VALUES (3, N'Gerente')
GO
INSERT [dbo].[puesto] ([id], [nombre]) VALUES (7, N'CEO')
GO
SET IDENTITY_INSERT [dbo].[puesto] OFF
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
INSERT [dbo].[sucursal_producto] ([id], [idSucursal], [idProducto], [stock]) VALUES (3, 1, 3, 9)
GO
INSERT [dbo].[sucursal_producto] ([id], [idSucursal], [idProducto], [stock]) VALUES (6, 1, 1, 2)
GO
SET IDENTITY_INSERT [dbo].[sucursal_producto] OFF
GO
SET IDENTITY_INSERT [dbo].[usuario] ON 
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [mail], [telefono], [nombreUsuario], [password], [fechaCreacion], [intentosFallidos], [dvh], [activo], [idFamilia], [idPuesto]) VALUES (4, N'Admindfdd', N'Admindfgdg', 38726254, N'admin@asd.com', N'1162538276', N'admin', N'nRy/sK5Z7ENvGsSwfcmLzw==', CAST(N'2019-04-09T00:00:00.000' AS DateTime), 0, N'1940732993', 1, 5, 3)
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [mail], [telefono], [nombreUsuario], [password], [fechaCreacion], [intentosFallidos], [dvh], [activo], [idFamilia], [idPuesto]) VALUES (5, N'ddfgdgffhg', N'juannhh', 256767, N'hgjgh', N'567567', N'inactive', N'hsjkjkahaskjhaskjh', CAST(N'2021-10-28T00:00:00.000' AS DateTime), 2, N'-1170743431', 0, 1, 1)
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [mail], [telefono], [nombreUsuario], [password], [fechaCreacion], [intentosFallidos], [dvh], [activo], [idFamilia], [idPuesto]) VALUES (6, N'dfgdfg', N'dfgdg', 456456, N'dfgdfg', N'4564', N'sales_not_assigned', N'nRy/sK5Z7ENvGsSwfcmLzw==', CAST(N'2021-10-28T00:00:00.000' AS DateTime), 0, N'-76968037', 1, 2, 2)
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [mail], [telefono], [nombreUsuario], [password], [fechaCreacion], [intentosFallidos], [dvh], [activo], [idFamilia], [idPuesto]) VALUES (7, N'dfgdfg', N'dfgdg', 456456, N'dfgdfg', N'4564', N'sales', N'nRy/sK5Z7ENvGsSwfcmLzw==', CAST(N'2021-10-28T00:00:00.000' AS DateTime), 0, N'1205920524', 1, 2, 2)
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [mail], [telefono], [nombreUsuario], [password], [fechaCreacion], [intentosFallidos], [dvh], [activo], [idFamilia], [idPuesto]) VALUES (8, N'dfgdfg', N'dfgdg', 456456, N'dfgdfg', N'4564', N'deposit_not_assigned', N'nRy/sK5Z7ENvGsSwfcmLzw==', CAST(N'2021-10-28T00:00:00.000' AS DateTime), 0, N'563568223', 1, 1, 1)
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [mail], [telefono], [nombreUsuario], [password], [fechaCreacion], [intentosFallidos], [dvh], [activo], [idFamilia], [idPuesto]) VALUES (9, N'dfgdfg', N'dfgdg', 456456, N'dfgdfg', N'4564', N'deposit', N'nRy/sK5Z7ENvGsSwfcmLzw==', CAST(N'2021-10-28T00:00:00.000' AS DateTime), 0, N'-845084217', 1, 1, 1)
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [mail], [telefono], [nombreUsuario], [password], [fechaCreacion], [intentosFallidos], [dvh], [activo], [idFamilia], [idPuesto]) VALUES (10, N'dfgdfg', N'dfgdg', 456456, N'dfgdfg', N'4564', N'delivery', N'nRy/sK5Z7ENvGsSwfcmLzw==', CAST(N'2021-10-28T00:00:00.000' AS DateTime), 0, N'267829017', 1, 3, 1)
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [mail], [telefono], [nombreUsuario], [password], [fechaCreacion], [intentosFallidos], [dvh], [activo], [idFamilia], [idPuesto]) VALUES (11, N'dfgdfg', N'dfgdg', 456456, N'dfgdfg', N'4564', N'cashier', N'nRy/sK5Z7ENvGsSwfcmLzw==', CAST(N'2021-10-28T00:00:00.000' AS DateTime), 0, N'1521706498', 1, 4, 1)
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [mail], [telefono], [nombreUsuario], [password], [fechaCreacion], [intentosFallidos], [dvh], [activo], [idFamilia], [idPuesto]) VALUES (12, N'dfgdfg', N'dfgdg', 456456, N'dfgdfg', N'4564', N'global', N'nRy/sK5Z7ENvGsSwfcmLzw==', CAST(N'2021-10-28T00:00:00.000' AS DateTime), 0, N'-781739148', 1, 7, 1)
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
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (6, 4, 3, 1, 1, 1, 1, CAST(N'2021-11-03T00:00:00.000' AS DateTime), CAST(49576.87 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (7, 4, 2, 1, 1, 1, 3, CAST(N'2021-11-03T00:00:00.000' AS DateTime), CAST(276751.52 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (10, 4, 1, 1, 3, 3, 2, CAST(N'2021-11-19T00:00:00.000' AS DateTime), CAST(343.66 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (11, 4, 1, 1, 3, 2, 1, CAST(N'2021-11-19T00:00:00.000' AS DateTime), CAST(343.66 AS Decimal(14, 2)))
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
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (38, 4, 1, 1, 1, 2, 1, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(5980.35 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (39, 4, 1, 1, 1, 2, 1, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (40, 4, 1, 1, 1, 2, 1, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (41, 4, 1, 1, 1, 2, 1, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (42, 4, 1, 1, 1, 2, 4, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (43, 4, 1, 1, 1, 2, 9, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (44, 4, 1, 1, 1, 2, 1, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
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
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (56, 12, 4, 0, 3, 2, 1, CAST(N'2021-12-23T00:00:00.000' AS DateTime), CAST(1169.63 AS Decimal(14, 2)))
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
SET IDENTITY_INSERT [dbo].[venta_detalle] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_producto]    Script Date: 12/30/2021 15:58:15 ******/
CREATE NONCLUSTERED INDEX [IX_producto] ON [dbo].[producto]
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_puesto] FOREIGN KEY([idPuesto])
REFERENCES [dbo].[puesto] ([id])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_puesto]
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
/****** Object:  StoredProcedure [dbo].[SP_Backup]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Restore_Step_1]    Script Date: 12/30/2021 15:58:15 ******/
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
	ALTER DATABASE openEnterprise SET Single_User WITH Rollback Immediate
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Restore_Step_2]    Script Date: 12/30/2021 15:58:15 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Restore_Step_3]    Script Date: 12/30/2021 15:58:15 ******/
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
USE [master]
GO
ALTER DATABASE [openEnterprise] SET  READ_WRITE 
GO
