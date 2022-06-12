
-- Lọc phòng ở 1 địa điểm thời gian cụ thể
DECLARE @startDate as date = '2022-06-15'
DECLARE @endDate as date = '2022-06-18'
DECLARE @city as nvarchar(100) = N'%Lâm Đồng%'
DECLARE @start as int = 0
DECLARE @end as int = 6
Select  r.*, t.type_name, ISNULL(Round(AVG(rating*1.0),1),0) as rating 
from Room r join Type_Of_Room t on r.type_id = t.type_id
	join Building b on r.building_id = b.building_id
	join Street st on b.street_id = st.street_id
	join District dis on st.district_id = dis.district_id
	join City ci on ci.city_id = dis.city_id
	left join Room_Convenient con on r.room_id = con.room_id
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
			JOIN Room_Convenient T2 ON r.room_id = T2.room_id AND T2.convenient_id like 'Con_02'
Where ci.city_name like @city  AND r2.room_id is null 
	AND ( b.building_type like N'%nhà nguyên căn%' OR b.building_type like N'%homestay%') AND con.convenient_id like 'Con_01'
Group by r.room_id, r.room_name, r.room_desc, r.room_price, r.room_status, r.room_rule, r.building_id, r.type_id, t.type_name
Order by r.room_price ASC
OFFSET @start ROWS FETCH NEXT @end ROWS ONLY
Go


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
	Group by r.room_id, r.room_name, r.room_desc, r.room_price, r.room_status, r.room_rule, r.building_id, r.type_id, t.type_name
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


SELECT ISNULL(1, 'W3Schools.com')
Go

SELECT r.*, t.type_name, ISNULL(Round(AVG(rating*1.0),1),0) as rating
FROM Room r left join Type_Of_Room t on r.type_id = t.type_id
	left join Feedback f on r.room_id = f.room_id
Group by r.room_id, r.room_name, r.room_desc, r.room_price, r.room_status, r.room_rule, r.building_id, r.type_id, t.type_name
Order by r.room_price ASC
OFFSET ? ROWS FETCH NEXT ? ROWS ONLY

-----

select distinct building_type
from Building
Go

-------------

DECLARE @startDate as date = ?
 DECLARE @endDate as date = ?
 DECLARE @city as nvarchar(100) = ?
 DECLARE @start as int = ?
 DECLARE @end as int = ?
 Select  r.*, t.type_name, ISNULL(Round(AVG(rating*1.0),1),0) as rating
 from Room r join Type_Of_Room t on r.type_id = t.type_id
	join Building b on r.building_id = b.building_id
	join Street st on b.street_id = st.street_id
	join District dis on st.district_id = dis.district_id
	join City ci on ci.city_id = dis.city_id
 left join Room_Convenient con on r.room_id = con.room_id
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
 Group by r.room_id, r.room_name, r.room_desc, r.room_price, r.room_status, r.room_rule, r.building_id, r.type_id, t.type_name
 Order by r.room_price ASC
 OFFSET @start ROWS FETCH NEXT @end ROWS ONLY
 DECLARE @startDate as date = ?
 DECLARE @endDate as date = ?
 DECLARE @city as nvarchar(100) = ?
 DECLARE @start as int = ?
 DECLARE @end as int = ?
 Select  r.*, t.type_name, ISNULL(Round(AVG(rating*1.0),1),0) as rating
 from Room r join Type_Of_Room t on r.type_id = t.type_id
	join Building b on r.building_id = b.building_id
	join Street st on b.street_id = st.street_id
	join District dis on st.district_id = dis.district_id
	join City ci on ci.city_id = dis.city_id
 left join Room_Convenient con on r.room_id = con.room_id
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
 AND ( b.building_type like ? )
 AND ( t.type_id like ? )
 Group by r.room_id, r.room_name, r.room_desc, r.room_price, r.room_status, r.room_rule, r.building_id, r.type_id, t.type_name
 Order by r.room_price ASC
 OFFSET @start ROWS FETCH NEXT @end ROWS ONLY