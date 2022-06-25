package com.housebooking.DAOimpl.web;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import com.housebooking.Model.Address;
import com.housebooking.Model.Building;
import com.housebooking.Model.City;
import com.housebooking.Model.District;
import com.housebooking.Model.Room;
import com.housebooking.Model.Street;
import com.housebooking.Utils.DBUtils;

public class WebBuildingDAO {
	public List<Building> list(LocalDate startDate, LocalDate endDate, String city, int start, int end,
			String[] buildingType, String[] convenient, double rating, String[] district, String sort) {
		ArrayList<Building> list;
		list = new ArrayList<Building>();
		String direct = sort.equals("up") ? "ASC" : "DESC";

		String sql = " DECLARE @startDate as date = ?\r\n" + " DECLARE @endDate as date = ?\r\n"
				+ " DECLARE @city as nvarchar(100) = ?\r\n" + " DECLARE @start as int = ?\r\n"
				+ "	DECLARE @end as int = ?\r\n"
				+ " Select  b.building_id, b.building_number,b.building_name, b.building_desc, b.buiding_image, b.building_type, b.building_rule, ( b.building_number + ' ' + st.street_name + ' '+ dis.district_name +' '+ ci.city_name ) as address,ISNULL(Round(AVG(rating*1.0),1),0) as rating\r\n"
				+ " from Room r join Type_Of_Room t on r.type_id = t.type_id\r\n"
				+ "	join Building b on r.building_id = b.building_id\r\n"
				+ "	join Street st on b.street_id = st.street_id\r\n"
				+ "	join District dis on st.district_id = dis.district_id\r\n"
				+ "	join City ci on ci.city_id = dis.city_id\r\n"
				+ "	left join Building_Convenient con on  b.building_id = con.building_id\r\n"
				+ "	left join Feedback fb on b.building_id = fb.building_id\r\n" + "	left join (\r\n"
				+ "				Select r3.*\r\n"
				+ "					from Room r3 left join Bill_detail de on r3.room_id = de.room_id\r\n"
				+ "						left join Bill bi on de.bill_id = bi.bill_id\r\n"
				+ "					WHERE (\r\n" + "						@startDate >= de.start_date\r\n"
				+ "						AND  @endDate <= de.end_date\r\n" + "					)\r\n"
				+ "					OR(\r\n"
				+ "						@startDate Between de.start_date and de.end_date\r\n"
				+ "					)\r\n" + "					OR(\r\n"
				+ "							@endDate  Between de.start_date and de.end_date\r\n"
				+ "					)\r\n" + "					OR(\r\n"
				+ "						@startDate <= de.start_date\r\n"
				+ "						AND  @endDate >= de.end_date\r\n" + "					)\r\n"
				+ "			) as r2 on r.room_id = r2.room_id			\r\n";

		if (convenient != null) {
			for (int i = 1; i <= convenient.length - 1; i++) {
				sql += " JOIN Building_Convenient con" + i + " on b.building_id = con" + i + ".building_id AND con" + i
						+ ".convenient_id like ? \r\n";
			}
		}

		sql += " Where ci.city_name like @city  AND r2.room_id is null		\r\n";

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
		
		sql += " Group by b.building_id, b.building_number,b.building_name, b.building_desc, b.buiding_image, b.building_type, b.building_rule, st.street_name, dis.district_name, ci.city_name "
				+ " Order by b.building_id ASC\r\n"
				+ " OFFSET @start ROWS FETCH NEXT @end ROWS ONLY";
		
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setDate(1, Date.valueOf(startDate));
			ps.setDate(2, Date.valueOf(endDate));
			ps.setNString(3, "%" + city + "%");
			ps.setInt(4, start);
			ps.setInt(5, end);
			int count = 6;
			
			if (convenient != null) {
				for (int i = 1; i <= convenient.length - 1; i++) {
					ps.setString(count++,convenient[i]);
				}
			}
			
			if (buildingType != null) {
				for (int i = 0; i <= buildingType.length - 1; i++) {
					ps.setNString(count++, "%" + buildingType[i] + "%");
					//System.out.println(count++);
				}
			}
			
			if(rating != 0) {
				ps.setInt(count++, (int) rating);
				ps.setInt(count++, (int) rating);
			}
			
			if (district != null) {
				for (int i = 0; i <= district.length - 1; i++) {
					ps.setString(count++, district[i]);
					//System.out.println(count++);
				}
			}

			System.out.println(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Building building = new Building();

				building.setBuildingId(rs.getString("building_id"));
				building.setBuildingName(rs.getNString("building_name"));
				building.setBuildingDesc(rs.getString("building_desc"));
				building.setBuildingType(rs.getString("building_type"));
				building.setBuildingAddress(rs.getString("address"));
				building.setBuildingImage(rs.getString("buiding_image"));
				building.setRating(rs.getFloat("rating"));
				int numRoom = getNumRoom(rs.getString("building_id"));
				building.setNumRoom(numRoom);
				list.add(building);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return list;
	}

	public int totalRecords(LocalDate startDate, LocalDate endDate, String city, String[] buildingType, String[] convenient, double rating, String[] district) {
		return list(startDate, endDate, city, 0, 1000, buildingType, convenient, rating, district, "ASC").size();
	}

	public int getNumRoom(String building_id) {
		int result = 0;

		String sql = "select count(r.room_id)as roomNum\r\n"
				+ "from Room r join building b on r.building_id = b.building_id\r\n" + "where b.building_id like ?";
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, building_id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				result = Integer.parseInt(rs.getString("roomNum"));
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return result;
	}
	
	public Building find(String buildingId) {
		Building building = new Building();
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
			
			room.setRoomImages(findImages(roomId));

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return room;
	}
}
