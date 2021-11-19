USE [master]
GO
/****** Object:  Database [openEnterprise]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[bitacora]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[comprador]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[control]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[cuota]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[deposito]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[deposito_producto]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[devolucion]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[devolucion_detalle]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[direccion]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[dvv]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[envio_deposito]    Script Date: 11/19/2021 20:39:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[envio_deposito](
	[id] [int] NOT NULL,
	[idVenta] [int] NOT NULL,
	[idDireccion] [int] NOT NULL,
	[idDeposito] [int] NOT NULL,
	[fechaSalida] [datetime] NOT NULL,
	[fechaLlegada] [datetime] NULL,
	[idEstadoEnvio] [int] NOT NULL,
 CONSTRAINT [PK_envio_deposito] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[envio_sucursal]    Script Date: 11/19/2021 20:39:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[envio_sucursal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idVenta] [int] NOT NULL,
	[idDireccion] [int] NOT NULL,
	[idSucursal] [int] NOT NULL,
	[fechaSalida] [datetime] NOT NULL,
	[fechaLlegada] [datetime] NULL,
	[idEstadoEnvio] [int] NOT NULL,
 CONSTRAINT [PK_envio_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estadoEnvio]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[familia]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[familia_patente]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[idioma]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[metodoPago]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[patente]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[pedido_deposito]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[pedido_deposito_detalle]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[pedido_estado]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[pedido_proveedor]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[pedido_proveedor_detalle]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[perdida]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[perdida_detalle]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[producto]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[proveedor]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[puesto]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[sector]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[sucursal]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[sucursal_producto]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[tipoEdificio]    Script Date: 11/19/2021 20:39:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipoEdificio](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tipoEdificio] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipoEdificio] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipoEntrega]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[usuario]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[usuario_deposito]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[usuario_sucursal]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[venta]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[venta_detalle]    Script Date: 11/19/2021 20:39:23 ******/
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
/****** Object:  Table [dbo].[venta_detalle_deposito]    Script Date: 11/19/2021 20:39:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta_detalle_deposito](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idVentaDetalle] [int] NOT NULL,
	[idDeposito] [int] NOT NULL,
 CONSTRAINT [PK_venta_detalle_deposito] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venta_detalle_sucursal]    Script Date: 11/19/2021 20:39:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta_detalle_sucursal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idVentaDetalle] [int] NOT NULL,
	[idSucursal] [int] NOT NULL,
 CONSTRAINT [PK_venta_detalle_sucursal] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venta_estado]    Script Date: 11/19/2021 20:39:23 ******/
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
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_producto]    Script Date: 11/19/2021 20:39:23 ******/
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
ALTER TABLE [dbo].[venta_detalle_deposito]  WITH CHECK ADD  CONSTRAINT [FK_venta_detalle_deposito_deposito] FOREIGN KEY([idDeposito])
REFERENCES [dbo].[deposito] ([id])
GO
ALTER TABLE [dbo].[venta_detalle_deposito] CHECK CONSTRAINT [FK_venta_detalle_deposito_deposito]
GO
ALTER TABLE [dbo].[venta_detalle_deposito]  WITH CHECK ADD  CONSTRAINT [FK_venta_detalle_deposito_venta_detalle] FOREIGN KEY([idVentaDetalle])
REFERENCES [dbo].[venta_detalle] ([id])
GO
ALTER TABLE [dbo].[venta_detalle_deposito] CHECK CONSTRAINT [FK_venta_detalle_deposito_venta_detalle]
GO
/****** Object:  StoredProcedure [dbo].[sp_backup]    Script Date: 11/19/2021 20:39:23 ******/
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
