package com.housebooking.DAO;

import java.util.List;

import com.housebooking.Model.Room;

public interface IRoomDAO {
	
	List<Room> list();
	
	List<Room> list(int start, int recordsPerPage);
	
	Room find(String roomId);
	
	int getTotalRecord();
	
}
