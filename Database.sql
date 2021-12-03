USE [master]
GO
/****** Object:  Database [openEnterprise]    Script Date: 12/3/2021 20:54:03 ******/
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
/****** Object:  Table [dbo].[bitacora]    Script Date: 12/3/2021 20:54:03 ******/
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
/****** Object:  Table [dbo].[comprador]    Script Date: 12/3/2021 20:54:03 ******/
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
/****** Object:  Table [dbo].[control]    Script Date: 12/3/2021 20:54:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[control](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idIdioma] [int] NOT NULL,
	[tag] [varchar](50) NOT NULL,
	[texto] [varchar](50) NOT NULL,
 CONSTRAINT [PK_control] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cuota]    Script Date: 12/3/2021 20:54:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cuota](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idVenta] [int] NOT NULL,
	[montoCuota] [money] NOT NULL,
	[fuePago] [bit] NOT NULL,
 CONSTRAINT [PK_cuota] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deposito]    Script Date: 12/3/2021 20:54:03 ******/
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
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_Deposito] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deposito_producto]    Script Date: 12/3/2021 20:54:03 ******/
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
/****** Object:  Table [dbo].[devolucion]    Script Date: 12/3/2021 20:54:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[devolucion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idSucursal] [int] NOT NULL,
	[idUsuario] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_devolucion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[devolucion_detalle]    Script Date: 12/3/2021 20:54:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[devolucion_detalle](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idDevolucion] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [PK_devolucion_detalle] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[direccion]    Script Date: 12/3/2021 20:54:03 ******/
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
/****** Object:  Table [dbo].[dvv]    Script Date: 12/3/2021 20:54:03 ******/
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
/****** Object:  Table [dbo].[envio_deposito]    Script Date: 12/3/2021 20:54:03 ******/
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
	[idEstadoEnvio] [int] NOT NULL,
 CONSTRAINT [PK_envio_deposito] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[envio_deposito_detalle]    Script Date: 12/3/2021 20:54:03 ******/
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
/****** Object:  Table [dbo].[envio_sucursal]    Script Date: 12/3/2021 20:54:03 ******/
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
	[idEstadoEnvio] [int] NOT NULL,
 CONSTRAINT [PK_envio_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[envio_sucursal_detalle]    Script Date: 12/3/2021 20:54:03 ******/
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
/****** Object:  Table [dbo].[estadoEnvio]    Script Date: 12/3/2021 20:54:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estadoEnvio](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_EstadoEnvio] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[familia]    Script Date: 12/3/2021 20:54:03 ******/
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
/****** Object:  Table [dbo].[familia_patente]    Script Date: 12/3/2021 20:54:03 ******/
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
/****** Object:  Table [dbo].[idioma]    Script Date: 12/3/2021 20:54:03 ******/
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
/****** Object:  Table [dbo].[metodoPago]    Script Date: 12/3/2021 20:54:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[metodoPago](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_metodoDePago] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pago]    Script Date: 12/3/2021 20:54:03 ******/
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
/****** Object:  Table [dbo].[patente]    Script Date: 12/3/2021 20:54:03 ******/
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
/****** Object:  Table [dbo].[pedido_deposito]    Script Date: 12/3/2021 20:54:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedido_deposito](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NOT NULL,
	[idSucursal] [int] NOT NULL,
	[idDeposito] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_entrada_sucursal] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pedido_deposito_detalle]    Script Date: 12/3/2021 20:54:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedido_deposito_detalle](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idPedidoDeposito] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[costoUnitario] [decimal](14, 2) NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [PK_entrada_sucursal_detalle] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pedido_estado]    Script Date: 12/3/2021 20:54:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedido_estado](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_entrada_estado] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pedido_proveedor]    Script Date: 12/3/2021 20:54:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedido_proveedor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NOT NULL,
	[idProveedor] [int] NOT NULL,
	[idDeposito] [int] NOT NULL,
	[idEstado] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[total] [decimal](14, 2) NOT NULL,
 CONSTRAINT [PK_factura] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pedido_proveedor_detalle]    Script Date: 12/3/2021 20:54:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedido_proveedor_detalle](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idPedidoProveedor] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[costoUnitario] [decimal](14, 2) NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [PK_factura_detalle] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[perdida]    Script Date: 12/3/2021 20:54:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[perdida](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idSucursal] [int] NOT NULL,
	[idUsuario] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[total] [decimal](14, 2) NOT NULL,
 CONSTRAINT [PK_perdida] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[perdida_detalle]    Script Date: 12/3/2021 20:54:03 ******/
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
/****** Object:  Table [dbo].[producto]    Script Date: 12/3/2021 20:54:03 ******/
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
/****** Object:  Table [dbo].[proveedor]    Script Date: 12/3/2021 20:54:03 ******/
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
/****** Object:  Table [dbo].[puesto]    Script Date: 12/3/2021 20:54:03 ******/
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
/****** Object:  Table [dbo].[retiro_sucursal]    Script Date: 12/3/2021 20:54:03 ******/
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
/****** Object:  Table [dbo].[sector]    Script Date: 12/3/2021 20:54:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sector](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Sector] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sucursal]    Script Date: 12/3/2021 20:54:03 ******/
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
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_sucursal] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sucursal_producto]    Script Date: 12/3/2021 20:54:03 ******/
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
/****** Object:  Table [dbo].[tipoEntrega]    Script Date: 12/3/2021 20:54:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipoEntrega](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tipoEnvio] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 12/3/2021 20:54:03 ******/
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
	[idSector] [int] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario_deposito]    Script Date: 12/3/2021 20:54:03 ******/
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
/****** Object:  Table [dbo].[usuario_sucursal]    Script Date: 12/3/2021 20:54:03 ******/
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
/****** Object:  Table [dbo].[venta]    Script Date: 12/3/2021 20:54:03 ******/
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
/****** Object:  Table [dbo].[venta_detalle]    Script Date: 12/3/2021 20:54:03 ******/
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
/****** Object:  Table [dbo].[venta_estado]    Script Date: 12/3/2021 20:54:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta_estado](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_venta_estado] PRIMARY KEY CLUSTERED 
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
SET IDENTITY_INSERT [dbo].[bitacora] OFF
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
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (3, 1, N'bitacore', N'Bitácora')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (4, 2, N'bitacore', N'Binnacle')
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
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (48, 2, N'lastname', N'Lastname')
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
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1525, 3, N'language', N'fhgf')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1526, 3, N'bitacore', N'RICHARD')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1527, 3, N'username', N'usuario')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1528, 3, N'password', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1529, 3, N'login', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1530, 3, N'updateDV', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1531, 3, N'employees', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1532, 3, N'rest_dv', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1533, 3, N'restore', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1534, 3, N'bkp_done', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1535, 3, N'restore_done', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1536, 3, N'login_failed', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1537, 3, N'login_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1538, 3, N'logout_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1539, 3, N'notification', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1540, 3, N'dvh_table', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1541, 3, N'error_row', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1542, 3, N'dvv_table', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1543, 3, N'error_contact_admin', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1544, 3, N'recognize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1545, 3, N'see_profile', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1546, 3, N'search', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1547, 3, N'name', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1548, 3, N'lastname', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1549, 3, N'save', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1550, 3, N'update', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1551, 3, N'new_pass', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1552, 3, N'personal_data', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1553, 3, N'error', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1554, 3, N'add_user', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1555, 3, N'role', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1556, 3, N'delete', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1557, 3, N'date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1558, 3, N'title', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1559, 3, N'description', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1560, 3, N'type', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1561, 3, N'valoration', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1562, 3, N'patents', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1563, 3, N'add', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1564, 3, N'edit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1565, 3, N'incorrect_data', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1566, 3, N'emblem', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1567, 3, N'recognized', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1568, 3, N'recognize_create_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1569, 3, N'see_recognize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1570, 3, N'last_recognizes', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1571, 3, N'boss', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1572, 3, N'suggest', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1573, 3, N'experience_sent', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1574, 3, N'sent', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1575, 3, N'received', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1576, 3, N'my_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1577, 3, N'sector_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1578, 3, N'finalize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1579, 3, N'not_finalized', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1580, 3, N'assign_new', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1581, 3, N'objective', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1582, 3, N'pick_valid_date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1583, 3, N'close_before', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1584, 3, N'employee_assigned', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1585, 3, N'level', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1586, 3, N'see_detail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1587, 3, N'open', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1588, 3, N'closed', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1589, 3, N'manage', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1590, 3, N'open_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1591, 3, N'closed_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1592, 3, N'objective_taken', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1593, 3, N'archive', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1594, 3, N'cant_recognize_myself', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1595, 3, N'cant_delete_my_family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1596, 3, N'position', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1597, 3, N'user', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1598, 3, N'reward', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1599, 3, N'created', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1600, 3, N'updated', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1601, 3, N'deleted', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1602, 3, N'appreciation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1603, 3, N'families', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1604, 3, N'emblems', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1605, 3, N'sectors', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1606, 3, N'positions', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1607, 3, N'rewards', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1608, 3, N'old_pass', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1609, 3, N'date_creation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1610, 3, N'date_close', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1611, 3, N'manage_family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1612, 3, N'filter', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1613, 3, N'recognizer', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1614, 3, N'select', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1615, 3, N'enter_date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1616, 3, N'please_add_level', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1617, 3, N'please_add_position', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1618, 3, N'please_add_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1619, 3, N'name_already_used', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1620, 3, N'help', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1621, 3, N'new_objective', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1622, 3, N'export_report', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1623, 3, N'telephone', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1624, 3, N'address', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1625, 3, N'zipcode', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1626, 3, N'mail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1627, 3, N'assign', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1628, 3, N'close', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1629, 3, N'unassign', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1630, 3, N'branches', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1631, 3, N'assignedBranches', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1632, 3, N'warehouses', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1633, 3, N'assignedWarehosues', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1634, 3, N'products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1635, 3, N'products_to_add', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1636, 3, N'no_warehouse_found', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1637, 3, N'no_branch_found', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1638, 3, N'choose', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1639, 3, N'set_up', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1640, 3, N'wrong_warehouse', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1641, 3, N'wrong_building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1642, 3, N'wrong_branch', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1643, 3, N'wrong_config', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1644, 3, N'remove', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1645, 3, N'remove_product', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1646, 3, N'create_client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1647, 3, N'member', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1648, 3, N'choose_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1649, 3, N'assign_complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1650, 3, N'complete_order', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1651, 3, N'create_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1652, 3, N'vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1653, 3, N'search_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1654, 4, N'language', N'ROBERT')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1655, 4, N'bitacore', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1656, 4, N'username', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1657, 4, N'password', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1658, 4, N'login', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1659, 4, N'updateDV', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1660, 4, N'employees', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1661, 4, N'rest_dv', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1662, 4, N'restore', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1663, 4, N'bkp_done', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1664, 4, N'restore_done', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1665, 4, N'login_failed', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1666, 4, N'login_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1667, 4, N'logout_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1668, 4, N'notification', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1669, 4, N'dvh_table', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1670, 4, N'error_row', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1671, 4, N'dvv_table', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1672, 4, N'error_contact_admin', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1673, 4, N'recognize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1674, 4, N'see_profile', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1675, 4, N'search', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1676, 4, N'name', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1677, 4, N'lastname', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1678, 4, N'save', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1679, 4, N'update', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1680, 4, N'new_pass', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1681, 4, N'personal_data', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1682, 4, N'error', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1683, 4, N'add_user', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1684, 4, N'role', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1685, 4, N'delete', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1686, 4, N'date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1687, 4, N'title', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1688, 4, N'description', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1689, 4, N'type', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1690, 4, N'valoration', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1691, 4, N'patents', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1692, 4, N'add', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1693, 4, N'edit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1694, 4, N'incorrect_data', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1695, 4, N'emblem', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1696, 4, N'recognized', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1697, 4, N'recognize_create_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1698, 4, N'see_recognize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1699, 4, N'last_recognizes', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1700, 4, N'boss', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1701, 4, N'suggest', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1702, 4, N'experience_sent', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1703, 4, N'sent', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1704, 4, N'received', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1705, 4, N'my_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1706, 4, N'sector_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1707, 4, N'finalize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1708, 4, N'not_finalized', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1709, 4, N'assign_new', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1710, 4, N'objective', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1711, 4, N'pick_valid_date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1712, 4, N'close_before', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1713, 4, N'employee_assigned', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1714, 4, N'level', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1715, 4, N'see_detail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1716, 4, N'open', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1717, 4, N'closed', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1718, 4, N'manage', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1719, 4, N'open_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1720, 4, N'closed_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1721, 4, N'objective_taken', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1722, 4, N'archive', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1723, 4, N'cant_recognize_myself', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1724, 4, N'cant_delete_my_family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1725, 4, N'position', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1726, 4, N'user', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1727, 4, N'reward', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1728, 4, N'created', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1729, 4, N'updated', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1730, 4, N'deleted', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1731, 4, N'appreciation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1732, 4, N'families', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1733, 4, N'emblems', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1734, 4, N'sectors', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1735, 4, N'positions', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1736, 4, N'rewards', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1737, 4, N'old_pass', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1738, 4, N'date_creation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1739, 4, N'date_close', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1740, 4, N'manage_family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1741, 4, N'filter', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1742, 4, N'recognizer', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1743, 4, N'select', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1744, 4, N'enter_date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1745, 4, N'please_add_level', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1746, 4, N'please_add_position', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1747, 4, N'please_add_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1748, 4, N'name_already_used', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1749, 4, N'help', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1750, 4, N'new_objective', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1751, 4, N'export_report', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1752, 4, N'telephone', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1753, 4, N'address', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1754, 4, N'zipcode', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1755, 4, N'mail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1756, 4, N'assign', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1757, 4, N'close', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1758, 4, N'unassign', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1759, 4, N'branches', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1760, 4, N'assignedBranches', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1761, 4, N'warehouses', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1762, 4, N'assignedWarehosues', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1763, 4, N'products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1764, 4, N'products_to_add', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1765, 4, N'no_warehouse_found', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1766, 4, N'no_branch_found', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1767, 4, N'choose', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1768, 4, N'set_up', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1769, 4, N'wrong_warehouse', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1770, 4, N'wrong_building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1771, 4, N'wrong_branch', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1772, 4, N'wrong_config', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1773, 4, N'remove', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1774, 4, N'remove_product', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1775, 4, N'create_client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1776, 4, N'member', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1777, 4, N'choose_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1778, 4, N'assign_complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1779, 4, N'complete_order', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1780, 4, N'create_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1781, 4, N'vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1782, 4, N'search_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1783, 5, N'language', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1784, 5, N'bitacore', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1785, 5, N'username', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1786, 5, N'password', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1787, 5, N'login', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1788, 5, N'updateDV', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1789, 5, N'employees', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1790, 5, N'rest_dv', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1791, 5, N'restore', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1792, 5, N'bkp_done', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1793, 5, N'restore_done', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1794, 5, N'login_failed', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1795, 5, N'login_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1796, 5, N'logout_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1797, 5, N'notification', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1798, 5, N'dvh_table', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1799, 5, N'error_row', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1800, 5, N'dvv_table', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1801, 5, N'error_contact_admin', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1802, 5, N'recognize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1803, 5, N'see_profile', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1804, 5, N'search', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1805, 5, N'name', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1806, 5, N'lastname', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1807, 5, N'save', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1808, 5, N'update', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1809, 5, N'new_pass', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1810, 5, N'personal_data', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1811, 5, N'error', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1812, 5, N'add_user', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1813, 5, N'role', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1814, 5, N'delete', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1815, 5, N'date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1816, 5, N'title', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1817, 5, N'description', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1818, 5, N'type', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1819, 5, N'valoration', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1820, 5, N'patents', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1821, 5, N'add', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1822, 5, N'edit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1823, 5, N'incorrect_data', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1824, 5, N'emblem', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1825, 5, N'recognized', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1826, 5, N'recognize_create_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1827, 5, N'see_recognize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1828, 5, N'last_recognizes', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1829, 5, N'boss', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1830, 5, N'suggest', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1831, 5, N'experience_sent', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1832, 5, N'sent', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1833, 5, N'received', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1834, 5, N'my_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1835, 5, N'sector_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1836, 5, N'finalize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1837, 5, N'not_finalized', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1838, 5, N'assign_new', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1839, 5, N'objective', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1840, 5, N'pick_valid_date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1841, 5, N'close_before', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1842, 5, N'employee_assigned', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1843, 5, N'level', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1844, 5, N'see_detail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1845, 5, N'open', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1846, 5, N'closed', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1847, 5, N'manage', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1848, 5, N'open_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1849, 5, N'closed_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1850, 5, N'objective_taken', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1851, 5, N'archive', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1852, 5, N'cant_recognize_myself', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1853, 5, N'cant_delete_my_family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1854, 5, N'position', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1855, 5, N'user', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1856, 5, N'reward', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1857, 5, N'created', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1858, 5, N'updated', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1859, 5, N'deleted', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1860, 5, N'appreciation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1861, 5, N'families', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1862, 5, N'emblems', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1863, 5, N'sectors', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1864, 5, N'positions', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1865, 5, N'rewards', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1866, 5, N'old_pass', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1867, 5, N'date_creation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1868, 5, N'date_close', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1869, 5, N'manage_family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1870, 5, N'filter', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1871, 5, N'recognizer', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1872, 5, N'select', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1873, 5, N'enter_date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1874, 5, N'please_add_level', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1875, 5, N'please_add_position', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1876, 5, N'please_add_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1877, 5, N'name_already_used', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1878, 5, N'help', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1879, 5, N'new_objective', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1880, 5, N'export_report', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1881, 5, N'telephone', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1882, 5, N'address', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1883, 5, N'zipcode', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1884, 5, N'mail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1885, 5, N'assign', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1886, 5, N'close', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1887, 5, N'unassign', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1888, 5, N'branches', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1889, 5, N'assignedBranches', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1890, 5, N'warehouses', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1891, 5, N'assignedWarehosues', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1892, 5, N'products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1893, 5, N'products_to_add', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1894, 5, N'no_warehouse_found', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1895, 5, N'no_branch_found', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1896, 5, N'choose', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1897, 5, N'set_up', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1898, 5, N'wrong_warehouse', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1899, 5, N'wrong_building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1900, 5, N'wrong_branch', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1901, 5, N'wrong_config', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1902, 5, N'remove', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1903, 5, N'remove_product', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1904, 5, N'create_client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1905, 5, N'member', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1906, 5, N'choose_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1907, 5, N'assign_complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1908, 5, N'complete_order', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1909, 5, N'create_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1910, 5, N'vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1911, 5, N'search_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1912, 6, N'language', N'gfhjg')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1913, 6, N'bitacore', N'ghjgjh')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1914, 6, N'username', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1915, 6, N'password', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1916, 6, N'login', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1917, 6, N'updateDV', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1918, 6, N'employees', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1919, 6, N'rest_dv', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1920, 6, N'restore', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1921, 6, N'bkp_done', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1922, 6, N'restore_done', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1923, 6, N'login_failed', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1924, 6, N'login_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1925, 6, N'logout_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1926, 6, N'notification', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1927, 6, N'dvh_table', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1928, 6, N'error_row', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1929, 6, N'dvv_table', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1930, 6, N'error_contact_admin', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1931, 6, N'recognize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1932, 6, N'see_profile', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1933, 6, N'search', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1934, 6, N'name', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1935, 6, N'lastname', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1936, 6, N'save', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1937, 6, N'update', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1938, 6, N'new_pass', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1939, 6, N'personal_data', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1940, 6, N'error', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1941, 6, N'add_user', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1942, 6, N'role', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1943, 6, N'delete', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1944, 6, N'date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1945, 6, N'title', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1946, 6, N'description', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1947, 6, N'type', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1948, 6, N'valoration', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1949, 6, N'patents', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1950, 6, N'add', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1951, 6, N'edit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1952, 6, N'incorrect_data', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1953, 6, N'emblem', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1954, 6, N'recognized', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1955, 6, N'recognize_create_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1956, 6, N'see_recognize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1957, 6, N'last_recognizes', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1958, 6, N'boss', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1959, 6, N'suggest', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1960, 6, N'experience_sent', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1961, 6, N'sent', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1962, 6, N'received', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1963, 6, N'my_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1964, 6, N'sector_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1965, 6, N'finalize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1966, 6, N'not_finalized', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1967, 6, N'assign_new', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1968, 6, N'objective', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1969, 6, N'pick_valid_date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1970, 6, N'close_before', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1971, 6, N'employee_assigned', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1972, 6, N'level', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1973, 6, N'see_detail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1974, 6, N'open', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1975, 6, N'closed', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1976, 6, N'manage', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1977, 6, N'open_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1978, 6, N'closed_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1979, 6, N'objective_taken', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1980, 6, N'archive', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1981, 6, N'cant_recognize_myself', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1982, 6, N'cant_delete_my_family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1983, 6, N'position', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1984, 6, N'user', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1985, 6, N'reward', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1986, 6, N'created', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1987, 6, N'updated', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1988, 6, N'deleted', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1989, 6, N'appreciation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1990, 6, N'families', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1991, 6, N'emblems', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1992, 6, N'sectors', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1993, 6, N'positions', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1994, 6, N'rewards', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1995, 6, N'old_pass', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1996, 6, N'date_creation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1997, 6, N'date_close', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1998, 6, N'manage_family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (1999, 6, N'filter', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2000, 6, N'recognizer', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2001, 6, N'select', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2002, 6, N'enter_date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2003, 6, N'please_add_level', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2004, 6, N'please_add_position', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2005, 6, N'please_add_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2006, 6, N'name_already_used', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2007, 6, N'help', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2008, 6, N'new_objective', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2009, 6, N'export_report', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2010, 6, N'telephone', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2011, 6, N'address', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2012, 6, N'zipcode', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2013, 6, N'mail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2014, 6, N'assign', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2015, 6, N'close', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2016, 6, N'unassign', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2017, 6, N'branches', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2018, 6, N'assignedBranches', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2019, 6, N'warehouses', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2020, 6, N'assignedWarehosues', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2021, 6, N'products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2022, 6, N'products_to_add', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2023, 6, N'no_warehouse_found', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2024, 6, N'no_branch_found', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2025, 6, N'choose', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2026, 6, N'set_up', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2027, 6, N'wrong_warehouse', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2028, 6, N'wrong_building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2029, 6, N'wrong_branch', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2030, 6, N'wrong_config', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2031, 6, N'remove', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2032, 6, N'remove_product', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2033, 6, N'create_client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2034, 6, N'member', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2035, 6, N'choose_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2036, 6, N'assign_complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2037, 6, N'complete_order', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2038, 6, N'create_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2039, 6, N'vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2040, 6, N'search_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2041, 7, N'language', N'ghjg')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2042, 7, N'bitacore', N'ghjgj')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2043, 7, N'username', N'gjhgjh')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2044, 7, N'password', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2045, 7, N'login', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2046, 7, N'updateDV', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2047, 7, N'employees', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2048, 7, N'rest_dv', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2049, 7, N'restore', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2050, 7, N'bkp_done', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2051, 7, N'restore_done', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2052, 7, N'login_failed', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2053, 7, N'login_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2054, 7, N'logout_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2055, 7, N'notification', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2056, 7, N'dvh_table', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2057, 7, N'error_row', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2058, 7, N'dvv_table', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2059, 7, N'error_contact_admin', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2060, 7, N'recognize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2061, 7, N'see_profile', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2062, 7, N'search', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2063, 7, N'name', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2064, 7, N'lastname', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2065, 7, N'save', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2066, 7, N'update', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2067, 7, N'new_pass', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2068, 7, N'personal_data', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2069, 7, N'error', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2070, 7, N'add_user', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2071, 7, N'role', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2072, 7, N'delete', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2073, 7, N'date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2074, 7, N'title', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2075, 7, N'description', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2076, 7, N'type', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2077, 7, N'valoration', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2078, 7, N'patents', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2079, 7, N'add', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2080, 7, N'edit', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2081, 7, N'incorrect_data', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2082, 7, N'emblem', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2083, 7, N'recognized', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2084, 7, N'recognize_create_success', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2085, 7, N'see_recognize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2086, 7, N'last_recognizes', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2087, 7, N'boss', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2088, 7, N'suggest', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2089, 7, N'experience_sent', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2090, 7, N'sent', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2091, 7, N'received', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2092, 7, N'my_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2093, 7, N'sector_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2094, 7, N'finalize', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2095, 7, N'not_finalized', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2096, 7, N'assign_new', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2097, 7, N'objective', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2098, 7, N'pick_valid_date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2099, 7, N'close_before', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2100, 7, N'employee_assigned', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2101, 7, N'level', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2102, 7, N'see_detail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2103, 7, N'open', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2104, 7, N'closed', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2105, 7, N'manage', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2106, 7, N'open_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2107, 7, N'closed_objectives', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2108, 7, N'objective_taken', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2109, 7, N'archive', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2110, 7, N'cant_recognize_myself', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2111, 7, N'cant_delete_my_family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2112, 7, N'position', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2113, 7, N'user', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2114, 7, N'reward', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2115, 7, N'created', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2116, 7, N'updated', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2117, 7, N'deleted', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2118, 7, N'appreciation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2119, 7, N'families', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2120, 7, N'emblems', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2121, 7, N'sectors', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2122, 7, N'positions', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2123, 7, N'rewards', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2124, 7, N'old_pass', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2125, 7, N'date_creation', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2126, 7, N'date_close', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2127, 7, N'manage_family', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2128, 7, N'filter', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2129, 7, N'recognizer', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2130, 7, N'select', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2131, 7, N'enter_date', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2132, 7, N'please_add_level', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2133, 7, N'please_add_position', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2134, 7, N'please_add_employee', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2135, 7, N'name_already_used', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2136, 7, N'help', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2137, 7, N'new_objective', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2138, 7, N'export_report', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2139, 7, N'telephone', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2140, 7, N'address', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2141, 7, N'zipcode', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2142, 7, N'mail', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2143, 7, N'assign', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2144, 7, N'close', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2145, 7, N'unassign', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2146, 7, N'branches', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2147, 7, N'assignedBranches', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2148, 7, N'warehouses', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2149, 7, N'assignedWarehosues', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2150, 7, N'products', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2151, 7, N'products_to_add', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2152, 7, N'no_warehouse_found', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2153, 7, N'no_branch_found', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2154, 7, N'choose', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2155, 7, N'set_up', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2156, 7, N'wrong_warehouse', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2157, 7, N'wrong_building', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2158, 7, N'wrong_branch', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2159, 7, N'wrong_config', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2160, 7, N'remove', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2161, 7, N'remove_product', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2162, 7, N'create_client', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2163, 7, N'member', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2164, 7, N'choose_sale', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2165, 7, N'assign_complaint', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2166, 7, N'complete_order', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2167, 7, N'create_vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2168, 7, N'vendor', N'')
GO
INSERT [dbo].[control] ([id], [idIdioma], [tag], [texto]) VALUES (2169, 7, N'search_vendor', N'')
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
SET IDENTITY_INSERT [dbo].[control] OFF
GO
SET IDENTITY_INSERT [dbo].[deposito] ON 
GO
INSERT [dbo].[deposito] ([id], [nombre], [direccion], [mail], [codigoPostal], [telefono], [activo]) VALUES (1, N'Almagro', N'Alem 253', N'almgaro@nsj.com', 1032, N'25671228', 1)
GO
INSERT [dbo].[deposito] ([id], [nombre], [direccion], [mail], [codigoPostal], [telefono], [activo]) VALUES (2, N'Recoleta', N'Roca 124', N'recolata@nsj.com', 1098, N'2571262', 1)
GO
SET IDENTITY_INSERT [dbo].[deposito] OFF
GO
SET IDENTITY_INSERT [dbo].[deposito_producto] ON 
GO
INSERT [dbo].[deposito_producto] ([id], [idDeposito], [idProducto], [stock]) VALUES (1, 1, 1, 2)
GO
INSERT [dbo].[deposito_producto] ([id], [idDeposito], [idProducto], [stock]) VALUES (3, 1, 3, 2)
GO
SET IDENTITY_INSERT [dbo].[deposito_producto] OFF
GO
SET IDENTITY_INSERT [dbo].[devolucion] ON 
GO
INSERT [dbo].[devolucion] ([id], [idSucursal], [idUsuario], [fecha]) VALUES (1, 1, 4, CAST(N'2021-11-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[devolucion] ([id], [idSucursal], [idUsuario], [fecha]) VALUES (2, 1, 4, CAST(N'2021-11-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[devolucion] ([id], [idSucursal], [idUsuario], [fecha]) VALUES (3, 1, 4, CAST(N'2021-11-04T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[devolucion] OFF
GO
SET IDENTITY_INSERT [dbo].[devolucion_detalle] ON 
GO
INSERT [dbo].[devolucion_detalle] ([id], [idDevolucion], [cantidad]) VALUES (1, 1, 14)
GO
INSERT [dbo].[devolucion_detalle] ([id], [idDevolucion], [cantidad]) VALUES (2, 2, 14)
GO
INSERT [dbo].[devolucion_detalle] ([id], [idDevolucion], [cantidad]) VALUES (3, 2, 14)
GO
INSERT [dbo].[devolucion_detalle] ([id], [idDevolucion], [cantidad]) VALUES (4, 3, 14)
GO
INSERT [dbo].[devolucion_detalle] ([id], [idDevolucion], [cantidad]) VALUES (5, 3, 14)
GO
INSERT [dbo].[devolucion_detalle] ([id], [idDevolucion], [cantidad]) VALUES (6, 3, 14)
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
INSERT [dbo].[dvv] ([id], [nombreTabla], [dvv]) VALUES (1, N'usuario', N'-591672669')
GO
SET IDENTITY_INSERT [dbo].[dvv] OFF
GO
SET IDENTITY_INSERT [dbo].[envio_deposito] ON 
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (1, 22, 1, 1, CAST(N'2021-11-23T20:09:06.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (2, 23, 1, 1, CAST(N'2021-11-23T20:10:18.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (3, 24, 1, 1, CAST(N'2021-11-23T20:10:46.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (4, 25, 1, 1, CAST(N'2021-11-23T20:17:54.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (5, 32, 1, 1, CAST(N'2021-11-23T23:39:03.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (6, 33, 1, 1, CAST(N'2021-11-23T23:40:04.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (8, 37, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (9, 38, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (10, 39, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (11, 40, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (12, 41, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (13, 42, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (14, 43, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (15, 44, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (16, 45, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (17, 46, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (18, 47, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (19, 50, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (20, 52, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (21, 53, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (22, 54, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_deposito] ([id], [idVenta], [idDireccion], [idDeposito], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (23, 55, 1, 1, NULL, NULL, 1)
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
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (4, 17, 1, 1, CAST(N'2021-11-19T15:31:35.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (5, 18, 1, 1, CAST(N'2021-11-23T16:33:44.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (6, 19, 1, 1, CAST(N'2021-11-23T20:00:53.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (7, 20, 1, 1, CAST(N'2021-11-23T20:05:21.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (8, 21, 1, 1, CAST(N'2021-11-23T20:07:59.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (9, 22, 1, 1, CAST(N'2021-11-23T20:09:05.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (10, 23, 1, 1, CAST(N'2021-11-23T20:10:18.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (11, 24, 1, 1, CAST(N'2021-11-23T20:10:45.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (12, 25, 1, 1, CAST(N'2021-11-23T20:17:54.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (13, 31, 1, 1, CAST(N'2021-11-23T22:28:06.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (14, 32, 1, 1, CAST(N'2021-11-23T23:39:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (15, 33, 1, 1, CAST(N'2021-11-23T23:40:04.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (16, 34, 1, 1, CAST(N'2021-11-24T20:58:13.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (18, 38, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (19, 39, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (20, 40, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (21, 41, 1, 1, NULL, NULL, 1)
GO
INSERT [dbo].[envio_sucursal] ([id], [idVenta], [idDireccion], [idSucursal], [fechaSalida], [fechaLlegada], [idEstadoEnvio]) VALUES (22, 46, 1, 1, NULL, NULL, 1)
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
SET IDENTITY_INSERT [dbo].[estadoEnvio] ON 
GO
INSERT [dbo].[estadoEnvio] ([id], [descripcion]) VALUES (1, N'Iniciado')
GO
INSERT [dbo].[estadoEnvio] ([id], [descripcion]) VALUES (2, N'En progreso')
GO
INSERT [dbo].[estadoEnvio] ([id], [descripcion]) VALUES (3, N'Completado')
GO
SET IDENTITY_INSERT [dbo].[estadoEnvio] OFF
GO
SET IDENTITY_INSERT [dbo].[familia] ON 
GO
INSERT [dbo].[familia] ([id], [nombre], [dvh]) VALUES (1, N'Empleado', N'-2024180132')
GO
INSERT [dbo].[familia] ([id], [nombre], [dvh]) VALUES (2, N'Tecnico', N'1980924006')
GO
INSERT [dbo].[familia] ([id], [nombre], [dvh]) VALUES (3, N'Ejecutivo', N'1757077604')
GO
INSERT [dbo].[familia] ([id], [nombre], [dvh]) VALUES (4, N'Admin', N'1168926920')
GO
INSERT [dbo].[familia] ([id], [nombre], [dvh]) VALUES (5, N'Jefe', N'-449729936')
GO
SET IDENTITY_INSERT [dbo].[familia] OFF
GO
SET IDENTITY_INSERT [dbo].[familia_patente] ON 
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (1, 4, 1)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (2, 4, 2)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (3, 4, 3)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (4, 4, 4)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (5, 4, 5)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (6, 4, 6)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (7, 4, 7)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (8, 4, 8)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (9, 4, 9)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (10, 4, 10)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (11, 4, 11)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (12, 4, 12)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (13, 1, 12)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (14, 5, 12)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (15, 2, 2)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (16, 2, 3)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (17, 2, 4)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (18, 2, 5)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (19, 2, 6)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (20, 2, 7)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (21, 2, 8)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (22, 2, 9)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (23, 2, 10)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (24, 2, 11)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (25, 3, 1)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (26, 3, 2)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (27, 3, 3)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (28, 3, 4)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (29, 3, 5)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (30, 3, 6)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (31, 3, 7)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (32, 3, 8)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (33, 3, 9)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (34, 3, 10)
GO
INSERT [dbo].[familia_patente] ([id], [idFamilia], [idPatente]) VALUES (35, 3, 11)
GO
SET IDENTITY_INSERT [dbo].[familia_patente] OFF
GO
SET IDENTITY_INSERT [dbo].[idioma] ON 
GO
INSERT [dbo].[idioma] ([id], [nombre], [activo]) VALUES (1, N'Castellano', 1)
GO
INSERT [dbo].[idioma] ([id], [nombre], [activo]) VALUES (2, N'English', 1)
GO
INSERT [dbo].[idioma] ([id], [nombre], [activo]) VALUES (3, N'test', 0)
GO
INSERT [dbo].[idioma] ([id], [nombre], [activo]) VALUES (4, N'ttt', 0)
GO
INSERT [dbo].[idioma] ([id], [nombre], [activo]) VALUES (5, N'ttest', 0)
GO
INSERT [dbo].[idioma] ([id], [nombre], [activo]) VALUES (6, N'Lenguaje ', 0)
GO
INSERT [dbo].[idioma] ([id], [nombre], [activo]) VALUES (7, N'Lengu', 0)
GO
SET IDENTITY_INSERT [dbo].[idioma] OFF
GO
SET IDENTITY_INSERT [dbo].[metodoPago] ON 
GO
INSERT [dbo].[metodoPago] ([id], [nombre]) VALUES (1, N'Efectivo')
GO
INSERT [dbo].[metodoPago] ([id], [nombre]) VALUES (2, N'Debito')
GO
INSERT [dbo].[metodoPago] ([id], [nombre]) VALUES (3, N'Credito')
GO
SET IDENTITY_INSERT [dbo].[metodoPago] OFF
GO
SET IDENTITY_INSERT [dbo].[pago] ON 
GO
INSERT [dbo].[pago] ([id], [idVenta], [montoCobrado], [vuelto]) VALUES (1, 33, 2938.2900, -61.7100)
GO
INSERT [dbo].[pago] ([id], [idVenta], [montoCobrado], [vuelto]) VALUES (2, 32, 2938.2900, 61.7100)
GO
INSERT [dbo].[pago] ([id], [idVenta], [montoCobrado], [vuelto]) VALUES (3, 10, 343.6600, 0.0000)
GO
SET IDENTITY_INSERT [dbo].[pago] OFF
GO
SET IDENTITY_INSERT [dbo].[patente] ON 
GO
INSERT [dbo].[patente] ([id], [nombre]) VALUES (1, N'EditarPerfil')
GO
INSERT [dbo].[patente] ([id], [nombre]) VALUES (2, N'VerAdmin')
GO
INSERT [dbo].[patente] ([id], [nombre]) VALUES (3, N'ABMUsuarios')
GO
INSERT [dbo].[patente] ([id], [nombre]) VALUES (4, N'ABMFamilias')
GO
INSERT [dbo].[patente] ([id], [nombre]) VALUES (5, N'ABMEmblemas')
GO
INSERT [dbo].[patente] ([id], [nombre]) VALUES (6, N'ABMSectores')
GO
INSERT [dbo].[patente] ([id], [nombre]) VALUES (7, N'ABMPuestos')
GO
INSERT [dbo].[patente] ([id], [nombre]) VALUES (8, N'BajaReconocimientos')
GO
INSERT [dbo].[patente] ([id], [nombre]) VALUES (9, N'BackUp')
GO
INSERT [dbo].[patente] ([id], [nombre]) VALUES (10, N'Bitacora')
GO
INSERT [dbo].[patente] ([id], [nombre]) VALUES (11, N'DigitoVerificador')
GO
INSERT [dbo].[patente] ([id], [nombre]) VALUES (12, N'ModificarObjetivo')
GO
SET IDENTITY_INSERT [dbo].[patente] OFF
GO
SET IDENTITY_INSERT [dbo].[pedido_estado] ON 
GO
INSERT [dbo].[pedido_estado] ([id], [nombre]) VALUES (1, N'Creado')
GO
INSERT [dbo].[pedido_estado] ([id], [nombre]) VALUES (2, N'Envio en progreso')
GO
INSERT [dbo].[pedido_estado] ([id], [nombre]) VALUES (3, N'Recibido')
GO
SET IDENTITY_INSERT [dbo].[pedido_estado] OFF
GO
SET IDENTITY_INSERT [dbo].[perdida] ON 
GO
INSERT [dbo].[perdida] ([id], [idSucursal], [idUsuario], [fecha], [total]) VALUES (1, 1, 4, CAST(N'2021-11-04T00:00:00.000' AS DateTime), CAST(276751.52 AS Decimal(14, 2)))
GO
INSERT [dbo].[perdida] ([id], [idSucursal], [idUsuario], [fecha], [total]) VALUES (2, 1, 4, CAST(N'2021-11-04T00:00:00.000' AS DateTime), CAST(276751.52 AS Decimal(14, 2)))
GO
INSERT [dbo].[perdida] ([id], [idSucursal], [idUsuario], [fecha], [total]) VALUES (3, 1, 4, CAST(N'2021-11-04T00:00:00.000' AS DateTime), CAST(276751.52 AS Decimal(14, 2)))
GO
INSERT [dbo].[perdida] ([id], [idSucursal], [idUsuario], [fecha], [total]) VALUES (4, 1, 4, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(2553.98 AS Decimal(14, 2)))
GO
SET IDENTITY_INSERT [dbo].[perdida] OFF
GO
SET IDENTITY_INSERT [dbo].[perdida_detalle] ON 
GO
INSERT [dbo].[perdida_detalle] ([id], [idPerdida], [idProducto], [costoUnitario], [cantidad]) VALUES (3, 3, 3, CAST(400.00 AS Decimal(14, 2)), 14)
GO
INSERT [dbo].[perdida_detalle] ([id], [idPerdida], [idProducto], [costoUnitario], [cantidad]) VALUES (4, 4, 3, CAST(400.00 AS Decimal(14, 2)), 1)
GO
SET IDENTITY_INSERT [dbo].[perdida_detalle] OFF
GO
SET IDENTITY_INSERT [dbo].[producto] ON 
GO
INSERT [dbo].[producto] ([id], [nombre], [codigo], [fechaCreacion], [precio], [costo], [dvh], [activo]) VALUES (1, N'Heladera', N'267887', CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(383.66 AS Decimal(14, 2)), CAST(300.00 AS Decimal(14, 2)), NULL, 1)
GO
INSERT [dbo].[producto] ([id], [nombre], [codigo], [fechaCreacion], [precio], [costo], [dvh], [activo]) VALUES (3, N'Lavarropa', N'522654', CAST(N'2021-02-02T00:00:00.000' AS DateTime), CAST(480.27 AS Decimal(14, 2)), CAST(400.00 AS Decimal(14, 2)), NULL, 1)
GO
INSERT [dbo].[producto] ([id], [nombre], [codigo], [fechaCreacion], [precio], [costo], [dvh], [activo]) VALUES (4, N'Cama', N'272829', CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(1000.21 AS Decimal(14, 2)), CAST(800.00 AS Decimal(14, 2)), NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[producto] OFF
GO
SET IDENTITY_INSERT [dbo].[proveedor] ON 
GO
INSERT [dbo].[proveedor] ([id], [nombre], [direccion], [codigoPostal], [mail], [telefono], [cantidadErrores], [activo]) VALUES (1, N'juanernesto', N'juan 16237', 2687, N'juan@gmail.com', N'67868', 0, 0)
GO
INSERT [dbo].[proveedor] ([id], [nombre], [direccion], [codigoPostal], [mail], [telefono], [cantidadErrores], [activo]) VALUES (2, N'memefghg', N'meme', 21789, N'meme', N'678', 0, 1)
GO
INSERT [dbo].[proveedor] ([id], [nombre], [direccion], [codigoPostal], [mail], [telefono], [cantidadErrores], [activo]) VALUES (3, N'juancho', N'juan 456', 2000, N'juancho@gmail.com', N'0303456', 0, 1)
GO
SET IDENTITY_INSERT [dbo].[proveedor] OFF
GO
SET IDENTITY_INSERT [dbo].[puesto] ON 
GO
INSERT [dbo].[puesto] ([id], [nombre]) VALUES (1, N'Deposito')
GO
INSERT [dbo].[puesto] ([id], [nombre]) VALUES (2, N'Vendedor')
GO
INSERT [dbo].[puesto] ([id], [nombre]) VALUES (3, N'Analista Funcional')
GO
INSERT [dbo].[puesto] ([id], [nombre]) VALUES (7, N'Administrador')
GO
SET IDENTITY_INSERT [dbo].[puesto] OFF
GO
SET IDENTITY_INSERT [dbo].[sector] ON 
GO
INSERT [dbo].[sector] ([id], [nombre]) VALUES (1, N'Canary')
GO
INSERT [dbo].[sector] ([id], [nombre]) VALUES (2, N'Threshold')
GO
INSERT [dbo].[sector] ([id], [nombre]) VALUES (3, N'Manhattan')
GO
INSERT [dbo].[sector] ([id], [nombre]) VALUES (4, N'Scorpio')
GO
SET IDENTITY_INSERT [dbo].[sector] OFF
GO
SET IDENTITY_INSERT [dbo].[sucursal] ON 
GO
INSERT [dbo].[sucursal] ([id], [nombre], [direccion], [mail], [codigoPostal], [telefono], [activo]) VALUES (1, N'Merlo', N'merlo 2018', N'merlo@op', 278, N'678678', 1)
GO
INSERT [dbo].[sucursal] ([id], [nombre], [direccion], [mail], [codigoPostal], [telefono], [activo]) VALUES (2, N'Moron', N'moron 162', N'moron@op', 212, N'256256', 1)
GO
SET IDENTITY_INSERT [dbo].[sucursal] OFF
GO
SET IDENTITY_INSERT [dbo].[sucursal_producto] ON 
GO
INSERT [dbo].[sucursal_producto] ([id], [idSucursal], [idProducto], [stock]) VALUES (1, 1, 1, 0)
GO
INSERT [dbo].[sucursal_producto] ([id], [idSucursal], [idProducto], [stock]) VALUES (3, 1, 3, 3)
GO
SET IDENTITY_INSERT [dbo].[sucursal_producto] OFF
GO
SET IDENTITY_INSERT [dbo].[tipoEntrega] ON 
GO
INSERT [dbo].[tipoEntrega] ([id], [descripcion]) VALUES (1, N'Retiro en Local')
GO
INSERT [dbo].[tipoEntrega] ([id], [descripcion]) VALUES (2, N'Envio a Ciudad ($300)')
GO
INSERT [dbo].[tipoEntrega] ([id], [descripcion]) VALUES (3, N'Envio a Provincia ($450)')
GO
INSERT [dbo].[tipoEntrega] ([id], [descripcion]) VALUES (4, N'Envio a Pais ($700)')
GO
SET IDENTITY_INSERT [dbo].[tipoEntrega] OFF
GO
SET IDENTITY_INSERT [dbo].[usuario] ON 
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [mail], [telefono], [nombreUsuario], [password], [fechaCreacion], [intentosFallidos], [dvh], [activo], [idFamilia], [idPuesto], [idSector]) VALUES (4, N'Admindfdd', N'Admindfgdg', 38726254, N'admin@asd.com', N'1162538276', N'admin', N'nRy/sK5Z7ENvGsSwfcmLzw==', CAST(N'2019-04-09T00:00:00.000' AS DateTime), 0, N'751694693', 1, 4, 7, 1)
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [mail], [telefono], [nombreUsuario], [password], [fechaCreacion], [intentosFallidos], [dvh], [activo], [idFamilia], [idPuesto], [idSector]) VALUES (5, N'ddfgdgffhg', N'juannhh', 256767, N'hgjgh', N'567567', N'kjkljjklhjk', N'3HhxGocas55cs8Bct+/O3Q==', CAST(N'2021-10-28T00:00:00.000' AS DateTime), 0, N'-1688966113', 0, 2, 3, 3)
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [mail], [telefono], [nombreUsuario], [password], [fechaCreacion], [intentosFallidos], [dvh], [activo], [idFamilia], [idPuesto], [idSector]) VALUES (6, N'dfgdfg', N'dfgdg', 456456, N'dfgdfg', N'4564', N'dfgdfgdgf', N'3HhxGocas55cs8Bct+/O3Q==', CAST(N'2021-10-28T00:00:00.000' AS DateTime), 0, N'-1847374159', 1, 1, 2, 1)
GO
SET IDENTITY_INSERT [dbo].[usuario] OFF
GO
SET IDENTITY_INSERT [dbo].[usuario_sucursal] ON 
GO
INSERT [dbo].[usuario_sucursal] ([id], [idUsuario], [idSucursal]) VALUES (3, 6, 2)
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
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (15, 4, 1, 1, 3, 2, 1, CAST(N'2021-11-19T00:00:00.000' AS DateTime), CAST(343.66 AS Decimal(14, 2)))
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
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (42, 4, 1, 1, 1, 2, 1, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (43, 4, 1, 1, 1, 2, 1, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (44, 4, 1, 1, 1, 2, 1, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (45, 4, 1, 1, 1, 2, 1, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(2938.29 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (46, 4, 1, 1, 1, 2, 1, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(3264.77 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (47, 4, 1, 1, 1, 2, 1, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(3264.77 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (48, 4, 1, 1, 1, 1, 1, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(1632.39 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (49, 4, 1, 1, 1, 1, 1, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(979.43 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (50, 4, 1, 1, 1, 2, 1, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(2500.46 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (51, 4, 1, 1, 1, 1, 1, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(760.51 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (52, 4, 1, 1, 1, 2, 1, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(1305.91 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (53, 4, 1, 1, 1, 2, 1, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(1822.39 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (54, 4, 1, 1, 1, 2, 1, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(2734.90 AS Decimal(14, 2)))
GO
INSERT [dbo].[venta] ([id], [idUsuario], [idComprador], [idSucursal], [idMetodoPago], [idTipoEntrega], [idEstado], [fecha], [total]) VALUES (55, 4, 1, 1, 1, 2, 3, CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(2553.98 AS Decimal(14, 2)))
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
SET IDENTITY_INSERT [dbo].[venta_detalle] OFF
GO
SET IDENTITY_INSERT [dbo].[venta_estado] ON 
GO
INSERT [dbo].[venta_estado] ([id], [nombre]) VALUES (1, N'Pendiente de Pago')
GO
INSERT [dbo].[venta_estado] ([id], [nombre]) VALUES (2, N'Pagado')
GO
INSERT [dbo].[venta_estado] ([id], [nombre]) VALUES (3, N'Cancelado')
GO
INSERT [dbo].[venta_estado] ([id], [nombre]) VALUES (4, N'Con Perdidas')
GO
INSERT [dbo].[venta_estado] ([id], [nombre]) VALUES (5, N'Con Devoluciones')
GO
SET IDENTITY_INSERT [dbo].[venta_estado] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_producto]    Script Date: 12/3/2021 20:54:03 ******/
CREATE NONCLUSTERED INDEX [IX_producto] ON [dbo].[producto]
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[bitacora]  WITH CHECK ADD  CONSTRAINT [FK_bitacora_usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[bitacora] CHECK CONSTRAINT [FK_bitacora_usuario]
GO
ALTER TABLE [dbo].[control]  WITH CHECK ADD  CONSTRAINT [FK_control_idioma] FOREIGN KEY([idIdioma])
REFERENCES [dbo].[idioma] ([id])
GO
ALTER TABLE [dbo].[control] CHECK CONSTRAINT [FK_control_idioma]
GO
ALTER TABLE [dbo].[cuota]  WITH CHECK ADD  CONSTRAINT [FK_cuota_venta] FOREIGN KEY([idVenta])
REFERENCES [dbo].[venta] ([id])
GO
ALTER TABLE [dbo].[cuota] CHECK CONSTRAINT [FK_cuota_venta]
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
ALTER TABLE [dbo].[envio_deposito]  WITH CHECK ADD  CONSTRAINT [FK_envio_deposito_EstadoEnvio] FOREIGN KEY([idEstadoEnvio])
REFERENCES [dbo].[estadoEnvio] ([id])
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
ALTER TABLE [dbo].[envio_sucursal]  WITH CHECK ADD  CONSTRAINT [FK_Envio_EstadoEnvio] FOREIGN KEY([idEstadoEnvio])
REFERENCES [dbo].[estadoEnvio] ([id])
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
ALTER TABLE [dbo].[pedido_deposito]  WITH CHECK ADD  CONSTRAINT [FK_pedido_deposito_deposito1] FOREIGN KEY([idDeposito])
REFERENCES [dbo].[deposito] ([id])
GO
ALTER TABLE [dbo].[pedido_deposito] CHECK CONSTRAINT [FK_pedido_deposito_deposito1]
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
REFERENCES [dbo].[pedido_estado] ([id])
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
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_sector1] FOREIGN KEY([idSector])
REFERENCES [dbo].[sector] ([id])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_sector1]
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
REFERENCES [dbo].[metodoPago] ([id])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_metodoDePago]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_tipoEntrega] FOREIGN KEY([idTipoEntrega])
REFERENCES [dbo].[tipoEntrega] ([id])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_tipoEntrega]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_usuario]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_venta_estado] FOREIGN KEY([idEstado])
REFERENCES [dbo].[venta_estado] ([id])
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
/****** Object:  StoredProcedure [dbo].[sp_backup]    Script Date: 12/3/2021 20:54:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_backup]
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
USE [master]
GO
ALTER DATABASE [openEnterprise] SET  READ_WRITE 
GO
