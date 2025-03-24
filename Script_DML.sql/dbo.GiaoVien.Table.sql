USE [QLSV]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 24/03/2025 7:04:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[magv] [nchar](10) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[MaBM] [nchar](10) NOT NULL,
	[maKhoa] [nchar](10) NOT NULL,
 CONSTRAINT [PK_GiaoVien_1] PRIMARY KEY CLUSTERED 
(
	[magv] ASC,
	[MaBM] ASC,
	[maKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_BoMon] FOREIGN KEY([MaBM], [maKhoa])
REFERENCES [dbo].[BoMon] ([MaBM], [maKhoa])
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_BoMon]
GO
