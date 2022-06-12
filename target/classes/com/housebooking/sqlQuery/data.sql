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
	('User_01', N'Nguyễn Trường Giang', 'Owner', 'Giang', '123', '0987654321', 'GiangNTSE150747@gfpt.edu.vn'),
	('User_02', N'Trần Nhựt Hào', 'User', 'haotn', '123', '0369663031', 'haotnse150564@fpt.edu.vn'),
	('User_03', N'Nguyễn Quang', 'User', 'Quang', '123', '0987654321', 'GiangNTSE1507471@gfpt.edu.vn'),
	('User_04', N'Nguyễn Hoàng Duy', 'Admin', 'duycute', '456', '0987654321', 'DuyNHSE15073@gfpt.edu.vn')
Go

Insert into Building
Values
	('350101_B00',N'Homestay Dành cho khác chỉ qua đêm', N'Homestay', 111,'350101', 'User_01'),
	('580101_B01',N'Hotel có phòng rộng gần với các địa điểm nổi tiếng', N'Hotel',111, '580101', 'User_01'),
	('580101_B02',N'Hotel có phòng đọc sách nhà ăn, v.v', N'Hotel',111, '580101', 'User_01'),
	('580202_B01',N'Khách Sạn có phòng ăn, phòng sách riêng', N'Hotel',111, '580202', 'User_01'),
	('240102_B01',N'Nhà 2 tầng đầy đủ tiện nghi thích hợp cho gia đình du lịch nhiều ngày', N'Nhà nguyên căn',111, '240102', 'User_01'),
	('240202_B01',N'Phòng cho gia đình có đầy đủ tiện nghi', N'Homestay',111, '240202', 'User_01'),
	('220101_B01',N'Khu nhà qua đêm phong cách cổ điển', N'Nhà nguyên căn',111,'220101', 'User_01'),
	('430101_B01',N'Khách sạn phong cách hiện đại, đầy đủ tiện nghi, View đẹp', N'Hotel', 111,'430101', 'User_01'),
	('430201_B01',N'Nhà vườn, có hồ bơi bao bọc bởi cây cảnh', N'Nhà nguyên căn',111,'430201',  'User_01')
Go

Insert into Building
Values
	('370101_B01',N'Resort và spa có cảnh quan đẹp bao quanh bỏi hồ, vườn cảnh', N'Homestay', 111,'370101', 'User_01'),
	('370201_B01',N'Homestay phong cách cổ điển hài hoà với thiên nhiên', N'Homestay', 111,'370201','User_01'),

	('120201_B01',N'Resort bãi biển, mát mẻ', N'Homestay',111,'120201',  'User_01'),
	('120101_B01',N'Nhà gô gần gũi với thiên nhiên', N'Nhà nguyên căn',111,'120101',  'User_01'),
	
	('350101_B01',N'Gần khu vườn, có thể dùng để mở tiệc BBQ', N'Homestay',111,'350101',  'User_01'),
	('350201_B01',N'Khu vườn cạnh nhà, thân thiện thiện với thú cưng', N'Homestay', 111,'350201', 'User_01'),
	
	('110201_B01',N'Full căn hộ 84m2 có 3 phòng riêng', N'Nhà nguyên căn',111,'110201',  'User_01'),
	('110101_B01',N'Homestay cho gia đình, đầy đủ tiện nghi',  N'Homestay',111, '110101', 'User_01'),

	('150101_B01',N'Hotel có view nhìn ra thành phố', N'Hotel',111, '150101', 'User_01'),
	('150201_B01',N'Chung cư gần biển', N'Homestay',111,'150201',  'User_01'),

	('480101_B01',N'Khách sạn gần bãi biển',  N'Hotel', 111,'480101', 'User_01'),
	('480201_B01',N'Homestay kiểu khu vườn', N'Homestay',111, '480201', 'User_01')
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

Insert into Room
Values
	('Room_01',N'Trường Giang Dalat Homestay', 'active', N'Tọa lạc tại thành phố Đà Lạt, cách Vườn hoa Đà Lạt 1,3 km, Trường Giang Dalat Hotel cung cấp chỗ nghỉ với nhà hàng, chỗ đỗ xe riêng miễn phí, sảnh khách chung và khu vườn.', 900000, N'Giữ gìn vệ sinh, không xả rác','type_2', '350101_B00')
Go

Insert into Room
Values
	('Room_02',N'ACE Hotel - Bến Thành', 'active', N'139H Nguyễn Trãi, Quận 1, TP. Hồ Chí Minh, cách chợ Bến Thành 5 phút đi bộ',450000.00,N'Không có yêu cầu','type_2','580101_B01')
Go

Insert into Room
Values
	('Room_03',N'Calista Sai Gon Hotel', 'active', N'247-249, Lý Tự Trọng, Phường Bến Thành Quận 1, TP. Hồ Chí Minh',750000.00,N'Không được mang sách về phòng hay lấy trộm sách','type_2','580101_B02')
Go

Insert into Room
Values
	('Room_22',N'Common Inn Thao Dien', 'active', N'19, Đường 38, Phường Thảo Điền, Quận 2, TP.HCM', 780000.00,N'Không lấy trộm sách, bảo vệ tài sản trong phòng','type_2','580202_B01')
Go

Insert into Room
Values
	('Room_04',N'WECOZY HANOI - Railway Side, The Old Quarter', 'active', N'20 Tống Duy Tân, Quận Hoàn Kiếm, Hà Nội, Việt Nam ',1000000.00,N'Cấm hút thuốc','type_2','240102_B01')
Go

Insert into Room
Values
	('Room_05',N'Lakeside House', 'active', N'135 đường Đội Cấn, quận Ba Đình, Hà Nội',325000.00,N'Không được hút thuốc, có thể mang theo thú cưng','type_2','240202_B01')
Go

Insert into Room
Values
	('Room_06',N'Ancient Town 29 Phố Cổ', 'active', N'29 tổ 3 (Phố Cổ), Đồng Văn, Việt Nam',330000.00,N'Không dùng những vật dụng dễ bắt lửa trong phòng','type_1','220101_B01')
Go

/*Insert into Room
Values
	('Room_07',N'O Chau Meo Vac Homestay',N'Toạ lạc tại Pả Vi, Mèo Vạc, Hà Giang',380000.00,N'Không hút thuốc hay sử dụng vật dễ bắt lửa trong phòng','type_1','220201_B01')
Go*/
Insert into Room
Values
	('Room_08',N'Sapa Catcat Hills Resort & Spa', 'active', N'86 Fansipan, Sapa, Việt Nam, cách ga cáp treo Fansipan Legend 14 phút đi bộ',187800.00,N'Không có yêu cầu','type_3','370101_B01')
Go

Insert into Room
Values
	('Room_09',N'La Beauté Bắc Hà','active',N'Homestay được xây dựng tại làng Tá Chài, Bắc Hà, Lào Cai, Việt Nam, CÓ WIFI',340000,N'Không hút thuốc trong khu vực nhà ở','type_1','370201_B01')
Go

/*Insert into Room
Values
	('Room_10',N'THƯ DUY Resort',N'323 Lý Thường Kiệt, phường 6, Cà Mau, Việt Nam, Cách bờ biển 1 phút đi bộ',812000.00,N'Giữ vệ sinh chung','type_03','120201_B01')
Go*/

Insert into Room
Values
	('Room_11',N'Nhà gỗ - Farmstay Hoa Rừng U Minh', 'active', N'Ấp 15, xã Khánh An, Huyện U Minh, tỉnh Cà Mau, Cách Cà Mau 20.9km ',360000.00,N'Giữ gìn vệ sinh quanh nhà','type_3','120101_B01')
Go

Insert into Room
Values
	('Room_12',N'Lovely House','active',N'Hẻm 3 /4 Đường Đoàn Thị Điểm Phường 4 Thành phố Đà Lạt,Việt Nam',380000.00,N'Giữ gìn cảnh quan, cảnh vật xung quanh','type_3','350101_B01')
Go

Insert into Room
Values
	('Room_13',N'Raon Valley Villa', 'active', N'44D Trần Khánh Dư, Phường 8, Da Lat, Việt Nam, Cách Vườn Hoa Đà Lạt 17 phút đi bộ',400000.00,N'Giữa vệ sinh, cảnh quan, cây cảnh','type_3','350101_B01')
Go

Insert into Room
Values
	('Room_14',N'Muong Thanh Luxury Phu Tho', 'active', N'Toạ lạc tại CC17 Unit, Hung Vuong Square, Việt Trì, Việt Nam ',146100.00,N'Giữ gìn vệ sinh trong phòng','type_2','430101_B01')
Go

/*Insert into Room
Values
	('Room_15',N'Bavi Homestead',N'Nằm tại xã Văn Hoà, Huyện Ba Vì, Phú Thọ',300000.00,N'Không có yêu cầu','tpye_3','430201_B01')
Go*/

/*Insert into Room
Values
	('Room_16',N'Fisherman Village Boutique Villas - Beachfront',N'Đường số 18, Hàm Tân, Bình Thuận, cách bãi biển 2 phút đi bộ',3154000.00 ,N'Giữ vệ sinh, bảo vệ tài sản trong phòng','tpye_1','150201_B01')
Go*/

Insert into Room
Values
	('Room_17',N'Chunlii Homestay', 'active', N'Mũi Kê Gà, xã Tân Thành, Thành Thuận Nam, Bình Thuận',444000.00,N'Giữ vệ sinh chung','type_2','110101_B01')
Go

Insert into Room
Values	
	('Room_18',N'Cosmos Hotel Danang', 'active', N'117-119 Ngô Thì Sỹ, Phường Mỹ An, Ngũ Hành Sơn, Đà Nẵng, Việt Nam, Cách Biển Mỹ Khê 300m và Biển Bắc Mỹ An 450m',737000.00,N'Giữ gìn vệ sinh, không xả rác','type_2','150101_B01')
Go

/*Insert into Room
Values
	('Room_19',N'Dan Oasis Hotel and Apartment',N'A2.3, Đường Hoàng Sa, Đà Nẵng, Việt Nam ',626000.00,N'Giữ vệ chung','type_2','150102_B01')
Go*/

Insert into Room
Values
	('Room_20',N'Grand Pearl Minh Chau', 'active', N'Xã Minh Châu, Đảo Quan Lạn, Huyện Vân Đồn, Tỉnh Quảng Ninh, Cách bãi biển 1 phút đi bộ',2041000.00,N'Giữ vệ sinh chung','type_2','480101_B01')
Go

/*Insert into Room
Values
	('Room_21',N'Coto Center Homestay',N'Vũ Văn Hiếu, Đảo Cô Tô, Việt Nam, Cách bãi biển 12 phút đi bộ, có nhà hàng',696000.00,N'Giữ vệ sinh chung, không ngắt hoa cỏ trong vườn','type_3','480102_B01')
Go*/

Insert into Room_Convenient
Values
	('Room_01', 'Con_01'),
	('Room_01', 'Con_02'),
	('Room_01', 'Con_03'),
	('Room_02', 'Con_04')
Go

Insert into Bill
Values
	('Room_01_Bill_01', '2022-06-01', 2700000, N'Chờ duyệt', 'User_03')
Go

Insert into Bill_detail
Values
	('Room_01_Bill_01', 'Room_01', '2022-07-06', '2022-07-09',900000, null, 0)
Go
