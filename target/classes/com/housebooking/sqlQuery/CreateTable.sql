Create database HouseBooking;
Go

Use HouseBooking;
Go

Drop table City
Drop table District
Drop table Street
Drop table Building
Drop table Room_Images
Drop table Type_Of_Room
Drop table Convenient
Drop table Room_Convenient
Drop table Bill_Detail
Drop table Bill
Drop table Feedback
Drop table Users
Drop table Room
Go


Create table Room (
	room_id varchar(20),
	room_name nvarchar(100) not null,
	room_desc nvarchar(max),
	room_price float not null,
	room_rule nvarchar(max),
	primary key(room_id)
)
Go

Create table 