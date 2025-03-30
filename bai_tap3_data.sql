USE [master]
GO
/****** Object:  Database [QL]    Script Date: 30/03/2025 3:43:57 CH ******/
CREATE DATABASE [QL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL', FILENAME = N'D:\TUANANH\MSSQL16.LETUANANH\MSSQL\DATA\QL.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QL_log', FILENAME = N'D:\TUANANH\MSSQL16.LETUANANH\MSSQL\DATA\QL_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QL] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL] SET RECOVERY FULL 
GO
ALTER DATABASE [QL] SET  MULTI_USER 
GO
ALTER DATABASE [QL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QL] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QL] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QL', N'ON'
GO
ALTER DATABASE [QL] SET QUERY_STORE = ON
GO
ALTER DATABASE [QL] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QL]
GO
/****** Object:  Table [dbo].[BoMon]    Script Date: 30/03/2025 3:43:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoMon](
	[MaBM] [nchar](10) NOT NULL,
	[tenBM] [nvarchar](50) NULL,
	[maKhoa] [nchar](10) NOT NULL,
 CONSTRAINT [PK_BoMon_1] PRIMARY KEY CLUSTERED 
(
	[MaBM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diem]    Script Date: 30/03/2025 3:43:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem](
	[id] [nchar](10) NOT NULL,
	[id_dk] [nchar](10) NULL,
	[diem] [float] NULL,
 CONSTRAINT [PK_Diem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DKMH]    Script Date: 30/03/2025 3:43:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DKMH](
	[id_dk] [nchar](10) NOT NULL,
	[maLopHP] [nchar](10) NOT NULL,
	[maSV] [nchar](10) NOT NULL,
	[DiemThi] [float] NULL,
	[PhamTramThi] [float] NULL,
 CONSTRAINT [PK_DKMH] PRIMARY KEY CLUSTERED 
(
	[id_dk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 30/03/2025 3:43:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[magv] [nchar](10) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[MaBM] [nchar](10) NOT NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[magv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GVCN]    Script Date: 30/03/2025 3:43:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GVCN](
	[maLop] [nchar](10) NOT NULL,
	[magv] [nchar](10) NOT NULL,
	[HK] [int] NOT NULL,
 CONSTRAINT [PK_GVCN] PRIMARY KEY CLUSTERED 
(
	[maLop] ASC,
	[magv] ASC,
	[HK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 30/03/2025 3:43:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[maKhoa] [nchar](10) NOT NULL,
	[tenKhoa] [nvarchar](50) NULL,
 CONSTRAINT [PK_Khoa] PRIMARY KEY CLUSTERED 
(
	[maKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 30/03/2025 3:43:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[maLop] [nchar](10) NOT NULL,
	[tenLop] [nvarchar](50) NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[maLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHP]    Script Date: 30/03/2025 3:43:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHP](
	[maLopHP] [nchar](10) NOT NULL,
	[TenLopHP] [nvarchar](50) NULL,
	[HK] [int] NULL,
	[maMon] [nchar](10) NOT NULL,
	[maGV] [nchar](10) NOT NULL,
 CONSTRAINT [PK_LopHP] PRIMARY KEY CLUSTERED 
(
	[maLopHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopSV]    Script Date: 30/03/2025 3:43:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopSV](
	[maLop] [nchar](10) NOT NULL,
	[maSV] [nchar](10) NOT NULL,
	[ChucVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_LopSV] PRIMARY KEY CLUSTERED 
(
	[maLop] ASC,
	[maSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 30/03/2025 3:43:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[mamon] [nchar](10) NOT NULL,
	[Tenmon] [nvarchar](50) NULL,
	[STC] [int] NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[mamon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 30/03/2025 3:43:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[masv] [nchar](10) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[masv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BoMon]  WITH CHECK ADD  CONSTRAINT [FK_BoMon_Khoa] FOREIGN KEY([maKhoa])
REFERENCES [dbo].[Khoa] ([maKhoa])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[BoMon] CHECK CONSTRAINT [FK_BoMon_Khoa]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_DKMH] FOREIGN KEY([id_dk])
REFERENCES [dbo].[DKMH] ([id_dk])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_DKMH]
GO
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD  CONSTRAINT [FK_DKMH_LopHP] FOREIGN KEY([maLopHP])
REFERENCES [dbo].[LopHP] ([maLopHP])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DKMH] CHECK CONSTRAINT [FK_DKMH_LopHP]
GO
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD  CONSTRAINT [FK_DKMH_SinhVien] FOREIGN KEY([maSV])
REFERENCES [dbo].[SinhVien] ([masv])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DKMH] CHECK CONSTRAINT [FK_DKMH_SinhVien]
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_BoMon] FOREIGN KEY([MaBM])
REFERENCES [dbo].[BoMon] ([MaBM])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_BoMon]
GO
ALTER TABLE [dbo].[GVCN]  WITH CHECK ADD  CONSTRAINT [FK_GVCN_GiaoVien] FOREIGN KEY([magv])
REFERENCES [dbo].[GiaoVien] ([magv])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[GVCN] CHECK CONSTRAINT [FK_GVCN_GiaoVien]
GO
ALTER TABLE [dbo].[GVCN]  WITH CHECK ADD  CONSTRAINT [FK_Lop_GVCN_maLop] FOREIGN KEY([maLop])
REFERENCES [dbo].[Lop] ([maLop])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[GVCN] CHECK CONSTRAINT [FK_Lop_GVCN_maLop]
GO
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD  CONSTRAINT [FK_LopHP_GiaoVien] FOREIGN KEY([maGV])
REFERENCES [dbo].[GiaoVien] ([magv])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[LopHP] CHECK CONSTRAINT [FK_LopHP_GiaoVien]
GO
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD  CONSTRAINT [FK_LopHP_MonHoc] FOREIGN KEY([maMon])
REFERENCES [dbo].[MonHoc] ([mamon])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[LopHP] CHECK CONSTRAINT [FK_LopHP_MonHoc]
GO
ALTER TABLE [dbo].[LopSV]  WITH CHECK ADD  CONSTRAINT [FK_LopSV_Lop] FOREIGN KEY([maLop])
REFERENCES [dbo].[Lop] ([maLop])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[LopSV] CHECK CONSTRAINT [FK_LopSV_Lop]
GO
ALTER TABLE [dbo].[LopSV]  WITH CHECK ADD  CONSTRAINT [FK_LopSV_SinhVien] FOREIGN KEY([maSV])
REFERENCES [dbo].[SinhVien] ([masv])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[LopSV] CHECK CONSTRAINT [FK_LopSV_SinhVien]
GO
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD  CONSTRAINT [CK_DKMH_DiemThi] CHECK  (([DiemThi]>=(0.0) AND [DiemThi]<=(10.0)))
GO
ALTER TABLE [dbo].[DKMH] CHECK CONSTRAINT [CK_DKMH_DiemThi]
GO
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD  CONSTRAINT [CK_MonHoc_STC] CHECK  (([STC]<=(3) AND [STC]>=(1)))
GO
ALTER TABLE [dbo].[MonHoc] CHECK CONSTRAINT [CK_MonHoc_STC]
GO
USE [master]
GO
ALTER DATABASE [QL] SET  READ_WRITE 
GO
