USE [QLSV]
GO
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'K13412345 ', N'Ly Van Cuong', CAST(N'2003-06-11' AS Date))
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'K435564213', N'Nguyen ThuThao', CAST(N'2004-03-08' AS Date))
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'L235323452', N'Ly Van Kien', CAST(N'2003-06-11' AS Date))
GO
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'A123      ', N'Hệ Quản Trị CSDL', 3)
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'B123      ', N'Phân Tích TKHT', 3)
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'C123      ', N'Marketing', 2)
GO
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'D         ', N'Điện')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'DT        ', N'Điện Tử')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'KT        ', N'Kinh Tế')
GO
INSERT [dbo].[BoMon] ([MaBM], [tenBM], [maKhoa]) VALUES (N'CNTT      ', N'Công Nghệ Thông ', N'DT        ')
INSERT [dbo].[BoMon] ([MaBM], [tenBM], [maKhoa]) VALUES (N'NHUNG     ', N'Hệ Thống Nhúng', N'DT        ')
INSERT [dbo].[BoMon] ([MaBM], [tenBM], [maKhoa]) VALUES (N'QLC       ', N'Quản lí chất lượng', N'KT        ')
GO
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [MaBM]) VALUES (N'K12345678 ', N'Đỗ Duy Cốp', CAST(N'1999-06-06' AS Date), N'CNTT      ')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [MaBM]) VALUES (N'L12345678 ', N'Trần Thị Thanh', CAST(N'1993-02-01' AS Date), N'CNTT      ')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [MaBM]) VALUES (N'P12345678 ', N'Nguyễn Thị A', CAST(N'1999-10-10' AS Date), N'QLC       ')
GO
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'KMT-HQT   ', N'Hệ QTCSDL', 20253, N'A123      ', N'K12345678 ')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'KMT-MAR   ', N'MARKETING', 20253, N'C123      ', N'P12345678 ')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'KMT-PTTK  ', N'Phân Tích TKHT', 20253, N'B123      ', N'L12345678 ')
GO
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhamTramThi]) VALUES (N'112       ', N'KMT-PTTK  ', N'K13412345 ', 5, 60)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhamTramThi]) VALUES (N'113       ', N'KMT-HQT   ', N'K13412345 ', 8, 60)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhamTramThi]) VALUES (N'114       ', N'KMT-HQT   ', N'L235323452', 6, 60)
GO
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'a         ', N'112       ', 10)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'b         ', N'112       ', 8)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'c         ', N'113       ', 6)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'd         ', N'114       ', 5)
GO
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'K58KDT    ', N'Kĩ Thuật Điện Tử')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'K58KMT    ', N'Kĩ Thuật Máy Tính ')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'K58QLC    ', N'Quản lí chất lượng')
GO
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'K58KDT    ', N'L235323452', N'Sinh viên')
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'K58KMT    ', N'K13412345 ', N'Sinh viên')
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'K58KMT    ', N'K435564213', N'Sinh viên')
GO
INSERT [dbo].[GVCN] ([maLop], [magv], [HK]) VALUES (N'K58KDT    ', N'L12345678 ', 20253)
INSERT [dbo].[GVCN] ([maLop], [magv], [HK]) VALUES (N'K58KMT    ', N'K12345678 ', 20253)
INSERT [dbo].[GVCN] ([maLop], [magv], [HK]) VALUES (N'K58QLC    ', N'P12345678 ', 20253)
GO
