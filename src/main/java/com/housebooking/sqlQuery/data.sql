Use HouseBooking
Go

Insert into Type_Of_Room
Values
	('type_1',N'Vintage cổ điển'),
	('type_2',N'Hiện đại')
Go

Insert into City
Values
	('01', N'Hà Nội'),
	('02', N'TP Hồ Chí Mình')
Go

Insert into District
Values
	('HCM_01', N'Quận 1', '02'),
	('HCM_02', N'Quận 2', '02'),
	('HCM_18', N'Quận Thủ Đức', '02'),
	('HN_01', N'Quận Ba Đình', '01'),
	('HN_02', N'Quận Hoàn Kiếm', '01')
Go

Insert into Street
Values
	('HCM_01_01', N'Nguyễn Huệ', 'HCM_01'),
	('HCM_01_02', N'Nguyễn Hữu Cảnh', 'HCM_01'),
	('HCM_02_01', N'Võ Trường Toản', 'HCM_02'),
	('HCM_02_02', N'Thảo Điền', 'HCM_02'),
	('HCM_18_01', N'Võ Vân Ngân', 'HCM_18'),
	('HN_01_01', N'Phố Cửa Bắc', 'HN_01'),
	('HN_02_01', N'Phố Hàng Nón', 'HN_02')
Go

Insert into Building
Values
	('HCM_01_01_01', N'Nhà to view đẹp', 'HCM_01_01'),
	('HCM_01_02_01', N'Nhà to view đẹp hơn', 'HCM_01_02'),
	('HCM_02_01_01', N'Nhà to view đẹp hơn nữa', 'HCM_02_01')
Go

