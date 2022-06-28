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
Select * from Building_Convenient
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

--Delete dữ liệu
-- Delete

Delete from City
Delete from District
Delete from Street
Delete from Building
Delete from Room_Images --6
Delete from Type_Of_Room --8
Delete from Convenient --5
Delete from Building_Convenient --4
Delete from Feedback --3
Delete from Bill_Detail --1
Delete from Bill --2
Delete from Users
Delete from Room  --7
Delete Additional_service --10
Delete Building_Additional_service --9
Go

--Inser dữ liệu
Insert into Type_Of_Room
Values
	('type_1',N'Cổ Điển'),
	('type_2',N'Hiện Đại'),
	('type_3',N'Thiên Nhiên')
Go

Insert into City
Values
	('48', N'Quảng Ninh'),
	('15', N'Đà Nẵng'),
	('11', N'Bình Thuận'),
	('35', N'Lâm Đồng'),
	('12', N'Cà Mau'),
	('24', N'Hà Nội'),
	('58', N'Hồ Chí Minh'),
	('22', N'Hà Giang'),
	('43', N'Phú Thọ'),
	('37', N'Lào Cai')
Go

Insert into District
Values
	('3701', N'Sa Pa', '37'),
	('3702', N'Bắc Hà', '37'),

	('4301', N'Việt Trì', '43'),
	('4302', N'Ba Vì', '43'),

	('2201', N'Đồng Văn', '22'),
	('2202', N'Mèo Vạc', '22'),

	('5801', N'Quận 1', '58'),
	('5802', N'Quận 2', '58'),

	('2401', N'Quận Hoàn Kiếm', '24'),
	('2402', N'Quận Ba Đình', '24'),

	('1201', N'U Minh', '12'),
	('1202', N'Phường 6', '12'),

	('3501', N'Phường 4', '35'),
	('3502', N'Phường 8', '35'),

	('1101', N'Hàm Thuận Nam', '11'),
	('1102', N'Hàm Tân', '11'),

	('1501', N'Sơn Trà', '15'),
	('1502', N'Ngũ Hành Sơn', '15'),

	('4801', N'Vân Đồn', '48'),
	('4802', N'Cô Tô', '48')

Go

Insert into Street
Values
	('580101',N'Nguyễn Trãi', '5801'),
	('580102',N'Phạm Ngũ Lão','5801'),
	('580201',N'19','5802'),
	('580202',N'38','5802'),

	('240101',N'Lương Ngọc Quyến','2401'),
	('240102',N'Tống Duy Tân','2401'),
	('240201',N'Phan Đình Phùng','2402'),
	('240202',N'Đội Cấn','2402'),

	('220101',N'Tổ 3 (Phố Cổ)','2201'),
	('220201',N'Pả Vi','2202'),

	('430101',N'Hung Vuong Square','4301'),
	('430201',N'Văn Hoà','4302'),

	('370101',N'Fansipan','3701'),
	('370201',N'Làng Tà Chải','3702'),

	('120101',N'Khánh An','1201'),
	('120201',N'Lý Thường Kiệt','1202'),

	('350101',N'Đoàn Thị Điểm','3501'),
	('350201',N'Trần Khánh Dư','3502'),

	('110101',N'Kê Gà','1101'),
	('110201',N'Số 18','1102'),

	('150101',N'Ngô Thì Sỹ','1501'),
	('150201',N'Hoàng Sa','1502'),

	('480101',N'Minh Châu','4801'),
	('480201',N'Cô Tô','4802')

Go

Insert into Users
Values
	('User_01', N'Nguyễn Trường Giang', '/view/web/images/avatar/Giang.jpg','Owner', 'Giang', '123', '0987654321', 'GiangNTSE150747@gfpt.edu.vn'),
	('User_02', N'Trần Nhựt Hào','/view/web/images/avatar/Hao.jpg', 'User', 'haotn', '123', '0369663031', 'haotnse150564@fpt.edu.vn'),
	('User_03', N'Nguyễn Quang',null, 'User',  'Quang', '123', '0987654321', 'GiangNTSE1507471@gfpt.edu.vn'),
	('User_04', N'Nguyễn Hoàng Duy', '/view/web/images/avatar/Duy.jpg', 'Admin', 'duycute', '456', '0987654321', 'DuyNHSE15073@gfpt.edu.vn')
Go

Insert into Building
Values
	('350101_B00','123 ABC', N'Homestay ABC', null, N'Homestay Dành cho khác chỉ qua đêm', N'Homestay', N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại','350101', 'User_01'),
	('580101_B01','123 ABC',  N'Homestay ABC', null, N'Hotel có phòng rộng gần với các địa điểm nổi tiếng', N'Homesay',N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', '580101', 'User_01'),
	('580101_B02','123 ABC',  N'Homestay ABC', null,N'Hotel có phòng đọc sách nhà ăn, v.v', N'Homestay',N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', '580101', 'User_01'),
	('580202_B01','123 ABC', N'Homestay ABC', null, N'Khách Sạn có phòng ăn, phòng sách riêng', N'Homestay',N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', '580202', 'User_01'),
	('240102_B01','123 ABC', N'Homestay ABC', null, N'Nhà 2 tầng đầy đủ tiện nghi thích hợp cho gia đình du lịch nhiều ngày', N'Nhà nguyên căn',N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', '240102', 'User_01'),
	('240202_B01','123 ABC', N'Homestay ABC', null, N'Phòng cho gia đình có đầy đủ tiện nghi', N'Homestay',N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', '240202', 'User_01'),
	('220101_B01','123 ABC', N'Homestay ABC', null, N'Khu nhà qua đêm phong cách cổ điển', N'Nhà nguyên căn',N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại','220101', 'User_01'),
	('430101_B01','123 ABC', N'Homestay ABC', null, N'Khách sạn phong cách hiện đại, đầy đủ tiện nghi, View đẹp', N'Homestay', N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại','430101', 'User_01'),
	('430201_B01','123 ABC', N'Homestay ABC', null, N'Nhà vườn, có hồ bơi bao bọc bởi cây cảnh', N'Nhà nguyên căn',N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại','430201',  'User_01'),
	('370101_B01','123 ABC', N'Homestay ABC', null,N'Resort và spa có cảnh quan đẹp bao quanh bỏi hồ, vườn cảnh', N'Homestay', N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại','370101', 'User_01'),
	('370201_B01','123 ABC', N'Homestay ABC', null,N'Homestay phong cách cổ điển hài hoà với thiên nhiên', N'Homestay', N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại','370201','User_01'),
	('120201_B01','123 ABC', N'Homestay ABC', null,N'Resort bãi biển, mát mẻ', N'Homestay',N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại','120201',  'User_01'),
	('120101_B01','123 ABC', N'Homestay ABC', null,N'Nhà gô gần gũi với thiên nhiên', N'Nhà nguyên căn',N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại','120101',  'User_01'),	
	('350101_B01','123 ABC', N'Homestay ABC', null,N'Gần khu vườn, có thể dùng để mở tiệc BBQ', N'Homestay',N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại','350101',  'User_01'),
	('350201_B01','123 ABC', N'Homestay ABC', null,N'Khu vườn cạnh nhà, thân thiện thiện với thú cưng', N'Homestay', N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại','350201', 'User_01'),	
	('110201_B01','123 ABC', N'Homestay ABC', null,N'Full căn hộ 84m2 có 3 phòng riêng', N'Nhà nguyên căn',N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại','110201',  'User_01'),
	('110101_B01','123 ABC', N'Homestay ABC', null,N'Homestay cho gia đình, đầy đủ tiện nghi',  N'Homestay',N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', '110101', 'User_01'),
	('150101_B01','123 ABC', N'Homestay ABC', null,N'Hotel có view nhìn ra thành phố', N'Hotel',N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', '150101', 'User_01'),
	('150201_B01','123 ABC', N'Homestay ABC', null,N'Chung cư gần biển', N'Homestay',N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại','150201',  'User_01'),
	('480101_B01','123 ABC', N'Homestay ABC', null,N'Khách sạn gần bãi biển',  N'Hotel', N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại','480101', 'User_01'),
	('480201_B01','123 ABC', N'Homestay ABC', null,N'Homestay kiểu khu vườn', N'Homestay',N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', '480201', 'User_01')
Go

Insert into Convenient
Values
	('Con_01',N'Bãi đỗ xe'),
	('Con_02',N'Hồ bơi'),
	('Con_03',N'Phòng xông hơi'),
	('Con_04',N'Wifi'),
	('Con_05',N'Cho phép mang theo vật nuôi'),
	('Con_06',N'Trung tâm thể thao'),
	('Con_07',N'Tiện nghi cho người khuyết tật')
Go

Insert into Building_Convenient
Values
	('350101_B00', 'Con_01'),
	('350101_B00', 'Con_02'),
	('350101_B00', 'Con_03'),
	('350101_B00', 'Con_04'),
	('350101_B00', 'Con_05'),
	('350101_B00', 'Con_06'),
	('350101_B00', 'Con_07'),

	('580101_B01', 'Con_01'),
	('580101_B01', 'Con_02'),
	('580101_B01', 'Con_03'),
	('580101_B01', 'Con_04'),
	('580101_B01', 'Con_05'),
	('580101_B01', 'Con_06'),
	('580101_B01', 'Con_07'),

	('110101_B01', 'Con_01'),
	('110101_B01', 'Con_02'),
	('110101_B01', 'Con_03'),
	('110101_B01', 'Con_04'),
	('110101_B01', 'Con_05'),
	('110101_B01', 'Con_06'),
	('110101_B01', 'Con_07'),

	('580202_B01', 'Con_01'),
	('580202_B01', 'Con_02'),
	('580202_B01', 'Con_03'),
	('580202_B01', 'Con_04'),
	('580202_B01', 'Con_05'),
	('580202_B01', 'Con_06'),
	('580202_B01', 'Con_07'),

	('240102_B01', 'Con_01'),
	('240102_B01', 'Con_02'),
	('240102_B01', 'Con_03'),
	('240102_B01', 'Con_04'),
	('240102_B01', 'Con_05'),
	('240102_B01', 'Con_06'),
	('240102_B01', 'Con_07'),

	('480101_B01', 'Con_01'),
	('480101_B01', 'Con_02'),
	('480101_B01', 'Con_03'),
	('480101_B01', 'Con_04'),
	('480101_B01', 'Con_05'),
	('480101_B01', 'Con_06'),
	('480101_B01', 'Con_07'),

	('240202_B01', 'Con_01'),
	('240202_B01', 'Con_02'),
	('240202_B01', 'Con_03'),
	('240202_B01', 'Con_04'),
	('240202_B01', 'Con_05'),
	('240202_B01', 'Con_06'),
	('240202_B01', 'Con_07'),

	('220101_B01', 'Con_01'),
	('220101_B01', 'Con_02'),
	('220101_B01', 'Con_03'),
	('220101_B01', 'Con_04'),
	('220101_B01', 'Con_05'),
	('220101_B01', 'Con_06'),
	('220101_B01', 'Con_07'),

	('430101_B01', 'Con_01'),
	('430101_B01', 'Con_02'),
	('430101_B01', 'Con_03'),
	('430101_B01', 'Con_04'),
	('430101_B01', 'Con_05'),
	('430101_B01', 'Con_06'),
	('430101_B01', 'Con_07')
Go

Insert into Room
Values
	('Room_01',N'Trường Giang Dalat Homestay', 'active', N'Tọa lạc tại thành phố Đà Lạt, cách Vườn hoa Đà Lạt 1,3 km, Trường Giang Dalat Hotel cung cấp chỗ nghỉ với nhà hàng, chỗ đỗ xe riêng miễn phí, sảnh khách chung và khu vườn.', 900000, 'type_2', '350101_B00'),
	('Room_02',N'ACE Hotel - Bến Thành', 'active', N'139H Nguyễn Trãi, Quận 1, TP. Hồ Chí Minh, cách chợ Bến Thành 5 phút đi bộ',450000.00,'type_2','580101_B01'),
	('Room_03',N'Calista Sai Gon Hotel', 'active', N'247-249, Lý Tự Trọng, Phường Bến Thành Quận 1, TP. Hồ Chí Minh',750000.00,'type_2','580101_B02'),
	('Room_07',N'Common Inn Thao Dien', 'active', N'19, Đường 38, Phường Thảo Điền, Quận 2, TP.HCM', 780000.00,'type_2','580202_B01'),
	('Room_04',N'WECOZY HANOI - Railway Side, The Old Quarter', 'active', N'20 Tống Duy Tân, Quận Hoàn Kiếm, Hà Nội, Việt Nam ',1000000.00,'type_2','240102_B01'),
	('Room_05',N'Lakeside House', 'active', N'135 đường Đội Cấn, quận Ba Đình, Hà Nội',325000.00,'type_2','240202_B01'),
	('Room_06',N'Ancient Town 29 Phố Cổ', 'active', N'29 tổ 3 (Phố Cổ), Đồng Văn, Việt Nam',330000.00,'type_1','220101_B01'),
	('Room_08',N'Sapa Catcat Hills Resort & Spa', 'active', N'86 Fansipan, Sapa, Việt Nam, cách ga cáp treo Fansipan Legend 14 phút đi bộ',187800.00,'type_3','370101_B01'),
	('Room_09',N'La Beauté Bắc Hà','active',N'Homestay được xây dựng tại làng Tá Chài, Bắc Hà, Lào Cai, Việt Nam, CÓ WIFI',340000,'type_1','370201_B01'),
	('Room_10',N'Nhà gỗ - Farmstay Hoa Rừng U Minh', 'active', N'Ấp 15, xã Khánh An, Huyện U Minh, tỉnh Cà Mau, Cách Cà Mau 20.9km ',360000.00,'type_3','120101_B01'),
	('Room_12',N'Lovely House','active',N'Hẻm 3 /4 Đường Đoàn Thị Điểm Phường 4 Thành phố Đà Lạt,Việt Nam',380000.00,'type_3','350101_B01'),
	('Room_13',N'Raon Valley Villa', 'active', N'44D Trần Khánh Dư, Phường 8, Da Lat, Việt Nam, Cách Vườn Hoa Đà Lạt 17 phút đi bộ',400000.00,'type_3','350101_B01'),
	('Room_14',N'Muong Thanh Luxury Phu Tho', 'active', N'Toạ lạc tại CC17 Unit, Hung Vuong Square, Việt Trì, Việt Nam ',146100.00,'type_2','430101_B01'),
	('Room_11',N'Chunlii Homestay', 'active', N'Mũi Kê Gà, xã Tân Thành, Thành Thuận Nam, Bình Thuận',444000.00,'type_2','110101_B01'),
	('Room_15',N'Cosmos Hotel Danang', 'active', N'117-119 Ngô Thì Sỹ, Phường Mỹ An, Ngũ Hành Sơn, Đà Nẵng, Việt Nam, Cách Biển Mỹ Khê 300m và Biển Bắc Mỹ An 450m',737000.00,'type_2','150101_B01'),
	('Room_16',N'Grand Pearl Minh Chau', 'active', N'Xã Minh Châu, Đảo Quan Lạn, Huyện Vân Đồn, Tỉnh Quảng Ninh, Cách bãi biển 1 phút đi bộ',2041000.00,'type_2','480101_B01'),
	('Room_17',N'Lavie Villa', 'active', N'Nằm cách Hồ Xuân Hương 2,7 km, Lavie Villa có sảnh khách chung, vườn cũng như chỗ nghỉ gắn máy điều hòa với ban công và WiFi miễn phí.',500000,'type_2','480101_B01')
Go

Insert into Bill
Values
	('Room_01_Bill_01', '2022-06-01', 2700000, N'Chờ duyệt', 'User_03')
Go

Insert into Bill_detail
Values
	('Room_01_Bill_01', 'Room_01', '2022-07-06', '2022-07-09',900000, null, 0)
Go

Insert into Room_Images
Values
	('Room_01', '/view/web/resourse/room_01_01.jpg','image-1'),
	('Room_01', '/view/web/resourse/room_01_02.jpg','image-2'),
	('Room_01', '/view/web/resourse/room_01_03.jpg','image-3'),
	('Room_02', '/view/web/resourse/room_02_01.jpg','image-1'),
	('Room_03', '/view/web/resourse/room_03_01.jpg','image-1'),
	('Room_04', '/view/web/resourse/room_04_01.jpg','image-1'),
	('Room_05', '/view/web/resourse/room_05_01.jpg','image-1'),
	('Room_06', '/view/web/resourse/room_06_01.jpg','image-1'),
	('Room_07', '/view/web/resourse/room_07_01.jpg','image-1'),
	('Room_08', '/view/web/resourse/room_08_01.jpg','image-1'),
	('Room_09', '/view/web/resourse/room_09_01.jpg','image-1'),
	('Room_10', '/view/web/resourse/room_10_01.jpg','image-1'),
	('Room_11', '/view/web/resourse/room_11_01.jpg','image-1'),
	('Room_12', '/view/web/resourse/room_12_01.jpg','image-1'),
	('Room_13', '/view/web/resourse/room_13_01.jpg','image-1'),
	('Room_14', '/view/web/resourse/room_14_01.jpg','image-1'),
	('Room_15', '/view/web/resourse/room_15_01.jpg','image-1'),
	('Room_16', '/view/web/resourse/room_16_01.jpg','image-1'),
	('Room_17', '/view/web/resourse/room_17_01.jpg','image-1')
Go


--//////////////////////////////////////////////

insert into dbo.Additional_service 
values	('SV001',N'Nước Suối',Null),
		('SV002',N'Coca Cola',Null),
		('SV003',N'Pepsi',Null),
		('SV004',N'String Dâu',Null),
		('SV005',N'Snack',Null),
		('SV006',N'Rượu Vang',Null)
Go

insert into dbo.Building_Additional_service
values	('110101_B01','SV001','true',30),
		('110101_B01','SV002','true',40),
		('110101_B01','SV003','true',40),
		('110101_B01','SV004','true',40),
		('110101_B01','SV005','true',20),
		('110101_B01','SV006','true',400),
		('110201_B01','SV001','true',20),
		('110201_B01','SV002','true',30),
		('110201_B01','SV003','true',30),
		('120101_B01','SV001','true',50),
		('120101_B01','SV002','true',60),
		('120101_B01','SV003','true',60),
		('350101_B00','SV001','true',50),
		('350101_B00','SV002','true',60),
		('350101_B00','SV003','true',60),
		('350101_B00','SV004','true',50),
		('350101_B00','SV005','true',60)
Go

--12
INSERT [dbo].[Bill] ([bill_id], [date], [total], [status], [user_id]) VALUES (N'R01_01', CAST(N'2022-06-23' AS Date), 2400000, N'Đang xử lý', N'User_10')
INSERT [dbo].[Bill] ([bill_id], [date], [total], [status], [user_id]) VALUES (N'R01_02', CAST(N'2022-06-26' AS Date), 900000, N'Đang xử lý', N'User_11')
INSERT [dbo].[Bill] ([bill_id], [date], [total], [status], [user_id]) VALUES (N'R02_01', CAST(N'2022-06-26' AS Date), 900000, N'Đang xử lý', N'User_10')
INSERT [dbo].[Bill] ([bill_id], [date], [total], [status], [user_id]) VALUES (N'R03_01', CAST(N'2022-06-26' AS Date), 900000, N'Đang xử lý', N'User_10')
INSERT [dbo].[Bill] ([bill_id], [date], [total], [status], [user_id]) VALUES (N'R28_01', CAST(N'2022-06-01' AS Date), 650000, N'Chờ duyệt', N'User_03')
GO

--13
INSERT [dbo].[Bill_detail] ([bill_id], [room_id], [start_date], [end_date], [price], [note], [expense]) VALUES (N'R01_01', N'Room_01', CAST(N'2022-06-15' AS Date), CAST(N'2022-06-23' AS Date), 2400000, N'Không có', 0)
INSERT [dbo].[Bill_detail] ([bill_id], [room_id], [start_date], [end_date], [price], [note], [expense]) VALUES (N'R01_02', N'Room_01', CAST(N'2022-06-24' AS Date), CAST(N'2022-06-26' AS Date), 900000, N'Không có', 0)
INSERT [dbo].[Bill_detail] ([bill_id], [room_id], [start_date], [end_date], [price], [note], [expense]) VALUES (N'R02_01', N'Room_02', CAST(N'2022-06-24' AS Date), CAST(N'2022-06-26' AS Date), 900000, N'Không có', 0)
INSERT [dbo].[Bill_detail] ([bill_id], [room_id], [start_date], [end_date], [price], [note], [expense]) VALUES (N'R03_01', N'Room_03', CAST(N'2022-06-24' AS Date), CAST(N'2022-06-26' AS Date), 900000, N'Không có', 0)
INSERT [dbo].[Bill_detail] ([bill_id], [room_id], [start_date], [end_date], [price], [note], [expense]) VALUES (N'R28_01', N'Room_28', CAST(N'2022-07-06' AS Date), CAST(N'2022-07-07' AS Date), 650000, N'Không có', 0)
GO

--6
INSERT [dbo].[Building] ([building_id], [building_number], [building_name], [buiding_image], [building_desc], [building_type], [building_rule], [street_id], [user_id]) VALUES (N'110101_B01', N'Số 77', N'Fisherman Village Boutique Villas - Beachfront', NULL, N'Homestay cho gia đình, đầy đủ tiện nghi', N'Homestay', N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', N'110101', N'User_05')
INSERT [dbo].[Building] ([building_id], [building_number], [building_name], [buiding_image], [building_desc], [building_type], [building_rule], [street_id], [user_id]) VALUES (N'110201_B01', N'Số 34, Mũi Kê Gà', N'Chunlii Homestay', NULL, N'Full căn hộ 84m2 có 3 phòng riêng', N'Nhà nguyên căn', N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', N'110201', N'User_08')
INSERT [dbo].[Building] ([building_id], [building_number], [building_name], [buiding_image], [building_desc], [building_type], [building_rule], [street_id], [user_id]) VALUES (N'120101_B01', N'Số 93', N'THƯ DUY Resort', NULL, N'Nhà gô gần gũi với thiên nhiên', N'Nhà nguyên căn', N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', N'120101', N'User_08')
INSERT [dbo].[Building] ([building_id], [building_number], [building_name], [buiding_image], [building_desc], [building_type], [building_rule], [street_id], [user_id]) VALUES (N'120201_B01', N'Số 23, Ấp 15', N'Nhà gỗ - Farmstay Hoa Rừng U Minh', NULL, N'Resort bãi biển, mát mẻ', N'Homestay', N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', N'120201', N'User_07')
INSERT [dbo].[Building] ([building_id], [building_number], [building_name], [buiding_image], [building_desc], [building_type], [building_rule], [street_id], [user_id]) VALUES (N'150101_B01', N'117-119, Ngô Thuỳ Sỹ', N'Cosmos Hotel Danang', NULL, N'Hotel có view nhìn ra thành phố', N'Hotel', N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', N'150101', N'User_01')
INSERT [dbo].[Building] ([building_id], [building_number], [building_name], [buiding_image], [building_desc], [building_type], [building_rule], [street_id], [user_id]) VALUES (N'150201_B01', N'Sô 54', N'Vietstork Villa 03 Bedroom Resort', NULL, N'Chung cư gần biển', N'Homestay', N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', N'150201', N'User_06')
INSERT [dbo].[Building] ([building_id], [building_number], [building_name], [buiding_image], [building_desc], [building_type], [building_rule], [street_id], [user_id]) VALUES (N'220101_B01', N'Số 29 tổ 3', N'Ancient Town 29 Phố Cổ', NULL, N'Khu nhà qua đêm phong cách cổ điển', N'Nhà nguyên căn', N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', N'220101', N'User_07')
INSERT [dbo].[Building] ([building_id], [building_number], [building_name], [buiding_image], [building_desc], [building_type], [building_rule], [street_id], [user_id]) VALUES (N'240102_B01', N'Số 20', N'WECOZY HANOI - Railway Side, The Old Quarter', NULL, N'Nhà 2 tầng đầy đủ tiện nghi thích hợp cho gia đình du lịch nhiều ngày', N'Nhà nguyên căn', N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', N'240102', N'User_08')
INSERT [dbo].[Building] ([building_id], [building_number], [building_name], [buiding_image], [building_desc], [building_type], [building_rule], [street_id], [user_id]) VALUES (N'240202_B01', N'Số 12', N'Lakeside House', NULL, N'Phòng cho gia đình có đầy đủ tiện nghi', N'Homestay', N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', N'240202', N'User_05')
INSERT [dbo].[Building] ([building_id], [building_number], [building_name], [buiding_image], [building_desc], [building_type], [building_rule], [street_id], [user_id]) VALUES (N'350101_B00', N'123, Hồ Xuân Huong', N'Trường Giang Dalat Homestay', NULL, N'Homestay Dành cho khác chỉ qua đêm', N'Homestay', N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', N'350101', N'User_01')
INSERT [dbo].[Building] ([building_id], [building_number], [building_name], [buiding_image], [building_desc], [building_type], [building_rule], [street_id], [user_id]) VALUES (N'350101_B01', N'Số Số 34, H?m 3/4', N'Lovely House', NULL, N'Gần khu vườn, có thể dùng để mở tiệc BBQ', N'Homestay', N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', N'350101', N'User_01')
INSERT [dbo].[Building] ([building_id], [building_number], [building_name], [buiding_image], [building_desc], [building_type], [building_rule], [street_id], [user_id]) VALUES (N'350201_B01', N'Số 44D', N'Raon Valley Villa', NULL, N'Khu vườn cạnh nhà, thân thiện thiện với thú cưng', N'Homestay', N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', N'350201', N'User_07')
INSERT [dbo].[Building] ([building_id], [building_number], [building_name], [buiding_image], [building_desc], [building_type], [building_rule], [street_id], [user_id]) VALUES (N'370101_B01', N'Số 86', N'Sapa Catcat Hills Resort & Spa', NULL, N'Resort và spa có cảnh quan đẹp bao quanh bỏi hồ, vườn cảnh', N'Homestay', N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', N'370101', N'User_01')
INSERT [dbo].[Building] ([building_id], [building_number], [building_name], [buiding_image], [building_desc], [building_type], [building_rule], [street_id], [user_id]) VALUES (N'370201_B01', N'Làng Tá Chài', N'La Beauté Bắc Hà', NULL, N'Homestay phong cách cổ điển hài hoà với thiên nhiên', N'Homestay', N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', N'370201', N'User_06')
INSERT [dbo].[Building] ([building_id], [building_number], [building_name], [buiding_image], [building_desc], [building_type], [building_rule], [street_id], [user_id]) VALUES (N'430101_B01', N'CC17 Unit ', N'Muong Thanh Luxury Phu Tho', NULL, N'Khách sạn phong cách hiện đại, đầy đủ tiện nghi, View đẹp', N'Homestay', N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', N'430101', N'User_06')
INSERT [dbo].[Building] ([building_id], [building_number], [building_name], [buiding_image], [building_desc], [building_type], [building_rule], [street_id], [user_id]) VALUES (N'430201_B01', N'Số 33 ', N'Chin Luc Hotel', NULL, N'Nhà vườn, có hồ bơi bao bọc bởi cây cảnh', N'Nhà nguyên căn', N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', N'430201', N'User_08')
INSERT [dbo].[Building] ([building_id], [building_number], [building_name], [buiding_image], [building_desc], [building_type], [building_rule], [street_id], [user_id]) VALUES (N'480101_B01', N'Số 99', N'Grand Pearl Minh Chau', NULL, N'Khách sạn gần bãi biển', N'Hotel', N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', N'480101', N'User_08')
INSERT [dbo].[Building] ([building_id], [building_number], [building_name], [buiding_image], [building_desc], [building_type], [building_rule], [street_id], [user_id]) VALUES (N'480201_B01', N'Số 38, Khu ph? 4', N'Starlight Boutique Hotel', NULL, N'Homestay kiểu khu vườn', N'Homestay', N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', N'480201', N'User_05')
INSERT [dbo].[Building] ([building_id], [building_number], [building_name], [buiding_image], [building_desc], [building_type], [building_rule], [street_id], [user_id]) VALUES (N'580101_B01', N'139H', N'ACE Hotel - Bến Thành', NULL, N'Hotel có phòng rộng gần với các địa điểm nổi tiếng', N'Homesay', N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', N'580101', N'User_05')
INSERT [dbo].[Building] ([building_id], [building_number], [building_name], [buiding_image], [building_desc], [building_type], [building_rule], [street_id], [user_id]) VALUES (N'580101_B02', N'247-249, Lý Tự Trọng', N'Calista Sai Gon Hotel', NULL, N'Hotel có phòng đọc sách nhà ăn, v.v', N'Homestay', N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', N'580101', N'User_06')
INSERT [dbo].[Building] ([building_id], [building_number], [building_name], [buiding_image], [building_desc], [building_type], [building_rule], [street_id], [user_id]) VALUES (N'580202_B01', N'198, Ðường Số 38', N'Common Inn Thao Dien', NULL, N'Khách Sạn có phòng ăn, phòng sách riêng', N'Homestay', N'Không hút thuốc các kiểu, chỗ này trên page dùng CKEDITOR sửa lại', N'580202', N'User_07')
GO

--8
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'110101_B01', N'Con_01')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'110101_B01', N'Con_02')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'110101_B01', N'Con_03')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'110101_B01', N'Con_04')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'110101_B01', N'Con_05')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'110101_B01', N'Con_06')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'110101_B01', N'Con_07')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'220101_B01', N'Con_01')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'220101_B01', N'Con_02')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'220101_B01', N'Con_03')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'220101_B01', N'Con_04')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'220101_B01', N'Con_05')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'220101_B01', N'Con_06')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'220101_B01', N'Con_07')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'240102_B01', N'Con_01')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'240102_B01', N'Con_02')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'240102_B01', N'Con_03')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'240102_B01', N'Con_04')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'240102_B01', N'Con_05')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'240102_B01', N'Con_06')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'240102_B01', N'Con_07')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'240202_B01', N'Con_01')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'240202_B01', N'Con_02')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'240202_B01', N'Con_03')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'240202_B01', N'Con_04')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'240202_B01', N'Con_05')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'240202_B01', N'Con_06')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'240202_B01', N'Con_07')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'350101_B00', N'Con_01')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'350101_B00', N'Con_02')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'350101_B00', N'Con_03')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'350101_B00', N'Con_04')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'350101_B00', N'Con_05')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'350101_B00', N'Con_06')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'350101_B00', N'Con_07')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'430101_B01', N'Con_01')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'430101_B01', N'Con_02')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'430101_B01', N'Con_03')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'430101_B01', N'Con_04')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'430101_B01', N'Con_05')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'430101_B01', N'Con_06')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'430101_B01', N'Con_07')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'480101_B01', N'Con_01')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'480101_B01', N'Con_02')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'480101_B01', N'Con_03')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'480101_B01', N'Con_04')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'480101_B01', N'Con_05')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'480101_B01', N'Con_06')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'480101_B01', N'Con_07')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'580101_B01', N'Con_01')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'580101_B01', N'Con_02')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'580101_B01', N'Con_03')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'580101_B01', N'Con_04')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'580101_B01', N'Con_05')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'580101_B01', N'Con_06')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'580101_B01', N'Con_07')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'580202_B01', N'Con_01')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'580202_B01', N'Con_02')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'580202_B01', N'Con_03')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'580202_B01', N'Con_04')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'580202_B01', N'Con_05')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'580202_B01', N'Con_06')
INSERT [dbo].[Building_Convenient] ([building_id], [convenient_id]) VALUES (N'580202_B01', N'Con_07')
GO

--1
INSERT [dbo].[City] ([city_id], [city_name]) VALUES (N'01', N'An Giang')
INSERT [dbo].[City] ([city_id], [city_name]) VALUES (N'02', N'Bà Rịa – Vũng Tàu')
INSERT [dbo].[City] ([city_id], [city_name]) VALUES (N'05', N'Bạc Liêu')
INSERT [dbo].[City] ([city_id], [city_name]) VALUES (N'08', N'Bình Định')
INSERT [dbo].[City] ([city_id], [city_name]) VALUES (N'11', N'Bình Thuận')
INSERT [dbo].[City] ([city_id], [city_name]) VALUES (N'12', N'Cà Mau')
INSERT [dbo].[City] ([city_id], [city_name]) VALUES (N'15', N'Đà Nẵng')
INSERT [dbo].[City] ([city_id], [city_name]) VALUES (N'19', N'Đồng Nai')
INSERT [dbo].[City] ([city_id], [city_name]) VALUES (N'22', N'Hà Giang')
INSERT [dbo].[City] ([city_id], [city_name]) VALUES (N'23', N'Hà Nam')
INSERT [dbo].[City] ([city_id], [city_name]) VALUES (N'24', N'Hà Nội')
INSERT [dbo].[City] ([city_id], [city_name]) VALUES (N'30', N'Hưng Yên')
INSERT [dbo].[City] ([city_id], [city_name]) VALUES (N'33', N'Kon Tum')
INSERT [dbo].[City] ([city_id], [city_name]) VALUES (N'34', N'Lai Châu')
INSERT [dbo].[City] ([city_id], [city_name]) VALUES (N'35', N'Lâm Đồng')
INSERT [dbo].[City] ([city_id], [city_name]) VALUES (N'37', N'Lào Cai')
INSERT [dbo].[City] ([city_id], [city_name]) VALUES (N'43', N'Phú Thọ')
INSERT [dbo].[City] ([city_id], [city_name]) VALUES (N'44', N'Phú Yên')
INSERT [dbo].[City] ([city_id], [city_name]) VALUES (N'45', N'Quảng Bình')
INSERT [dbo].[City] ([city_id], [city_name]) VALUES (N'48', N'Quảng Ninh')
INSERT [dbo].[City] ([city_id], [city_name]) VALUES (N'55', N'Thanh Hóa')
INSERT [dbo].[City] ([city_id], [city_name]) VALUES (N'58', N'Hồ Chí Minh')
INSERT [dbo].[City] ([city_id], [city_name]) VALUES (N'63', N'Yên Bái')
GO

--7
INSERT [dbo].[Convenient] ([convenient_id], [convenient_name]) VALUES (N'Con_01', N'Bãi đỗ xe')
INSERT [dbo].[Convenient] ([convenient_id], [convenient_name]) VALUES (N'Con_02', N'Hồ bơi')
INSERT [dbo].[Convenient] ([convenient_id], [convenient_name]) VALUES (N'Con_03', N'Phòng xông hơi')
INSERT [dbo].[Convenient] ([convenient_id], [convenient_name]) VALUES (N'Con_04', N'Wifi')
INSERT [dbo].[Convenient] ([convenient_id], [convenient_name]) VALUES (N'Con_05', N'Cho phép mang theo vật nuôi')
INSERT [dbo].[Convenient] ([convenient_id], [convenient_name]) VALUES (N'Con_06', N'Trung tâm thể thao')
INSERT [dbo].[Convenient] ([convenient_id], [convenient_name]) VALUES (N'Con_07', N'Tiện nghi cho người khuyết tật')
INSERT [dbo].[Convenient] ([convenient_id], [convenient_name]) VALUES (N'Con_08', N'Sân golf')
INSERT [dbo].[Convenient] ([convenient_id], [convenient_name]) VALUES (N'Con_09', N'Sân bóng')
INSERT [dbo].[Convenient] ([convenient_id], [convenient_name]) VALUES (N'Con_10', N'Sân chơi cho trẻ em')
INSERT [dbo].[Convenient] ([convenient_id], [convenient_name]) VALUES (N'Con_11', N'Phục vụ đồ ăn tận phòng')
INSERT [dbo].[Convenient] ([convenient_id], [convenient_name]) VALUES (N'Con_12', N'Quầy bar')
GO

--2
INSERT [dbo].[District] ([district_id], [district_name], [city_id]) VALUES (N'1101', N'Hàm Thuận Nam', N'11')
INSERT [dbo].[District] ([district_id], [district_name], [city_id]) VALUES (N'1102', N'Hàm Tân', N'11')
INSERT [dbo].[District] ([district_id], [district_name], [city_id]) VALUES (N'1201', N'U Minh', N'12')
INSERT [dbo].[District] ([district_id], [district_name], [city_id]) VALUES (N'1202', N'Phường 6', N'12')
INSERT [dbo].[District] ([district_id], [district_name], [city_id]) VALUES (N'1501', N'Sơn Trà', N'15')
INSERT [dbo].[District] ([district_id], [district_name], [city_id]) VALUES (N'1502', N'Ngũ Hành Sơn', N'15')
INSERT [dbo].[District] ([district_id], [district_name], [city_id]) VALUES (N'2201', N'Đồng Văn', N'22')
INSERT [dbo].[District] ([district_id], [district_name], [city_id]) VALUES (N'2202', N'Mèo Vạc', N'22')
INSERT [dbo].[District] ([district_id], [district_name], [city_id]) VALUES (N'2401', N'Quận Hoàn Kiếm', N'24')
INSERT [dbo].[District] ([district_id], [district_name], [city_id]) VALUES (N'2402', N'Quận Ba Đình', N'24')
INSERT [dbo].[District] ([district_id], [district_name], [city_id]) VALUES (N'3501', N'Phường 4', N'35')
INSERT [dbo].[District] ([district_id], [district_name], [city_id]) VALUES (N'3502', N'Phường 8', N'35')
INSERT [dbo].[District] ([district_id], [district_name], [city_id]) VALUES (N'3701', N'Sa Pa', N'37')
INSERT [dbo].[District] ([district_id], [district_name], [city_id]) VALUES (N'3702', N'Bắc Hà', N'37')
INSERT [dbo].[District] ([district_id], [district_name], [city_id]) VALUES (N'4301', N'Việt Trì', N'43')
INSERT [dbo].[District] ([district_id], [district_name], [city_id]) VALUES (N'4302', N'Ba Vì', N'43')
INSERT [dbo].[District] ([district_id], [district_name], [city_id]) VALUES (N'4801', N'Vân Đồn', N'48')
INSERT [dbo].[District] ([district_id], [district_name], [city_id]) VALUES (N'4802', N'Cô Tô', N'48')
INSERT [dbo].[District] ([district_id], [district_name], [city_id]) VALUES (N'5801', N'Quận 1', N'58')
INSERT [dbo].[District] ([district_id], [district_name], [city_id]) VALUES (N'5802', N'Quận 2', N'58')
GO

--10
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_01', N'Trường Giang Dalat Homestay_001', N'active', N'Phòng 1 giường đôi', 900000, N'type_2', N'350101_B00')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_02', N'Trường Giang Dalat Homestay_002', N'active', N'Phòng 1 giường đơn', 900000, N'type_2', N'350101_B00')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_03', N'Trường Giang Dalat Homestay_003', N'active', N'Phòng ngủ cho nhiều người', 1200000, N'type_2', N'350101_B00')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_04', N'Chunlii Homestay_001', N'active', N'Phòng đơn', 330000, N'type_2', N'110101_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_05', N'Chunlii Homestay_002', N'active', N'Phòng đôi', 330000, N'type_2', N'110101_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_06', N'Fisherman Village Boutique Villas - Beachfront_001', N'active', N'Phòng đơn', 400000, N'type_3', N'110201_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_08', N'Fisherman Village Boutique Villas - Beachfront_002', N'active', N'Phòng đơn', 400000, N'type_3', N'110201_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_09', N'Nhà gỗ - Farmstay Hoa Rừng U Minh_001', N'active', N'Phòng 2 giường đơn', 340000, N'type_1', N'120201_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_11', N'Nhà gỗ - Farmstay Hoa Rừng U Minh_002', N'active', N'Phòng 1 giường đôi', 340000, N'type_1', N'120201_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_12', N'THƯ DUY Resort_001', N'active', N'Phòng 1 giường đôi', 380000, N'type_3', N'120101_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_13', N'THƯ DUY Resort_002', N'active', N'Phòng 2 giường đơn', 380000, N'type_3', N'120101_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_14', N'Cosmos Hotel Danang_001', N'active', N'Phòng 1 giường đơn, 1 giường đôi', 844000, N'type_2', N'150101_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_17', N'Cosmos Hotel Danang_002', N'active', N'Phòng 1 giường đơn', 444000, N'type_2', N'150101_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_18', N'Cosmos Hotel Danang_003', N'active', N'Phòng 1 giường đôi', 644000, N'type_2', N'150101_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_20', N'Vietstork Villa 03 Bedroom Resort_001', N'active', N'Phòng 3 phòng ngủ riêng', 980000, N'type_2', N'150201_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_22', N'Vietstork Villa 03 Bedroom Resort_002', N'active', N'Phòng 3 phòng ngủ riêng', 780000, N'type_2', N'150201_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_23', N'Ancient Town 29 Phố Cổ_001', N'active', N'Phòng 1 giường đôi', 390000, N'type_2', N'220101_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_24', N'Ancient Town 29 Phố Cổ_002', N'active', N'Phòng 2 giường đôi', 390000, N'type_2', N'220101_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_25', N'WECOZY HANOI - Railway Side, The Old Quarter_001', N'active', N'Phòng 1 giường đôi', 450000, N'type_1', N'240102_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_26', N'WECOZY HANOI - Railway Side, The Old Quarter_002', N'active', N'Phòng 1 giường đôi', 450000, N'type_1', N'240102_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_27', N'Lakeside House_002', N'active', N'Phòng 1 giường đôi', 350000, N'type_1', N'240202_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_28', N'Lakeside House_001', N'active', N'Phòng ngủ cho gia đình 3-4 người', 850000, N'type_1', N'240202_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_29', N'Lovely House_001', N'active', N'Phòng 2 phòng ngủ riêng', 350000, N'type_3', N'350101_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_30', N'Lovely House_002', N'active', N'Phòng cho gia đình có 3 phòng riêng', 350000, N'type_3', N'350101_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_31', N'Raon Valley Villa_001', N'active', N'4 phòng riêng (mỗi phòng có nhà VS riêng), có nhà bếp', 900000, N'type_1', N'350201_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_32', N'Raon Valley Villa_002', N'active', N'2 phòng riêng, có thêm phòng khách, nhà bếp', 600000, N'type_1', N'350201_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_33', N'Sapa Catcat Hills Resort & Spa_001', N'active', N'Phòng 1 giường đơn', 600000, N'type_3', N'370101_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_34', N'Sapa Catcat Hills Resort & Spa_002', N'active', N'Phòng 1 giường đôi', 650000, N'type_3', N'370101_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_35', N'La Beauté Bắc Hà_001', N'active', N'Phòng 2 giường đơn', 500000, N'type_2', N'370201_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_36', N'La Beauté Bắc Hà_002', N'active', N'Phòng 1 giường đôi', 450000, N'type_2', N'370201_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_37', N'Muong Thanh Luxury Phu Tho_001', N'active', N'Phòng 1 giường đơn', 350000, N'type_2', N'430101_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_38', N'Muong Thanh Luxury Phu Tho_002', N'active', N'Phòng 1 giường đôi', 350000, N'type_2', N'430101_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_40', N'Chin Luc Hotel_002', N'active', N'Phòng 1 giường đơn', 450000, N'type_1', N'430201_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_41', N'Chin Luc Hotel_001', N'active', N'Phòng 2 giường đơn', 450000, N'type_1', N'430201_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_42', N'Grand Pearl Minh Chau_001', N'active', N'Phòng 2 giường đơn', 650000, N'type_1', N'480101_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_43', N'Grand Pearl Minh Chau_002', N'active', N'Phòng 1 giường đôi', 650000, N'type_1', N'480101_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_44', N'Starlight Boutique Hotel_001', N'active', N'Phòng 1 giường đôi', 550000, N'type_1', N'480201_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_45', N'Starlight Boutique Hotel_002', N'active', N'Phòng 2 giường đơn', 650000, N'type_1', N'480201_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_46', N'ACE Hotel - Bến Thành_001', N'active', N'Phòng 1 giường đôi', 750000, N'type_1', N'580101_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_47', N'ACE Hotel - Bến Thành_002', N'active', N'Phòng 1 giường đôi', 750000, N'type_1', N'580101_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_48', N'Calista Sai Gon Hotel_001', N'active', N'Phòng 1 giường đôi', 7000000, N'type_1', N'580101_B02')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_49', N'Calista Sai Gon Hotel_002', N'active', N'Phòng 2 giường đơn', 680000, N'type_1', N'580101_B02')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_50', N'Common Inn Thao Dien_001', N'active', N'Phòng 1 giường đôi', 6000000, N'type_1', N'580202_B01')
INSERT [dbo].[Room] ([room_id], [room_name], [room_status], [room_desc], [room_price], [type_id], [building_id]) VALUES (N'Room_51', N'Common Inn Thao Dien_002', N'active', N'Phòng 2 giường đơn', 700000, N'type_1', N'580202_B01')
GO

--11
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_01', N'/view/common/image/room/r1_1.jpg', N'Hình 1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_01', N'/view/common/image/room/r1_2.jpg', N'R01_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_01', N'/view/common/image/room/r1_3.jpg', N'R01_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_02', N'/view/common/image/room/r2_1.jpg', N'Hình 1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_02', N'/view/common/image/room/r2_2.jpg', N'Hình 1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_02', N'/view/common/image/room/r2_3.jpg', N'R02_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_03', N'/view/common/image/room/r3_1.jpg', N'Hình 1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_03', N'/view/common/image/room/r3_2.jpg', N'R03_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_03', N'/view/common/image/room/r3_3.jpg', N'R03_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_04', N'/view/common/image/room/r4_1.jpg', N'Hình 1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_04', N'/view/common/image/room/r4_2.jpg', N'R04_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_04', N'/view/common/image/room/r4_5.jpg', N'R04_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_05', N'/view/common/image/room/r5_1.jpg', N'Hình 1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_05', N'/view/common/image/room/r5_2.jpg', N'R05_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_05', N'/view/common/image/room/r5_3.jpg', N'R05_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_06', N'/view/common/image/room/r6_1.jpg', N'Hình 1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_06', N'/view/common/image/room/r6_2.jpg', N'R06_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_06', N'/view/common/image/room/r6_3.jpg', N'R06_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_08', N'/view/common/image/room/r8_1.jpg', N'Hình 1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_08', N'/view/common/image/room/r8_2.jpg', N'R08_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_08', N'/view/common/image/room/r8_3.jpg', N'R08_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_09', N'/view/common/image/room/r9_1.jpg', N'Hình 1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_09', N'/view/common/image/room/r9_2.jpg', N'R09_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_09', N'/view/common/image/room/r9_3.jpg', N'R09_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_11', N'/view/common/image/room/r11_1.jpg', N'Hình 1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_11', N'/view/common/image/room/r11_2.jpg', N'R11_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_11', N'/view/common/image/room/r11_3.jpg', N'R11_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_12', N'/view/common/image/room/r12_1.jpg', N'Hình 1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_12', N'/view/common/image/room/r12_2.jpg', N'R12_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_12', N'/view/common/image/room/r12_3.jpg', N'R12_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_13', N'/view/common/image/room/r13_1.jpg', N'Hình 1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_13', N'/view/common/image/room/r13_2.jpg', N'R13_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_13', N'/view/common/image/room/r13_3.jpg', N'R13_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_14', N'/view/common/image/room/r14_1.jpg', N'RHình 1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_14', N'/view/common/image/room/r14_2.jpg', N'R14_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_14', N'/view/common/image/room/r14_3.jpg', N'R14_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_17', N'/view/common/image/room/r17_1.jpg', N'Hình 1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_17', N'/view/common/image/room/r17_2.jpg', N'R17_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_17', N'/view/common/image/room/r17_3.jpg', N'R17_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_18', N'/view/common/image/room/r18_1.jpg', N'Hình 1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_18', N'/view/common/image/room/r18_2.jpg', N'R18_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_18', N'/view/common/image/room/r18_3.jpg', N'R18_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_20', N'/view/common/image/room/r20_1.jpg', N'Hình 1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_20', N'/view/common/image/room/r20_2.jpg', N'R20_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_20', N'/view/common/image/room/r20_3.jpg', N'R20_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_22', N'/view/common/image/room/r22_1.jpg', N'Hình 1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_22', N'/view/common/image/room/r22_2.jpg', N'R22_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_22', N'/view/common/image/room/r22_3.jpg', N'R22_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_23', N'/view/common/image/room/r23_1.jpg', N'Hình 1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_23', N'/view/common/image/room/r23_2.jpg', N'R23_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_23', N'/view/common/image/room/r23_3.jpg', N'R23_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_24', N'/view/common/image/room/r24_1.jpg', N'Hình 1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_24', N'/view/common/image/room/r24_2.jpg', N'R24_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_24', N'/view/common/image/room/r24_3.jpg', N'R24_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_25', N'/view/common/image/room/r25_1.jpg', N'Hình 1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_25', N'/view/common/image/room/r25_2.jpg', N'R25_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_25', N'/view/common/image/room/r25_3.jpg', N'R25_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_26', N'48', N'R26_P1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_26', N'49', N'R26_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_26', N'50', N'R26_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_27', N'51', N'R27_P1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_27', N'52', N'R27_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_27', N'53', N'R27_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_28', N'54', N'R28_P1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_28', N'55', N'R28_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_28', N'56', N'R28_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_29', N'57', N'R29_P1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_29', N'58', N'R29_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_29', N'59', N'R29_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_30', N'60', N'R30_P1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_30', N'61', N'R30_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_30', N'62', N'R30_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_31', N'63', N'R31_P1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_31', N'64', N'R31_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_31', N'65', N'R31_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_32', N'66', N'R32_P1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_32', N'67', N'R32_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_32', N'68', N'R32_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_33', N'69', N'R33_P1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_33', N'70', N'R33_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_33', N'71', N'R33_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_34', N'77', N'R34_P1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_34', N'78', N'R34_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_34', N'79', N'R34_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_35', N'80', N'R35_P1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_35', N'81', N'R35_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_35', N'82', N'R35_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_36', N'83', N'R36_P1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_36', N'84', N'R36_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_36', N'85', N'R36_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_37', N'86', N'R37_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_37', N'87', N'R37_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_37', N'88', N'R37_P1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_38', N'89', N'R38_P1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_38', N'90', N'R38_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_38', N'91', N'R38_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_40', N'92', N'R40_P1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_40', N'93', N'R40_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_40', N'94', N'R40_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_41', N'95', N'R41_P1')
GO
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_41', N'96', N'R41_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_41', N'97', N'R41_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_42', N'100', N'R42_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_42', N'98', N'R42_P1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_42', N'99', N'R42_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_43', N'101', N'R43_P1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_43', N'102', N'R43_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_43', N'103', N'R43_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_44', N'104', N'R44_P1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_44', N'105', N'R44_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_44', N'106', N'R44_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_45', N'107', N'R45_P1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_45', N'108', N'R45_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_45', N'109', N'R45_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_46', N'110', N'R46_P1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_46', N'111', N'R46_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_46', N'112', N'R46_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_47', N'113', N'R47_P1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_47', N'114', N'R47_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_47', N'115', N'R47_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_48', N'116', N'R48_P1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_48', N'117', N'R48_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_48', N'118', N'R48_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_49', N'119', N'R49_P1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_49', N'120', N'R49_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_49', N'121', N'R49_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_50', N'122', N'R50_P1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_50', N'123', N'R50_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_50', N'124', N'R50_P3')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_51', N'125', N'R51_P1')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_51', N'126', N'R51_P2')
INSERT [dbo].[Room_Images] ([room_id], [image_link], [image_name]) VALUES (N'Room_51', N'127', N'R51_P3')
GO

--3
INSERT [dbo].[Street] ([street_id], [street_name], [district_id]) VALUES (N'110101', N'Kê Gà', N'1101')
INSERT [dbo].[Street] ([street_id], [street_name], [district_id]) VALUES (N'110201', N'Số 18', N'1102')
INSERT [dbo].[Street] ([street_id], [street_name], [district_id]) VALUES (N'120101', N'Khánh An', N'1201')
INSERT [dbo].[Street] ([street_id], [street_name], [district_id]) VALUES (N'120201', N'Lý Thường Kiệt', N'1202')
INSERT [dbo].[Street] ([street_id], [street_name], [district_id]) VALUES (N'150101', N'Ngô Thì Sỹ', N'1501')
INSERT [dbo].[Street] ([street_id], [street_name], [district_id]) VALUES (N'150201', N'Hoàng Sa', N'1502')
INSERT [dbo].[Street] ([street_id], [street_name], [district_id]) VALUES (N'220101', N'Tổ 3 (Phố Cổ)', N'2201')
INSERT [dbo].[Street] ([street_id], [street_name], [district_id]) VALUES (N'220201', N'Pả Vi', N'2202')
INSERT [dbo].[Street] ([street_id], [street_name], [district_id]) VALUES (N'240101', N'Lương Ngọc Quyến', N'2401')
INSERT [dbo].[Street] ([street_id], [street_name], [district_id]) VALUES (N'240102', N'Tống Duy Tân', N'2401')
INSERT [dbo].[Street] ([street_id], [street_name], [district_id]) VALUES (N'240201', N'Phan Đình Phùng', N'2402')
INSERT [dbo].[Street] ([street_id], [street_name], [district_id]) VALUES (N'240202', N'Đội Cấn', N'2402')
INSERT [dbo].[Street] ([street_id], [street_name], [district_id]) VALUES (N'350101', N'Đoàn Thị Điểm', N'3501')
INSERT [dbo].[Street] ([street_id], [street_name], [district_id]) VALUES (N'350201', N'Trần Khánh Dư', N'3502')
INSERT [dbo].[Street] ([street_id], [street_name], [district_id]) VALUES (N'370101', N'Fansipan', N'3701')
INSERT [dbo].[Street] ([street_id], [street_name], [district_id]) VALUES (N'370201', N'Làng Tà Chải', N'3702')
INSERT [dbo].[Street] ([street_id], [street_name], [district_id]) VALUES (N'430101', N'Hung Vuong Square', N'4301')
INSERT [dbo].[Street] ([street_id], [street_name], [district_id]) VALUES (N'430201', N'Văn Hoà', N'4302')
INSERT [dbo].[Street] ([street_id], [street_name], [district_id]) VALUES (N'480101', N'Minh Châu', N'4801')
INSERT [dbo].[Street] ([street_id], [street_name], [district_id]) VALUES (N'480201', N'Cô Tô', N'4802')
INSERT [dbo].[Street] ([street_id], [street_name], [district_id]) VALUES (N'580101', N'Nguyễn Trãi', N'5801')
INSERT [dbo].[Street] ([street_id], [street_name], [district_id]) VALUES (N'580102', N'Phạm Ngũ Lão', N'5801')
INSERT [dbo].[Street] ([street_id], [street_name], [district_id]) VALUES (N'580201', N'19', N'5802')
INSERT [dbo].[Street] ([street_id], [street_name], [district_id]) VALUES (N'580202', N'38', N'5802')
GO

--4 
INSERT [dbo].[Type_Of_Room] ([type_id], [type_name]) VALUES (N'type_1', N'Cổ Điển')
INSERT [dbo].[Type_Of_Room] ([type_id], [type_name]) VALUES (N'type_2', N'Hiện Đại')
INSERT [dbo].[Type_Of_Room] ([type_id], [type_name]) VALUES (N'type_3', N'Thiên Nhiên')
GO

--5
INSERT [dbo].[Users] ([user_id], [user_name], [avatar], [role], [username], [password], [phone], [email]) VALUES (N'User_01', N'Nguyễn Trường Giang', N'/view/web/images/avatar/Giang.jpg', N'Owner', N'Giang', N'123', N'0987654321', N'GiangNTSE150747@gfpt.edu.vn')
INSERT [dbo].[Users] ([user_id], [user_name], [avatar], [role], [username], [password], [phone], [email]) VALUES (N'User_02', N'Trần Nhựt Hào', N'/view/web/images/avatar/Hao.jpg', N'User', N'haotn', N'123', N'0369663031', N'haotnse150564@fpt.edu.vn')
INSERT [dbo].[Users] ([user_id], [user_name], [avatar], [role], [username], [password], [phone], [email]) VALUES (N'User_03', N'Nguyễn Quang', NULL, N'User', N'Quang', N'123', N'0987654321', N'GiangNTSE1507471@gfpt.edu.vn')
INSERT [dbo].[Users] ([user_id], [user_name], [avatar], [role], [username], [password], [phone], [email]) VALUES (N'User_04', N'Nguyễn Hoàng Duy', N'/view/web/images/avatar/Duy.jpg', N'Admin', N'duycute', N'456', N'0987654321', N'DuyNHSE15073@gfpt.edu.vn')
INSERT [dbo].[Users] ([user_id], [user_name], [avatar], [role], [username], [password], [phone], [email]) VALUES (N'User_05', N'Hoàng Văn Mão', NULL, N'Owner', N'maohv1', N'123', N'0268517803', NULL)
INSERT [dbo].[Users] ([user_id], [user_name], [avatar], [role], [username], [password], [phone], [email]) VALUES (N'User_06', N'Lê Kim Hoa', NULL, N'Owner', N'hoalk', N'123', N'0983000883', NULL)
INSERT [dbo].[Users] ([user_id], [user_name], [avatar], [role], [username], [password], [phone], [email]) VALUES (N'User_07', N'Trịnh Bình Minh', NULL, N'Owner', N'minhtb', N'123', N'0733424382', NULL)
INSERT [dbo].[Users] ([user_id], [user_name], [avatar], [role], [username], [password], [phone], [email]) VALUES (N'User_08', N'Bách Hoa Lý', NULL, N'Owner', N'lybh', N'123', N'0448046839', NULL)
INSERT [dbo].[Users] ([user_id], [user_name], [avatar], [role], [username], [password], [phone], [email]) VALUES (N'User_09', N'Lý Thanh Kiều', NULL, N'User', N'kieult', N'123', N'0362255298', NULL)
INSERT [dbo].[Users] ([user_id], [user_name], [avatar], [role], [username], [password], [phone], [email]) VALUES (N'User_10', N'Lâm Văn Thanh', NULL, N'User', N'thanhlv', N'123', N'0754503245', NULL)
INSERT [dbo].[Users] ([user_id], [user_name], [avatar], [role], [username], [password], [phone], [email]) VALUES (N'User_11', N'Trần Hoà Nghĩa', NULL, N'User', N'nghiath', N'123', N'0505405421', NULL)
INSERT [dbo].[Users] ([user_id], [user_name], [avatar], [role], [username], [password], [phone], [email]) VALUES (N'User_12', N'Phan Thanh Tra', NULL, N'User', N'trapt', N'123', N'0813546314', NULL)
GO