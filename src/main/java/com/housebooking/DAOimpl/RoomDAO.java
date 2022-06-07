package com.housebooking.DAOimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.housebooking.DAO.IRoomDAO;
import com.housebooking.Model.Room;
import com.housebooking.Utils.DBUtils;

public class RoomDAO implements IRoomDAO {

	@Override
	public List<Room> list() {
		ArrayList<Room> list;
		list = new ArrayList<Room>();

		String sql = "select * from Room";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Room room = new Room();
				fillDataInRoom(rs, room);
				list.add(room);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return list;
	}

	private void fillDataInRoom(ResultSet rs, Room room) throws SQLException {
		room.setRoomId(rs.getString("room_id"));
		room.setRoomName(rs.getNString("room_name"));
		room.setRoomDesc(rs.getNString("room_desc"));
		room.setPrice(rs.getFloat("room_price"));
		room.setRule(rs.getNString("room_rule"));
		room.setTypeId(rs.getString("type_id"));
		room.setBuildingId(rs.getString("building_id"));
		room.setTypeName(rs.getNString("type_name"));
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
				fillDataInRoom(rs, room);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return room;
	}
	
	public int getNoOfRecords() {

        String sql = "SELECT COUNT(room_id) as noOfRecords FROM Room";

        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt("noOfRecords");
            }

        } catch (Exception ex) {

            ex.printStackTrace();

        }
        return 0;
    }
	
	@Override
	public List<Room> list(int start, int recordsPerPage) {
		ArrayList<Room> list;
		list = new ArrayList<Room>();
		
        list = new ArrayList<Room>();

        String sql = "SELECT r.*, t.type_name\n"
                + " FROM Room r left join Type_Of_Room t on r.type_id = t.type_id\n"
                + " ORDER BY room_id\n"
                + " OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";

        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setInt(1, start);
            ps.setInt(2, recordsPerPage);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
            	Room room = new Room();
				fillDataInRoom(rs, room);
				list.add(room);
            }

        } catch (Exception ex) {

            ex.printStackTrace();

        }

        return list;
    }

	@Override
	public int getTotalRecord() {
		String sql = "select count(room_id) as 'Total' from Room";
		
		 try {

	            Connection conn = DBUtils.getConnection();

	            PreparedStatement ps = conn.prepareStatement(sql);

	            ResultSet rs = ps.executeQuery();

	            while (rs.next()) {
	                return rs.getInt("Total");
	            }

	        } catch (Exception ex) {

	            ex.printStackTrace();

	        }
	        return 0;
	}

}
