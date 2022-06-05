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
Drop table Feedback
Drop table Bill_Detail
Drop table Bill
Drop table Users
Drop table Room
Go

ALTER TABLE District
DROP CONSTRAINT FK_District_City;
Go

ALTER TABLE Street
DROP CONSTRAINT FK_Street_District;
Go

-- Create table
Create table Room (
	room_id varchar(20),
	room_name nvarchar(100) not null,
	room_desc nvarchar(max),
	room_price float not null,
	room_rule nvarchar(max),
	type_id varchar(20),
	building_id varchar(20),
	primary key(room_id)
)
Go

Create table Room_Images(
	room_id varchar(20),
	image_name nvarchar(200),
	room_images varbinary(MAX) Not null,
	primary key(room_id, room_images)
)
Go

Create table Type_Of_Room(
	type_id varchar(20),
	type_name nvarchar(100) not null,
	primary key(type_id)
)
Go

Create table Building(
	building_id varchar(20),
	building_desc nvarchar(max),
	street_id varchar(20),
	primary key(building_id)
)
Go

Create table Street(
	street_id varchar(20),
	street_name nvarchar(100) not null,
	district_id varchar(20),
	primary key(street_id)
)
Go

Create table District(
	district_id varchar(20),
	district_name nvarchar(100) not null,
	city_id varchar(20),
	primary key(district_id)
)
Go

Create table City(
	city_id varchar(20),
	city_name nvarchar(100) not null,
	primary key(city_id)
)
Go

Create table Convenient(
	convenient_id varchar(20),
	convenient_name nvarchar(100),
	primary key(convenient_id)
)
Go

Create table Room_Convenient(
	room_id varchar(20),
	convenient_id varchar(20),
	primary key(room_id,convenient_id)
)
Go

Create table Users(
	user_id varchar(20),
	user_name varchar(100),
	role varchar(30) not null,
	username varchar(20),
	password varchar(20),
	phone char(10),
	email varchar(40),
	primary key(user_id)
)
Go

Create table Bill(
	bill_id varchar(20),
	date date,
	total float,
	status nvarchar(50),
	user_id varchar(20),
	primary key(bill_id)
)
Go

Create table Bill_detail(
	bill_id varchar(20),
	room_id varchar(20),
	start_date date,
	end_date date,
	note nvarchar(max),
	primary key(bill_id,room_id)
)
Go

Create table Feedback(
	feedback_id varchar(20),
	comment nvarchar(max),
	status nvarchar(20),
	feedback_date date,
	room_id varchar(20),
	user_id varchar(20),
	primary key(feedback_id)
)
Go

-- SET FOREIGN KEY
ALTER TABLE Room
ADD CONSTRAINT FK_Room_TypeOfRoom
FOREIGN KEY (type_id) REFERENCES Type_Of_Room(type_id);
Go

ALTER TABLE Room
ADD CONSTRAINT FK_Room_Building
FOREIGN KEY (building_id) REFERENCES Building(building_id);
Go

ALTER TABLE Room_Convenient
ADD CONSTRAINT FK_Room_Convenient_Room
FOREIGN KEY (room_id) REFERENCES Room(room_id);
Go

ALTER TABLE Room_Convenient
ADD CONSTRAINT FK_Room_Convenient_Convenient
FOREIGN KEY (convenient_id) REFERENCES Convenient(convenient_id);
Go

ALTER TABLE Room_Images
ADD CONSTRAINT FK_Room_Images_Room
FOREIGN KEY (room_id) REFERENCES Room(room_id);
Go

ALTER TABLE Building
ADD CONSTRAINT FK_Building_Street
FOREIGN KEY (street_id) REFERENCES Street(street_id);
Go

ALTER TABLE Street
ADD CONSTRAINT FK_Street_District
FOREIGN KEY (district_id) REFERENCES District(district_id);
Go

ALTER TABLE District
ADD CONSTRAINT FK_District_City
FOREIGN KEY (city_id) REFERENCES City(city_id);
Go

ALTER TABLE Bill
ADD CONSTRAINT FK_Bill_Users
FOREIGN KEY (user_id) REFERENCES Users(user_id);
Go

ALTER TABLE Bill_detail
ADD CONSTRAINT FK_Bill_detail_Room
FOREIGN KEY (room_id) REFERENCES Room(room_id);
Go

ALTER TABLE Bill_detail
ADD CONSTRAINT FK_Bill_datail_Bill
FOREIGN KEY (bill_id) REFERENCES Bill(bill_id);
Go

ALTER TABLE Feedback
ADD CONSTRAINT FK_Feedback_Room
FOREIGN KEY (room_id) REFERENCES Room(room_id);
Go

ALTER TABLE Feedback
ADD CONSTRAINT FK_Feedback_Users
FOREIGN KEY (user_id) REFERENCES Users(user_id);
Go