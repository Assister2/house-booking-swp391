package com.housebooking.DAOimpl.houseowner;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.housebooking.Model.Room;
import com.housebooking.Utils.DBUtils;

public class RoomDAO {
	
	private void fillDataInRoom(ResultSet rs, Room room) throws SQLException {
		room.setRoomId(rs.getString("room_id"));
		room.setRoomName(rs.getNString("room_name"));
		room.setRoomDesc(rs.getNString("room_desc"));
		room.setPrice(rs.getFloat("room_price"));
		room.setTypeId(rs.getString("type_id"));
		room.setArea(rs.getFloat("room_area"));
		room.setRoomStatus(rs.getString("room_status"));
		room.setBed(rs.getInt("room_bed"));
		room.setBuildingId(rs.getString("building_id"));
		room.setTypeName(rs.getNString("type_name"));
	}
	
	private List<String> findImages(String roomId) throws SQLException {
		List<String> list = new ArrayList<>();
		String sql = " Select rm.image_link\r\n"
				+ " From Room r join Room_Images rm on r.room_id = rm.room_id\r\n"
				+ " Where r.room_id like ?";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setString(1, roomId);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				list.add(rs.getString("image_link"));
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return list;
	}
	
	public List<Room> list(String buildingId) {
		ArrayList<Room> list;
		list = new ArrayList<Room>();

		String sql = " Select r.*, t.type_name \r\n"
				+ " From Room r join Building b on b.building_id = r.building_id\r\n"
				+ "	join Type_Of_Room t on t.type_id = r.type_id\r\n"
				+ "	left join Room_Images rm on r.room_id= rm.room_id\r\n"
				+ " Where b.building_id like ? AND rm.image_name like N'%Hình 1%' And r.room_status not like 'Removed'";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, buildingId);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Room room = new Room();
				fillDataInRoom(rs, room);
				room.setRoomImages(findImages(room.getRoomId()));
				
				list.add(room);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return list;
	}

}
