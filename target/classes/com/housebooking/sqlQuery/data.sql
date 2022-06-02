Use HouseBooking
Go
-- Select dữ liệu
Select * from Room
Go
Select * from City
Go
Select * from District
Go
Select * from Street
Go
Select * from Building
Go
Select * from Type_Of_Room
Go
Select * from Convenient
Go
Select * from Room_Convenient
Go
Select * from Users
Go
Select * from Bill
Go
Select * from Bill_detail
Go
Select * from Room_Images
Go
Select * from Feedback
Go

--Inser dữ liệu
Insert into Type_Of_Room
Values
	('type_1',N'Vintage cổ điển'),
	('type_2',N'Hiện đại')
Go

Insert into City
Values
	('01', N'Hà Nội'),
	('02', N'TP Hồ Chí Mình'),
	('42', N'Lâm Đồng')
Go

Insert into District
Values
	('HCM_01', N'Quận 1', '02'),
	('HCM_02', N'Quận 2', '02'),
	('HCM_18', N'Quận Thủ Đức', '02'),
	('HN_01', N'Quận Ba Đình', '01'),
	('HN_02', N'Quận Hoàn Kiếm', '01'),
	('LD_01', N'Thành phố Đà Lạt', '42')
Go

Insert into Street
Values
	('HCM_01_01', N'Nguyễn Huệ', 'HCM_01'),
	('HCM_01_02', N'Nguyễn Hữu Cảnh', 'HCM_01'),
	('HCM_02_01', N'Võ Trường Toản', 'HCM_02'),
	('HCM_02_02', N'Thảo Điền', 'HCM_02'),
	('HCM_18_01', N'Võ Vân Ngân', 'HCM_18'),
	('HN_01_01', N'Phố Cửa Bắc', 'HN_01'),
	('HN_02_01', N'Phố Hàng Nón', 'HN_02'),
	('LD_01_01', N'Hàm Nghi', 'LD_01')
Go

Insert into Building
Values
	('HCM_01_01_01', N'Nhà to view đẹp', 'HCM_01_01'),
	('HCM_01_02_01', N'Nhà to view đẹp hơn', 'HCM_01_02'),
	('HCM_02_01_01', N'Nhà to view đẹp hơn nữa', 'HCM_02_01'),
	('LD_01_01_01', N'Nhà view đẹp ở Đà Lạt', 'LD_01_01')
Go

Insert into Convenient
Values
	('Con_01',N'Bãi đỗ xe'),
	('Con_02',N'Hồ bơi'),
	('Con_03',N'Phòng xông hơi')
Go

Insert into Room
Values
	('Room_01',N'Trường Giang Dalat Homestay', N'Tọa lạc tại thành phố Đà Lạt, cách Vườn hoa Đà Lạt 1,3 km, Trường Giang Dalat Hotel cung cấp chỗ nghỉ với nhà hàng, chỗ đỗ xe riêng miễn phí, sảnh khách chung và khu vườn.', 900000, N'Giữ gìn vệ sinh, không xả rác','type_2', 'LD_01_01_01')
Go

Insert into Room_Convenient
Values
	('Room_01', 'Con_01'),
	('Room_01', 'Con_02'),
	('Room_01', 'Con_03')
Go

Insert into Users
Values
	('User_01', N'Nguyễn Trương Giang', 'Owner', 'Giang', '123', '0987654321', 'GiangNTSE150747@gfpt.edu.vn')
Go

Insert into Bill
Values
	('Room_01_Bill_01', '2022-06-01', 2700000, N'Chờ duyệt', 'User_01')
Go

Insert into Bill_detail
Values
	('Room_01_Bill_01', 'Room_01', '2022-06-06', '2022-06-09', N'Chủ nhà liên hệ lại gấp giúp em')
Go
