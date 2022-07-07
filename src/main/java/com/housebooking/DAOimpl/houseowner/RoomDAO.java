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
		String sql = " Select rm.image_link\r\n" + " From Room r join Room_Images rm on r.room_id = rm.room_id\r\n"
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
				+ " Where b.building_id like ? And r.room_status not like 'Removed'";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, buildingId);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Room room = new Room();
				fillDataInRoom(rs, room);
				room.setRoomImages(findImages(room.getRoomId()));
				if(IsFreeNow(room.getRoomId())) {
					room.setCurrentStatus("Trống");				
				}
				else {
					room.setCurrentStatus("Đang được thuê");
				}
				list.add(room);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return list;
	}
	
	private boolean IsFreeNow(String roomId) {
		boolean check = true;
		String sql = " Select r.*\r\n"
				+ " From Room r join Bill_detail bd on r.room_id = bd.room_id\r\n"
				+ " WHERE r.room_id like ? AND CAST( GETDATE() AS Date ) BETWEEN bd.start_date AND bd.end_date";
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, roomId);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				check = false;
			}
			

		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return check;
	}
	
	private void DeleteRoomImage(String roomId, String imageName) {

		String sql = " Delete From Room_Images \r\n"
				+ " Where room_id = ? AND image_name like ? ";
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, roomId);
			ps.setNString(2, imageName);
			ps.executeUpdate();

		} catch (Exception ex) {

			ex.printStackTrace();

		}
	}
	
	
	public boolean UpdateRoomImage(String roomId,  String orginImage ,String imageLink) {

		String sql = " Update Room_Images\r\n"
				+ " Set image_link = ?\r\n"
				+ " Where room_id = ? AND image_link = ?";
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, imageLink);
			ps.setString(2, roomId);
			ps.setString(3, orginImage);
			if (ps.executeUpdate() > 0) {	
				return true;
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return false;
	}
	
	public boolean InsertRoomImage(String roomId, String linkImage, String imageName) {

		String sql = " INSERT INTO Room_Images\r\n"
				+ " VALUES(?,?,?) ";
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, roomId);
			ps.setString(2, linkImage);
			ps.setNString(3, imageName);
			if (ps.executeUpdate() > 0) {	
				return true;
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return false;
	}
	
	
	
	public boolean UpdateRoom(String roomId, String roomName, String status, float price,
			int bed, float area, String roomDiscript) {

		String sql = " UPDATE Room\r\n"
				+ " SET room_name = ?, room_status = ?, room_price = ?, room_bed = ?, room_area = ?, room_desc = ? \r\n"
				+ " WHERE room_id = ? ";
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setNString(1, roomName);
			ps.setNString(2, status);
			ps.setFloat(3, price);
			ps.setInt(4, bed);
			ps.setFloat(5, area);
			ps.setNString(6, roomDiscript);
			ps.setString(7, roomId);

			if (ps.executeUpdate() > 0) {
				return true;
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return false;
	}
	
	public boolean AddRoom(String roomId, String roomName, String status, float price,
			int bed, float area, String roomDiscript, String typeId, String buildingId) {

		String sql = " INSERT INTO Room\r\n"
				+ "VALUES(?,?,?,?,?,?,?,?,?) ";
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, roomId);
			ps.setNString(2, roomName);
			ps.setFloat(3, area);
			ps.setNString(4, status);
			ps.setNString(5, roomDiscript);
			ps.setInt(6, bed);
			ps.setFloat(7, price);
			ps.setString(8, typeId);
			ps.setString(9, buildingId);
			
			if (ps.executeUpdate() > 0) {
				return true;
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return false;
	}
	
	

	public boolean DeleteRoom(String roomId) {

		String sql = " UPDATE Room\r\n"
				+ " SET room_status = 'Removed' "
				+ " WHERE room_id = ? ";
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, roomId);

			if (ps.executeUpdate() > 0) {
				return true;
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return false;
	}
	

}
