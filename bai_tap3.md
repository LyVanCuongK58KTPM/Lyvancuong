**BÀI TẬP VỀ NHÀ 03 - MÔN HỆ QUẢN TRỊ CSDL:

DEADLINE: 23H59 NGÀY 30/03/2025

ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 2)

BÀI TOÁN: Sửa bài 2 để có csdl như sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#id_dk, @maLopHP,@maSV,DiemThi,PhanTramThi)
  + Diem(#id, @id_dk, diem)

YÊU CẦU:
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học 

**
-----------------------------------------------------------------------------------
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu:
   - Bảng DKMH:
     
     ![image](https://github.com/user-attachments/assets/f780198c-70fe-4a62-a66d-961d037d8d56)

  - Bảng Diem:

    ![image](https://github.com/user-attachments/assets/6f94e2ce-4b71-447f-b460-a617ba9e9c07)


- Tạo FK của bảng Diem liên kết với PK của bảng DKMH (id_dk):

  ![image](https://github.com/user-attachments/assets/346a90db-d9f9-4c5a-ae32-652781e682e2)


2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)

   - Thao tác đồ họa nhập có kiểm soát từ tính năng Edit trên UI cho các bảng: nhấp chuột phải vào dbo ----> edit top 200 rows
  
     ![image](https://github.com/user-attachments/assets/80279005-430c-4a40-8cf7-4ccf7c7a2d66)

  - Danh sách các bảng sau khi đã nhập dữ  liệu vào:
    
    ![image](https://github.com/user-attachments/assets/7c050a2a-8202-4b24-af85-8f31aefebb73)

3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học :
   - Chọn New Query trên bảng tab hoặc 'CTRL N' để tạo 1 truy vấn mới:

     ![image](https://github.com/user-attachments/assets/c3f47971-b754-4852-b16f-275f826a01cf)

   - Viết lệnh truy vấn để tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học:
  
     ![image](https://github.com/user-attachments/assets/8b6d8d98-752b-4f2e-a9a6-495a5c0f6711)



     
