package com.housebooking.DAO;

import java.util.List;

import com.housebooking.Model.Room;

public interface IRoomDAO {
	
	List<Room> list();
	
	Room find(String roomId);
	
}
