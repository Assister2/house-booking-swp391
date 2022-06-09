
-- Lọc phòng ở 1 địa điểm thời gian cụ thể
DECLARE @startDate as date = '2022-06-10'
DECLARE @endDate as date = '2022-06-15'
DECLARE @city as nvarchar(100) = N'%Lâm Đồng%'
DECLARE @start as int = 0
DECLARE @end as int = 6
Select r.*, t.type_name
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
Where ci.city_name like @city  AND r2.room_id is null
Order by r.room_price ASC
OFFSET @start ROWS FETCH NEXT @end ROWS ONLY
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


--Test
Select *
From District d join City c on d.city_id=c.city_id
Where c.city_name like N'%Lâm%'
Go

--Test điểm rating/ làm tròn
Select r.room_id, Round(AVG(rating),1) as rating
From Room r join Feedback f on r.room_id = f.room_id
Group by r.room_id

