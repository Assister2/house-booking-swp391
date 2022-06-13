Select fb.*, us.user_name
From Feedback fb join Room r on fb.room_id = r.room_id
	join Users us on fb.user_id = us.user_id
Where r.room_id like 'Room_01' AND fb.status like 'on'
Go