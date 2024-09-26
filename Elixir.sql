USE [master]
GO
/****** Object:  Database [Elixir]    Script Date: 9/21/2024 5:23:07 PM ******/
CREATE DATABASE [Elixir]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Elixir', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Elixir.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Elixir_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Elixir_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Elixir] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Elixir].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Elixir] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Elixir] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Elixir] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Elixir] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Elixir] SET ARITHABORT OFF 
GO
ALTER DATABASE [Elixir] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Elixir] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Elixir] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Elixir] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Elixir] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Elixir] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Elixir] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Elixir] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Elixir] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Elixir] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Elixir] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Elixir] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Elixir] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Elixir] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Elixir] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Elixir] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Elixir] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Elixir] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Elixir] SET  MULTI_USER 
GO
ALTER DATABASE [Elixir] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Elixir] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Elixir] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Elixir] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Elixir] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Elixir] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Elixir] SET QUERY_STORE = ON
GO
ALTER DATABASE [Elixir] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Elixir]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9/21/2024 5:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 9/21/2024 5:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[BrandId] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](50) NOT NULL,
	[BrandDescription] [nvarchar](50) NOT NULL,
	[BrandOrder] [int] NOT NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 9/21/2024 5:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
	[CategoryDescription] [nvarchar](50) NOT NULL,
	[CategoryOrder] [int] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 9/21/2024 5:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](255) NOT NULL,
	[SoDienThoai] [nvarchar](15) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[DiaChi] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 9/21/2024 5:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](255) NOT NULL,
	[SoDienThoai] [nvarchar](15) NOT NULL,
	[CaLamViec] [nvarchar](50) NOT NULL,
	[CV] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 9/21/2024 5:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[MaMatBang] [int] IDENTITY(1,1) NOT NULL,
	[ViTri] [nvarchar](255) NOT NULL,
	[DienTich] [decimal](10, 2) NULL,
	[GiaThueHangThang] [decimal](15, 2) NULL,
	[TT] [int] NULL,
	[ProductImage] [nvarchar](50) NULL,
	[CategoryId] [int] NULL,
	[BrandId] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[MaMatBang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 9/21/2024 5:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[MaDichVu] [int] IDENTITY(1,1) NOT NULL,
	[TenDichVu] [nvarchar](255) NOT NULL,
	[GiaDichVuHangThang] [decimal](18, 2) NOT NULL,
	[MaNV] [int] NOT NULL,
	[EmployeeMaNV] [int] NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[MaDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 9/21/2024 5:23:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[UserEmail] [nvarchar](50) NOT NULL,
	[UserPassword] [nvarchar](50) NOT NULL,
	[UserRole] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240919172028_initUserTable', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240921092035_brandcategoryproduct', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240921092808_product', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240921093206_customer', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240921101055_service', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240921101508_employee', N'8.0.8')
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([BrandId], [BrandName], [BrandDescription], [BrandOrder]) VALUES (1, N'Khu vui chơi', N'Khu vui chơi', 1)
INSERT [dbo].[Brand] ([BrandId], [BrandName], [BrandDescription], [BrandOrder]) VALUES (2, N'Khu đồ ăn', N'Khu đồ ăn', 2)
INSERT [dbo].[Brand] ([BrandId], [BrandName], [BrandDescription], [BrandOrder]) VALUES (3, N'Khu mỹ phẩm', N'Khu mỹ phẩm', 3)
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryDescription], [CategoryOrder]) VALUES (1, N'Mặt bằng', N'Mặt bằng', 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([MaNV], [TenNV], [SoDienThoai], [CaLamViec], [CV]) VALUES (1, N'Nguyễn Văn A', N'0123456789', N'Tối thứ 3 và 5', 0)
INSERT [dbo].[Employee] ([MaNV], [TenNV], [SoDienThoai], [CaLamViec], [CV]) VALUES (2, N'Nguyễn Lê B', N'1472583690', N'Sáng thứ 3 và 5', 1)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([MaMatBang], [ViTri], [DienTich], [GiaThueHangThang], [TT], [ProductImage], [CategoryId], [BrandId]) VALUES (1, N'Tầng 1 khu A', CAST(5000.00 AS Decimal(10, 2)), CAST(10000000.00 AS Decimal(15, 2)), 1, N'img/product01.png', 1, 1)
INSERT [dbo].[Product] ([MaMatBang], [ViTri], [DienTich], [GiaThueHangThang], [TT], [ProductImage], [CategoryId], [BrandId]) VALUES (2, N'Tầng 2 khu A', CAST(4000.00 AS Decimal(10, 2)), CAST(9000000.00 AS Decimal(15, 2)), 0, N'img/product02.png', 1, 3)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([MaDichVu], [TenDichVu], [GiaDichVuHangThang], [MaNV], [EmployeeMaNV]) VALUES (1, N'Vệ sinh', CAST(600000.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[Service] ([MaDichVu], [TenDichVu], [GiaDichVuHangThang], [MaNV], [EmployeeMaNV]) VALUES (2, N'Bảo vệ', CAST(80000.00 AS Decimal(18, 2)), 2, NULL)
INSERT [dbo].[Service] ([MaDichVu], [TenDichVu], [GiaDichVuHangThang], [MaNV], [EmployeeMaNV]) VALUES (3, N'Bảo trì', CAST(1500000.00 AS Decimal(18, 2)), 3, NULL)
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [UserName], [UserEmail], [UserPassword], [UserRole]) VALUES (1, N'admin', N'admin@gmail.com', N'123456', N'Administrator')
INSERT [dbo].[User] ([UserId], [UserName], [UserEmail], [UserPassword], [UserRole]) VALUES (2, N'customer', N'customer@gmail.com', N'123456', N'Customer')
INSERT [dbo].[User] ([UserId], [UserName], [UserEmail], [UserPassword], [UserRole]) VALUES (3, N'employee', N'employee@gmail.com', N'123456', N'Employee')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
/****** Object:  Index [IX_Product_BrandId]    Script Date: 9/21/2024 5:23:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Product_BrandId] ON [dbo].[Product]
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Product_CategoryId]    Script Date: 9/21/2024 5:23:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Product_CategoryId] ON [dbo].[Product]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Service_EmployeeMaNV]    Script Date: 9/21/2024 5:23:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Service_EmployeeMaNV] ON [dbo].[Service]
(
	[EmployeeMaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Brand_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brand] ([BrandId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Brand_BrandId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category_CategoryId]
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_Employee_EmployeeMaNV] FOREIGN KEY([EmployeeMaNV])
REFERENCES [dbo].[Employee] ([MaNV])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_Employee_EmployeeMaNV]
GO
USE [master]
GO
ALTER DATABASE [Elixir] SET  READ_WRITE 
GO
