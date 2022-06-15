Select ru.*
From Rules ru  join Building_Rules br  on ru.ruleId = br.ruleId
	join Room r on br.building_id = r.building_id

Where r.room_id like 'Room_01'
Go