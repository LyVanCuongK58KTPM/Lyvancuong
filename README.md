# Lyvancuong
# Bài tập 02 của sv: K225480106100 - Lý Văn Cường - Môn Hệ Quản Trị CSDL

**Mô tả tóm tắt bài tập:**
 - Bước 1: Mở SQL Server Management Studio và thực hiện kết nối tài khoản SQL Server
 - Bước 2: Tạo một Database mới
 - Bước 3: Tạo các bảng trong Database với các thuộc tính được yêu cầu trước và lưu tên bảng
 - Bước 4: Cài đặt kiểm tra ràng buộc cho những thuộc tính cần thiết (Check constraints)
 - Bước 5: Đặt khóa chính(PK) và khóa ngoại(FK) cho các thuộc tính của các bảng theo yêu cầu trước đó
 - Bước 6: Chuyển thao tác đồ họa sang lệnh SQL

**----------------------------------------------------------------------------------------------------------**

**Mô tả chi tiết bài tập:**

**- Bước 1: Kết nối tài khoản SQL Server**


![image](https://github.com/user-attachments/assets/2e02fbf7-f86d-4df2-8d96-8bcab6c77904)

**- Bước 2: Tạo Database**
- Sau khi kết nối thành công, nhấp chuột phải vào Database --> New Database...
  
![image](https://github.com/user-attachments/assets/9937980c-b509-46f7-a547-56a2780cfaeb)

 + Đặt tên cho Database và nhấn 'Ok'

![image](https://github.com/user-attachments/assets/98439715-4958-4bcd-944a-76afdca8aa81)

**- Bước 3: Tạo Bảng**
- Nhấp vào dấu '+' tại Database vừa tạo, ta sẽ thấy có tệp 'Tables'

![image](https://github.com/user-attachments/assets/e6b880c5-02e8-4371-839d-1a448373a734)

 + Nhấp chuột phải vào 'Tables' --> New ---> Table...

![image](https://github.com/user-attachments/assets/ba5522ce-64e4-4c00-a8dd-daea7e9b1863)

 + Thực hiện thêm các thuộc tính theo yêu cầu vào mỗi bảng với kiểu dữ liệu phù hợp với thuộc
   tính đó ---> Ctrl S để lưu bảng và đặt tên bảng

![image](https://github.com/user-attachments/assets/12822d8b-8cd1-4d91-813c-50e5016a2674)
![image](https://github.com/user-attachments/assets/6b0a454c-7cdd-4857-8705-3c5ae18df802)
![image](https://github.com/user-attachments/assets/37907bca-cc6b-4c52-8e54-92738b07e751)
![image](https://github.com/user-attachments/assets/5eadf1d2-38b4-48fa-bbb2-70a93766fd04)
![image](https://github.com/user-attachments/assets/e3195ea2-79d6-4f43-8ae1-81b72cabfafb)
![image](https://github.com/user-attachments/assets/42b954b1-c15c-4705-9557-79c0a1fe422e)
![image](https://github.com/user-attachments/assets/0261ff1a-fb43-4807-86d9-331750a484b3)
![image](https://github.com/user-attachments/assets/32f7e330-5630-41f7-9996-5529dd9c217f)
![image](https://github.com/user-attachments/assets/8e7ed316-db2a-4ed0-a8a2-0c2e378fd089)
![image](https://github.com/user-attachments/assets/992c1036-2371-42eb-9b5c-fad4e1e84714)


**- Bước 4: Thêm ràng buộc vào những bảng có thuộc tính cần thiết ràng buộc**  
- Nhấp chuột phải vào khoảng trống bất kì trong mục 'Design' của bảng ---> Check constraints
![image](https://github.com/user-attachments/assets/a6e6a3f8-f742-4fe1-b85c-5a449904053b)


- Add ----> Expression (điều kiện ràng buộc)
  

![image](https://github.com/user-attachments/assets/3d9b951d-fb3b-483c-aec0-89b8160e47a9)
![image](https://github.com/user-attachments/assets/e7280c92-5f68-4a37-94b9-48c49287b0b2)
![image](https://github.com/user-attachments/assets/0dce57ac-4907-4134-bbeb-4ef5b3f4cf13)


**- Bước 5: Cài khóa chính cho các thuộc tính trong bảng:**
- Có 2 cách để cài thuộc tính trở thành khóa chính:
- Cách 1: Nhấp chuột phải vào thuộc tính ---> set primary key

![image](https://github.com/user-attachments/assets/86c5b27b-ddab-430b-bf76-f891fb1d406f)
![image](https://github.com/user-attachments/assets/04a37791-7627-4785-b13a-f9daf3874e25)


- Cách 2: Giữ Ctrl + nhấp chuột để chọn nhiều thuộc tính ---> biểu tượng chìa khóa trên thanh công cụ

![image](https://github.com/user-attachments/assets/748cac63-6072-4a30-81c7-079e56d05dda)


**- Bước 5.1: Cài đặt khóa ngoại(FK) cho các thuộc tính:**
- Chỉ có thể cài khóa ngoại khi thuộc tính đó là khóa chính tại một bảng mà chúng ta muốn liên kết tới
- Nhấp chuột phải vào bất kì trong mục 'Design' của bảng ---> Relationship.... 
![image](https://github.com/user-attachments/assets/53d821f1-c36f-4ad0-b06e-3ee1cdbe25a3)


- Add(thêm khóa ngoại) ----> Nhấp vào '...' tại Tables And Columns Specification ( liên kết khóa chính của bảng này với khóa ngoại của bảng kia)

- Tại Insert And Update Specification ----> chọn Update Rule : CASCADE
  ( CASCADE để bảo bảo tính nhất quán dữ liệu, nếu dữ liệu của thuộc tính khóa chính bị thay đổi thì dữ liệu của khóa ngoại tại bảng liên kết cũng sẽ thay đổi theo)
![image](https://github.com/user-attachments/assets/6b153be5-1256-4a60-bc2f-b0bc9752c246)
![image](https://github.com/user-attachments/assets/21824f63-3af7-4e80-b566-6699d83c7c45)
![image](https://github.com/user-attachments/assets/43d13854-978f-4906-8cf5-35788a9dcc47)
![image](https://github.com/user-attachments/assets/d162149b-5f84-4f37-a843-c40a3e76be0f)
![image](https://github.com/user-attachments/assets/58761f91-4acd-4661-b0c1-690a5ed561ae)
![image](https://github.com/user-attachments/assets/9b0bd443-1c5e-4eee-b399-c4a37de8f1ad)
![image](https://github.com/user-attachments/assets/2be5733f-c126-4640-ac70-3ca09a8c3c4e)
![image](https://github.com/user-attachments/assets/99e34aa9-2167-4306-9077-3e5b43c04725)
![image](https://github.com/user-attachments/assets/4eb94028-e29c-4d4e-9af1-907442beacb5)
![image](https://github.com/user-attachments/assets/a04b6094-9cc7-46a2-83c5-ceee98d4c0a7)
![image](https://github.com/user-attachments/assets/aa7a5413-6426-4fdc-8cf0-e66b0e8499e2)
![image](https://github.com/user-attachments/assets/a1b0879a-4e5c-49b5-a25e-fdc130bca6ac)


**- Bước 6: Chuyển các thao tác đồ họa sang lệnh SQL:**
- Nhấp chuột phải vào tên bảng(dbo.Tên Bảng) ----> Scrip Table ----> CREATE To ----> New Query Editor WindowWindow


![image](https://github.com/user-attachments/assets/5023d34e-a34b-499d-b549-bb7ea8c5ff95)


- Lệnh SQL sau khi chuyển từ thao tác đồ họa:

![image](https://github.com/user-attachments/assets/38e998db-7213-4fd7-87bb-1b0700f8aa93)
![image](https://github.com/user-attachments/assets/e04a1801-2b49-42ce-bf78-d1cf3349502a)
![image](https://github.com/user-attachments/assets/1a006aaf-c918-4354-8a84-c626aec0b5a9)


