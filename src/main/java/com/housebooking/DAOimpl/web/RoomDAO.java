package com.housebooking.DAOimpl.web;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
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
		room.setTypeId(rs.getString("type_id"));
		room.setBuildingId(rs.getString("building_id"));
		room.setTypeName(rs.getNString("type_name"));
		room.setRating(rs.getFloat("rating"));
	}

	@Override
	public Room find(String roomId) {
		Room room = new Room();
		String sql = " Select  r.*, t.type_name, ISNULL(Round(AVG(rating*1.0),1),0) as rating \r\n"
				+ " from Room r join Type_Of_Room t on r.type_id = t.type_id\r\n"
				+ "	join Building b on r.building_id = b.building_id\r\n"
				+ "	left join Feedback f on r.room_id = f.room_id\r\n" + " Where r.room_id like ?\r\n"
				+ " Group by r.room_id, r.room_name, r.room_desc, r.room_price, r.room_status, r.building_id, r.type_id, t.type_name\r\n";

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

	// Count with attributes
	public int getTotalRecord(String city, LocalDate startDate, LocalDate endDate) {

		String sql = "DECLARE @startDate as date = ?\r\n" + "	DECLARE @endDate as date = ?\r\n"
				+ "	DECLARE @city as nvarchar(100) = ?\r\n" + " Select COUNT(room.room_id) as 'Total'\r\n"
				+ " From (\r\n" + "	Select  r.*, t.type_name, ISNULL(Round(AVG(rating*1.0),1),0) as rating\r\n"
				+ "	from Room r join Type_Of_Room t on r.type_id = t.type_id\r\n"
				+ "		join Building b on r.building_id = b.building_id\r\n"
				+ "		join Street st on b.street_id = st.street_id\r\n"
				+ "		join District dis on st.district_id = dis.district_id\r\n"
				+ "		join City ci on ci.city_id = dis.city_id\r\n" + "		left join (\r\n"
				+ "					Select r3.*\r\n"
				+ "						from Room r3 left join Bill_detail de on r3.room_id = de.room_id\r\n"
				+ "							left join Bill bi on de.bill_id = bi.bill_id\r\n"
				+ "						WHERE (\r\n" + "							@startDate >= de.start_date\r\n"
				+ "							AND  @endDate <= de.end_date\r\n" + "						)\r\n"
				+ "						OR(\r\n"
				+ "							@startDate Between de.start_date and de.end_date\r\n"
				+ "						)\r\n" + "						OR(\r\n"
				+ "							 @endDate  Between de.start_date and de.end_date\r\n"
				+ "						)\r\n" + "						OR(\r\n"
				+ "							@startDate <= de.start_date\r\n"
				+ "							AND  @endDate >= de.end_date\r\n" + "						)\r\n"
				+ "				) as r2 on r.room_id = r2.room_id\r\n"
				+ "				left join Feedback f on r.room_id = f.room_id\r\n"
				+ "	Where ci.city_name like @city  AND r2.room_id is null\r\n"
				+ "	Group by r.room_id, r.room_name, r.room_desc, r.room_price, r.room_status, r.building_id, r.type_id, t.type_name\r\n"
				+ ")  room";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setDate(1, Date.valueOf(startDate));
			ps.setDate(2, Date.valueOf(endDate));
			ps.setNString(3, "%" + city + "%");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				return rs.getInt("Total");
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

		String sql = " SELECT r.*, t.type_name, ISNULL(Round(AVG(rating*1.0),1),0) as rating\r\n"
				+ " FROM Room r left join Type_Of_Room t on r.type_id = t.type_id\r\n"
				+ "	left join Feedback f on r.room_id = f.room_id\r\n"
				+ " Group by r.room_id, r.room_name, r.room_desc, r.room_price, r.room_status, r.building_id, r.type_id, t.type_name\r\n"
				+ " Order by r.room_price ASC\r\n" + " OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";

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

	public List<Room> list(String city, LocalDate startDate, LocalDate endDate, String direction, int start,
			int recordsPerPage) {
		ArrayList<Room> list;
		list = new ArrayList<Room>();

		String sql = " DECLARE @startDate as date = ?\r\n" + " DECLARE @endDate as date = ?\r\n"
				+ " DECLARE @city as nvarchar(100) = ?\r\n" + " DECLARE @start as int = ?\r\n"
				+ " DECLARE @end as int = ?\r\n"
				+ " Select  r.*, t.type_name, ISNULL(Round(AVG(rating*1.0),1),0) as rating, rm.image_link\r\n"
				+ " from Room r join Type_Of_Room t on r.type_id = t.type_id\r\n"
				+ "		join Building b on r.building_id = b.building_id\r\n"
				+ "		join Street st on b.street_id = st.street_id\r\n"
				+ "		join District dis on st.district_id = dis.district_id\r\n"
				+ "		join City ci on ci.city_id = dis.city_id\r\n"
				+ "		join Room_Images rm on r.room_id= rm.room_id\r\n"
				+ "		left join (\r\n"
				+ "				Select r3.*\r\n"
				+ "					from Room r3 left join Bill_detail de on r3.room_id = de.room_id\r\n"
				+ "						left join Bill bi on de.bill_id = bi.bill_id\r\n"
				+ "					WHERE (\r\n"
				+ "						@startDate >= de.start_date\r\n"
				+ "						AND  @endDate <= de.end_date\r\n"
				+ "					)\r\n"
				+ "					OR(\r\n"
				+ "						@startDate Between de.start_date and de.end_date\r\n"
				+ "					)\r\n"
				+ "					OR(\r\n"
				+ "							@endDate  Between de.start_date and de.end_date\r\n"
				+ "					)\r\n"
				+ "					OR(\r\n"
				+ "						@startDate <= de.start_date\r\n"
				+ "						AND  @endDate >= de.end_date\r\n"
				+ "					)\r\n"
				+ "			) as r2 on r.room_id = r2.room_id\r\n"
				+ "				left join Feedback f on r.room_id = f.room_id\r\n"
				+ " Where ci.city_name like @city  AND r2.room_id is null\r\n"
				+ "	AND rm.image_link like '%_01.jpg%' Or rm.image_link like '%_01.jpeg%'\r\n"
				+ " Group by r.room_id, r.room_name, r.room_desc, r.room_price, r.room_status, r.building_id, r.type_id, t.type_name, rm.image_link\r\n"
				+ " Order by r.room_price ASC OFFSET @start ROWS FETCH NEXT @end ROWS ONLY";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setDate(1, Date.valueOf(startDate));
			ps.setDate(2, Date.valueOf(endDate));
			ps.setNString(3, "%" + city + "%");
			ps.setInt(4, start);
			ps.setInt(5, recordsPerPage);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Room room = new Room();
				fillDataInRoom(rs, room);
				List<String> roomImage = new ArrayList<String>();
				roomImage.add(rs.getString("image_link"));
				room.setRoomImages(roomImage);
				list.add(room);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return list;
	}

	public List<Room> list(String city, LocalDate startDate, LocalDate endDate, String[] buildingType, String[] concept,
			String[] convenient, int rating, String[] district, String sort, int start, int recordsPerPage) {
		ArrayList<Room> list;
		list = new ArrayList<Room>();
		String direct = sort.equals("up") ? "ASC" : "DESC";

		String sql = " DECLARE @startDate as date = ?\r\n" + " DECLARE @endDate as date = ?\r\n"
				+ " DECLARE @city as nvarchar(100) = ?\r\n" + " DECLARE @start as int = ?\r\n"
				+ " DECLARE @end as int = ?\r\n"
				+ " Select  r.*, t.type_name, ISNULL(Round(AVG(rating*1.0),1),0) as rating, rm.image_link\r\n"
				+ " from Room r join Type_Of_Room t on r.type_id = t.type_id\r\n"
				+ "	join Building b on r.building_id = b.building_id\r\n"
				+ "	join Street st on b.street_id = st.street_id\r\n"
				+ "	join District dis on st.district_id = dis.district_id\r\n"
				+ "	join City ci on ci.city_id = dis.city_id\r\n"
				+ " left join Room_Convenient con on r.room_id = con.room_id\r\n"
				+ " left join Room_Images rm on r.room_id= rm.room_id\r\n" 
				+ "	left join (\r\n"
				+ "				Select r3.*\r\n"
				+ "					from Room r3 left join Bill_detail de on r3.room_id = de.room_id\r\n"
				+ "						left join Bill bi on de.bill_id = bi.bill_id\r\n"
				+ "					WHERE (\r\n" + "						@startDate >= de.start_date\r\n"
				+ "						AND  @endDate <= de.end_date\r\n" + "					)\r\n"
				+ "					OR(\r\n"
				+ "						@startDate Between de.start_date and de.end_date\r\n"
				+ "					)\r\n" + "					OR(\r\n"
				+ "						 @endDate  Between de.start_date and de.end_date\r\n"
				+ "					)\r\n" + "					OR(\r\n"
				+ "						@startDate <= de.start_date\r\n"
				+ "						AND  @endDate >= de.end_date\r\n" + "					)\r\n"
				+ "			) as r2 on r.room_id = r2.room_id\r\n"
				+ "			left join Feedback f on r.room_id = f.room_id\r\n";
		
		if (convenient != null) {
			for (int i = 1; i <= convenient.length - 1; i++) {
				sql += " JOIN Room_Convenient con" + i + " on r.room_id = con" + i + ".room_id AND con" + i + ".convenient_id like ? \r\n";
			}
		}
		
		sql += " Where ci.city_name like @city  AND r2.room_id is null AND (rm.image_link like '%_01.jpg%' Or rm.image_link like '%_01.jpeg%')\r\n";

		if (buildingType != null) {
			sql += " AND (";
			for (int i = 0; i <= buildingType.length - 1; i++) {

				sql += " b.building_type like ? ";
				if (i != buildingType.length - 1) {
					sql += " OR ";
				}
			}
			sql += ")\r\n";
		}
		
		if (concept != null) {
			sql += " AND (";
			for (int i = 0; i <= concept.length - 1; i++) {

				sql += " t.type_id like ? ";
				if (i != concept.length - 1) {
					sql += " OR ";
				}
			}
			sql += ")\r\n";
		}
		
		if (convenient != null) {
			sql += " AND con.convenient_id like ? \r\n";
		}
		
		if (rating != 0) {
			sql += " AND rating between CAST(? AS int) AND (CAST(? AS int) + 1)\r\n";
		}
		
		if (district != null) {
			sql += " AND (";
			for (int i = 0; i <= district.length - 1; i++) {

				sql += " dis.district_id like ? ";
				if (i != district.length - 1) {
					sql += " OR ";
				}
			}
			sql += ")\r\n";
		}

		sql += " Group by r.room_id, r.room_name, r.room_desc, r.room_price, r.room_status, r.building_id, r.type_id, t.type_name, rm.image_link\r\n"
				+ " Order by r.room_price " + direct + "\r\n" + " OFFSET @start ROWS FETCH NEXT @end ROWS ONLY";

		//System.out.println(sql);
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
		
			ps.setDate(1, Date.valueOf(startDate));
			ps.setDate(2, Date.valueOf(endDate));
			ps.setNString(3, "%" + city + "%");
			ps.setInt(4, start);
			ps.setInt(5, recordsPerPage);
			int count = 6;
			
			if (convenient != null) {
				for (int i = 1; i <= convenient.length - 1; i++) {
					ps.setString(count++,convenient[i]);
					//System.out.println(count++);
				}
			}

			if (buildingType != null) {
				for (int i = 0; i <= buildingType.length - 1; i++) {
					ps.setNString(count++, "%" + buildingType[i] + "%");
					//System.out.println(count++);
				}
			}
			
			if (concept != null) {
				for (int i = 0; i <= concept.length - 1; i++) {
					ps.setNString(count++, "%" + concept[i] + "%");
					//System.out.println(count++);
				}
			}
			
			//System.out.println(count);
			if (convenient != null) {
				ps.setString(count++,convenient[0]);
			}
			
			if(rating != 0) {
				ps.setInt(count++, rating);
				ps.setInt(count++, rating);
			}
			
			if (district != null) {
				for (int i = 0; i <= district.length - 1; i++) {
					ps.setString(count++, district[i]);
					//System.out.println(count++);
				}
			}

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Room room = new Room();
				fillDataInRoom(rs, room);
				List<String> images = new ArrayList<String>();
				images.add(rs.getString("image_link"));
				
				room.setRoomImages(images);
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
