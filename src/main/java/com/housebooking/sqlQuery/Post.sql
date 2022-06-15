Select fb.*, us.user_name, us.avatar
From Feedback fb join Room r on fb.room_id = r.room_id
	join Users us on fb.user_id = us.user_id
Where r.room_id like 'Room_01' AND fb.status like 'on'
Go

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
		join Room_Images rm on r.room_id= rm.room_id
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
	AND rm.image_link like '%_01.jpg%' Or rm.image_link like '%_01.jpeg%'
Group by r.room_id, r.room_name, r.room_desc, r.room_price, r.room_status, r.building_id, r.type_id, t.type_name, rm.image_link
Order by r.room_price ASC OFFSET @start ROWS FETCH NEXT @end ROWS ONLY