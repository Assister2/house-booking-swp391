package com.housebooking.DAOimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import com.housebooking.DAO.IRoomDAO;
import com.housebooking.Model.Room;
import com.housebooking.Utils.DBUtils;

public class RoomDAO implements IRoomDAO{

	@Override
	public List<Room> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Room find(String roomId) {
		Room room = new Room();
        String sql = "SELECT * FROM Room WHERE room_id = ?";

        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, roomId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
            	room.setRoomId(rs.getString("room_id"));
                room.setRoomName(rs.getNString("room_name"));
                room.setRoomDesc(rs.getNString("room_desc"));
                room.setPrice(rs.getFloat("room_price"));
                room.setRule(rs.getNString("room_rule"));
                room.setTypeId(rs.getString("type_id"));
                room.setBuildingId(rs.getString("building_id"));                
            }

        } catch (Exception ex) {

            ex.printStackTrace();

        }

        return room;
	}
	
}
