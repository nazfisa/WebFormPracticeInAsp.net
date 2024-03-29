USE [master]
GO
/****** Object:  Database [stockManagement]    Script Date: 20-Dec-19 7:53:18 PM ******/
CREATE DATABASE [stockManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'stockManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\stockManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'stockManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\stockManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [stockManagement] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [stockManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [stockManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [stockManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [stockManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [stockManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [stockManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [stockManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [stockManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [stockManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [stockManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [stockManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [stockManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [stockManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [stockManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [stockManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [stockManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [stockManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [stockManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [stockManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [stockManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [stockManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [stockManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [stockManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [stockManagement] SET RECOVERY FULL 
GO
ALTER DATABASE [stockManagement] SET  MULTI_USER 
GO
ALTER DATABASE [stockManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [stockManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [stockManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [stockManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [stockManagement] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'stockManagement', N'ON'
GO
ALTER DATABASE [stockManagement] SET QUERY_STORE = OFF
GO
USE [stockManagement]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 20-Dec-19 7:53:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[category] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyTbl]    Script Date: 20-Dec-19 7:53:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemSetup]    Script Date: 20-Dec-19 7:53:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemSetup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NULL,
	[CompanyName] [varchar](50) NULL,
	[ItemName] [varchar](50) NULL,
	[ReorderLevel] [int] NULL,
	[AvailableQuantity] [int] NULL,
	[Date] [date] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [category]) VALUES (1, N'Stationary1')
INSERT [dbo].[Category] ([Id], [category]) VALUES (2, N'Cosmetics')
INSERT [dbo].[Category] ([Id], [category]) VALUES (3, N'Electronics33')
INSERT [dbo].[Category] ([Id], [category]) VALUES (4, N'Kitchen Item')
INSERT [dbo].[Category] ([Id], [category]) VALUES (5, N'Pc parts')
INSERT [dbo].[Category] ([Id], [category]) VALUES (1002, N'mobile Phone')
INSERT [dbo].[Category] ([Id], [category]) VALUES (1003, N'')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[CompanyTbl] ON 

INSERT [dbo].[CompanyTbl] ([Id], [CompanyName]) VALUES (1, N'Leads')
INSERT [dbo].[CompanyTbl] ([Id], [CompanyName]) VALUES (3, N' ')
INSERT [dbo].[CompanyTbl] ([Id], [CompanyName]) VALUES (4, N'TigerIt')
SET IDENTITY_INSERT [dbo].[CompanyTbl] OFF
SET IDENTITY_INSERT [dbo].[ItemSetup] ON 

INSERT [dbo].[ItemSetup] ([Id], [CategoryName], [CompanyName], [ItemName], [ReorderLevel], [AvailableQuantity], [Date]) VALUES (1, N'2', N'4', N'Keyboard', 5, NULL, NULL)
INSERT [dbo].[ItemSetup] ([Id], [CategoryName], [CompanyName], [ItemName], [ReorderLevel], [AvailableQuantity], [Date]) VALUES (4, N'Cosmetics', N'Leads', N'cover', 3, 19, NULL)
INSERT [dbo].[ItemSetup] ([Id], [CategoryName], [CompanyName], [ItemName], [ReorderLevel], [AvailableQuantity], [Date]) VALUES (3, N'Pc parts', N'TigerIt', N'pendrive', 3, 2, NULL)
INSERT [dbo].[ItemSetup] ([Id], [CategoryName], [CompanyName], [ItemName], [ReorderLevel], [AvailableQuantity], [Date]) VALUES (5, N'Electronics33', N'TigerIt', N'BackPart', 5, 2, NULL)
INSERT [dbo].[ItemSetup] ([Id], [CategoryName], [CompanyName], [ItemName], [ReorderLevel], [AvailableQuantity], [Date]) VALUES (6, N'Stationary1', N'Leads', N'Pen', 0, 16, NULL)
INSERT [dbo].[ItemSetup] ([Id], [CategoryName], [CompanyName], [ItemName], [ReorderLevel], [AvailableQuantity], [Date]) VALUES (7, N'Cosmetics', N'Leads', N'lipstic | Leads', 0, NULL, NULL)
INSERT [dbo].[ItemSetup] ([Id], [CategoryName], [CompanyName], [ItemName], [ReorderLevel], [AvailableQuantity], [Date]) VALUES (8, N'Cosmetics', N'TigerIt', N'nil palish | TigerIt', 0, NULL, NULL)
INSERT [dbo].[ItemSetup] ([Id], [CategoryName], [CompanyName], [ItemName], [ReorderLevel], [AvailableQuantity], [Date]) VALUES (9, N'Stationary1', N'Leads', N'nil palish1 | Leads', 5, NULL, CAST(N'2019-11-16' AS Date))
SET IDENTITY_INSERT [dbo].[ItemSetup] OFF
USE [master]
GO
ALTER DATABASE [stockManagement] SET  READ_WRITE 
GO
