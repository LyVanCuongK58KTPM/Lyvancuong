USE [QLSV]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 24/03/2025 7:04:56 CH ******/
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
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'dfgdfg    ', N'dfgsfgdff', 3)
GO
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD  CONSTRAINT [CK_MonHoc_STC] CHECK  (([STC]<=(3) AND [STC]>=(1)))
GO
ALTER TABLE [dbo].[MonHoc] CHECK CONSTRAINT [CK_MonHoc_STC]
GO
