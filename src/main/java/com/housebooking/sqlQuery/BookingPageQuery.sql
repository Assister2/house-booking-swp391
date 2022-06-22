
-- Lọc phòng ở 1 địa điểm thời gian cụ thể
DECLARE @startDate as date = '2022-06-15'
DECLARE @endDate as date = '2022-06-18'
DECLARE @city as nvarchar(100) = N'%Lâm Đồng%'
DECLARE @start as int = 0
DECLARE @end as int = 6
Select  r.*, t.type_name, ISNULL(Round(AVG(rating*1.0),1),0) as rating, rm.image_link
from Room r join Type_Of_Room t on r.type_id = t.type_id
	join Building b on r.building_id = b.building_id
	join Street st on b.street_id = st.street_id
	join District dis on st.district_id = dis.district_id
	join City ci on ci.city_id = dis.city_id
	left join Room_Convenient con on r.room_id = con.room_id
	left join Room_Images rm on  r.room_id = rm.room_id
	left join (
				Select r3.*
					from Room r3 left join Bill_detail de on r3.room_id = de.room_id
						left join Bill bi on de.bill_id = bi.bill_id
					WHERE (
						@startDate >= de.start_date
						AND  @endDate <= de.end_date
					)
					OR(
						@startDate Between de.start_date and de.end_date
					)
					OR(
							@endDate  Between de.start_date and de.end_date
					)
					OR(
						@startDate <= de.start_date
						AND  @endDate >= de.end_date
					)
			) as r2 on r.room_id = r2.room_id
			left join Feedback f on r.room_id = f.room_id			
Where ci.city_name like @city  AND r2.room_id is null AND rm.image_name like 'image-1'
Group by r.room_id, r.room_name, r.room_desc, r.room_price, r.room_status, r.building_id, r.type_id, t.type_name, rm.image_link
Order by r.room_price ASC
OFFSET @start ROWS FETCH NEXT @end ROWS ONLY
Go

Select *
from Room r
Order by r.room_price ASC
OFFSET 3 ROWS FETCH NEXT 6 ROWS ONLY
Go

SELECT CAST(25.45 AS int);
-- Tesst
SELECT T1.*
FROM Room_Convenient T1
JOIN Room_Convenient T2 ON T1.room_id = T2.room_id AND T2.convenient_id = 'Con_02'
JOIN Room_Convenient T3 ON T1.room_id = T3.room_id AND T3.convenient_id = 'Con_03'
WHERE T1.convenient_id = 'Con_01'

--
Select  r.*, b.building_type
from Room r join Type_Of_Room t on r.type_id = t.type_id
		join Building b on r.building_id = b.building_id
		join Street st on b.street_id = st.street_id
		join District dis on st.district_id = dis.district_id
		join City ci on ci.city_id = dis.city_id
Where ci.city_name like N'%Lâm Đồng%'
Go



--Test
Select r1.* 
From Room r1 left join (
				Select r3.*
					from Room r3 left join Bill_detail de on r3.room_id = de.room_id
						left join Bill bi on de.bill_id = bi.bill_id
					WHERE (
						'2022-06-10' >= de.start_date
						AND '2022-06-15' <= de.end_date
					)
					OR(
						'2022-06-15' Between de.start_date and de.end_date
					)
					OR(
						'2022-06-15'  Between de.start_date and de.end_date
					)
					OR(
						'2022-06-10' <= de.start_date
						AND '2022-06-15' >= de.end_date
					)
			) as r2 on r1.room_id = r2.room_id
Where r2.room_id is null
Go

--Count
DECLARE @startDate as date = '2022-06-16'
	DECLARE @endDate as date = '2022-06-30'
	DECLARE @city as nvarchar(100) = N'%Hà Nội%'
Select COUNT(room.room_id) as 'Total'
From (
	Select  r.*, t.type_name, ISNULL(Round(AVG(rating*1.0),1),0) as rating
	from Room r join Type_Of_Room t on r.type_id = t.type_id
		join Building b on r.building_id = b.building_id
		join Street st on b.street_id = st.street_id
		join District dis on st.district_id = dis.district_id
		join City ci on ci.city_id = dis.city_id
		left join (
					Select r3.*
						from Room r3 left join Bill_detail de on r3.room_id = de.room_id
							left join Bill bi on de.bill_id = bi.bill_id
						WHERE (
							@startDate >= de.start_date
							AND  @endDate <= de.end_date
						)
						OR(
							@startDate Between de.start_date and de.end_date
						)
						OR(
							 @endDate  Between de.start_date and de.end_date
						)
						OR(
							@startDate <= de.start_date
							AND  @endDate >= de.end_date
						)
				) as r2 on r.room_id = r2.room_id
				left join Feedback f on r.room_id = f.room_id
	Where ci.city_name like @city  AND r2.room_id is null
	Group by r.room_id, r.room_name, r.room_desc, r.room_price, r.room_status, r.building_id, r.type_id, t.type_name
)  room
Go

-- Test
Select *
from 
	Room r left join Bill_detail de on r.room_id = de.room_id
	left join Bill bi on de.bill_id = bi.bill_id
WHERE (
	'2022-06-10' >= de.start_date
	AND '2022-06-15' <= de.end_date
)
OR(
	'2022-06-15' Between de.start_date and de.end_date
)
OR(
	'2022-06-15'  Between de.start_date and de.end_date
)
OR(
	'2022-06-10' <= de.start_date
	AND '2022-06-15' >= de.end_date
)
Go

Select *
from 
	Room r left join Bill_detail de on r.room_id = de.room_id
	left join Bill bi on de.bill_id = bi.bill_id
Go


--Test
Select *
From District d join City c on d.city_id=c.city_id
Where c.city_name like N'%Lâm%'
Go

--Test điểm rating/ làm tròn
Select r.room_id, ISNULL(Round(AVG(rating*1.0),1),0) as rating
From Room r left join Feedback f on r.room_id = f.room_id
Group by r.room_id
Go

SELECT r.*, t.type_name, ISNULL(Round(AVG(rating*1.0),1),0) as rating
FROM Room r left join Type_Of_Room t on r.type_id = t.type_id
	left join Feedback f on r.room_id = f.room_id
Group by r.room_id, r.room_name, r.room_desc, r.room_price, r.room_status, r.building_id, r.type_id, t.type_name
Go

-----

select distinct building_type
from Building
Go

-------------

Select  r.*, t.type_name, ISNULL(Round(AVG(rating*1.0),1),0) as rating 
from Room r join Type_Of_Room t on r.type_id = t.type_id
	join Building b on r.building_id = b.building_id
	left join Feedback f on r.room_id = f.room_id
Where r.room_id like 'Room_01'
Group by r.room_id, r.room_name, r.room_desc, r.room_price, r.room_status, r.building_id, r.type_id, t.type_name
Go

---
select con.* 
from  Convenient con  join Room_Convenient rcon on con.convenient_id = rcon.convenient_id
	join Room r on rcon.room_id = r.room_id
Where r.room_id like 'Room_01'
Go	


--------------------------------------------------------------Tim gan day
Select r.*, t.type_name, ISNULL(Round(AVG(rating*1.0),1),0) as rating, rm.image_link
From Room r join Building b on r.building_id = b.building_id
	join Street st on st.street_id = b.street_id
	join District ds on st.district_id = ds.district_id
	left join Type_Of_Room t on r.type_id = t.type_id
	left join Feedback f on r.room_id = f.room_id
	join City ci on ci.city_id = ds.city_id
	left join Room_Images rm on  r.room_id = rm.room_id
	left join (Select r2.* From Room r2 where r2.room_id like 'Room_01') as r2 on r.room_id = r2.room_id
Where r2.room_id is null AND ci.city_name like N'%Lâm Đồng%' AND r.room_status like 'active' AND rm.image_name like 'image-1' 
Group by r.room_id, r.room_name, r.room_desc, r.room_price, r.room_status, r.building_id, r.type_id, t.type_name, rm.image_link
Order by r.room_id ASC
OFFSET 0 ROWS FETCH NEXT 4 ROWS ONLY
Go

--Tìm địa chỉ của phòng
Select ci.city_name
From Room r join Building b on r.building_id = b.building_id
	join Street st on st.street_id = b.street_id
	join District ds on st.district_id = ds.district_id
	join City ci on ci.city_id = ds.city_id
Where r.room_id like 'Room_01'
Go


--Load comment
Select fb.*, us.user_name, us.avatar
From Feedback fb join Room r on fb.room_id = r.room_id
join Users us on fb.user_id = us.user_id
Where r.room_id like 'Room_01' AND fb.status like 'on'
Order by fb.feedback_id DESC
OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY