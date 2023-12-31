package com.housebooking.DAOimpl.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.housebooking.Model.Building;
import com.housebooking.Model.Convenient;
import com.housebooking.Model.Service;
import com.housebooking.Utils.DBUtils;

public class BuildingDAO {
	
	public List<Integer> GetStatistic() {
		List<Integer> result = new ArrayList<Integer>();
		for (int i = 0; i < 7; i++) {
			result.add(i, 0);
		}
		String sql = " Select count(b.building_id) as amount, DATENAME(WEEKDAY, b.date) as datename, b.date\r\n"
				+ " From Building b join Users u on b.user_id = u.user_id\r\n"
				+ " Where DATEPART(DAYOFYEAR, b.date) >= DATEPART(DAYOFYEAR,CAST( DATEADD(dd,  0, DATEADD(ww, DATEDIFF(ww, 0, DATEADD(dd, -1, GETDATE())) , 0)) AS Date)) \r\n"
				+ " AND DATEPART(DAYOFYEAR,b.date) <= DATEPART(DAYOFYEAR,CAST( DATEADD(dd,  6, DATEADD(ww, DATEDIFF(ww, 0, DATEADD(dd, -1, GETDATE())) , 0)) AS Date)) \r\n"
				+ " Group by DATENAME(WEEKDAY, b.date), b.date\r\n"
				+ " Order by b.date ASC";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				switch (rs.getString("datename")) {
				case "Monday":
					result.set(0, rs.getInt("amount"));
					break;
				case "Tuesday":
					result.set(1, rs.getInt("amount"));
					break;
				case "Wednesday":
					result.set(2, rs.getInt("amount"));
					break;
				case "Thursday":
					result.set(3, rs.getInt("amount"));
					break;
				case "Friday":
					result.set(4, rs.getInt("amount"));
					break;
				case "Saturday":
					result.set(5, rs.getInt("amount"));
					break;
				case "Sunday":
					result.set(6, rs.getInt("amount"));
					break;
				}
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return result;
	}

	public int Count() {

		int re = 0;
		String sql = " Select count(building_id) as count\r\n" + " from Building";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				re = rs.getInt("count");
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return re;
	}

	public List<Building> list(int start, int end, String properties, String detailProperties) {
		ArrayList<Building> list;
		list = new ArrayList<Building>();

		String sql = "select b.*, ( b.building_number + ' ' + s.street_name + ' '+ d.district_name +' '+ c.city_name ) as address\r\n"
				+ "			from Building b join Street s on b.street_id=s.street_id\r\n"
				+ "			join District d on s.district_id = d.district_id join City c on d.city_id = c.city_id\r\n"
				+ "		where b.building_status not like 'Removed' ";
		
		/*
		 * if (properties.equalsIgnoreCase("Theo ngày")) { switch (detailProperties) {
		 * case "Hôm nay": sql += " AND bi.date >= CAST(GETDATE() as date) "; break;
		 * case "Tháng này": sql +=
		 * " AND bi.date >= CAST(DATEADD(mm, DATEDIFF(mm, 1, CAST(DATEADD(month, 0, GETDATE()) as date)), 0) as date)"
		 * ; break; case "Tuần này": sql +=
		 * " AND DATEPART(WEEK, bi.date) >= DATEPART(WEEK,CAST(GETDATE() as date))";
		 * break; default: break; } } else
		 */if (properties.equals("Theo trạng thái")) {
			switch (detailProperties) {
			case "Chờ duyệt":
				sql += " AND b.building_status like N'%Chờ duyệt%' ";
				break;
			case "active": 
				sql +=  " AND b.building_status like N'%active%' ";
				break;
			case "off": 
				sql +=  " AND b.building_status like N'%off%' ";
				break;
			default:
				break;
			}
		} 
		
		if (start != -1 && end != -1) {
			sql += " Order by b.building_id ASC\r\n" + " OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
		}
		
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			if (start != -1 && end != -1) {
				ps.setInt(1, start);
				ps.setInt(2, end);
			}
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Building building = new Building();

				fillDataBuilding(rs, building);
				int numRoom = getNumRoom(rs.getString("building_id"));
				building.setNumRoom(numRoom);
				list.add(building);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return list;
	}

	public Building Find(String buildingId) {
		Building building = new Building();

		String sql = "select b.*, ( b.building_number + ' ' + s.street_name + ' '+ d.district_name +' '+ c.city_name ) as address\r\n"
				+ "			from Building b join Street s on b.street_id=s.street_id\r\n"
				+ "			join District d on s.district_id = d.district_id join City c on d.city_id = c.city_id\r\n"
				+ "		where b.building_id like ? And b.building_status not like 'Removed' ";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, buildingId);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				fillDataBuilding(rs, building);
				int numRoom = getNumRoom(rs.getString("building_id"));
				building.setNumRoom(numRoom);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return building;
	}

	private void fillDataBuilding(ResultSet rs, Building building) throws SQLException {
		building.setBuildingId(rs.getString("building_id"));
		building.setBuildingDesc(rs.getString("building_desc"));
		building.setBuildingName(rs.getNString("building_name"));
		building.setBuildingType(rs.getString("building_type"));
		building.setBuildingAddress(rs.getString("address"));
		building.setBuildingImage(rs.getString("buiding_image"));
		building.setStreetId(rs.getString("street_id"));
		building.setUserId(rs.getString("user_id"));
		building.setBuildingArea(rs.getFloat("building_area"));
		building.setBuildingDetailInfor(rs.getNString("building_infor"));
		building.setBuildingStatus(rs.getNString("building_status"));
		building.setBuildingRule(rs.getNString("building_rule"));
	}

	public int getNumRoom(String building_id) {
		int result = 0;

		String sql = "select count(r.room_id)as roomNum\r\n"
				+ " from Room r join building b on r.building_id = b.building_id\r\n"
				+ " where b.building_id like ? And r.room_status not like 'Removed' ";
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

	public List<Service> listService(List<Building> listBuilding) {
		ArrayList<Service> list;
		list = new ArrayList<Service>();
		int count = 1;

		String sql = "select bas.building_id, ads.add_serviceID, ads.add_serviceName, bas.add_service_price\r\n"
				+ "from Building_Additional_service bas join Additional_service ads on bas.add_serviceId = ads.add_serviceId\r\n"
				+ "where ";
		for (int i = 1; i <= listBuilding.size(); i++) {
			if (i == 1) {
				sql += "bas.building_id like ?";
			} else {
				sql += " or bas.building_id like ?";
			}
		}

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			for (Building b : listBuilding) {
				ps.setString(count, b.getBuildingId());
				count++;
			}

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Service service = new Service();
				service.setBuildingID(rs.getString("building_id"));
				service.setServiceID(rs.getString("add_serviceID"));
				service.setServiceName(rs.getString("add_serviceName"));
				service.setPrice(rs.getInt("add_service_price"));
				list.add(service);
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return list;
	}

	public List<Service> listServiceAllowToAdd(List<Building> listBuilding) {
		ArrayList<Service> list;
		list = new ArrayList<Service>();
		int count = 1;

		String sql = "select b.building_id,ads.add_serviceId, ads.add_serviceName\r\n"
				+ "from Building b , Additional_service ads \r\n" + "where ";
		for (int i = 1; i <= listBuilding.size(); i++) {
			if (i == 1) {
				sql += "b.building_id like ?";
			} else {
				sql += " or b.building_id like ?";
			}
		}
		sql += "\r\nEXCEPT\r\n" + "select bas.building_id, ads.add_serviceID, ads.add_serviceName\r\n"
				+ "from Building_Additional_service bas join Additional_service ads on bas.add_serviceId = ads.add_serviceId\r\n"
				+ "where ";
		for (int i = 1; i <= listBuilding.size(); i++) {
			if (i == 1) {
				sql += "bas.building_id like ?";
			} else {
				sql += " or bas.building_id like ?";
			}
		}

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			for (int i = 1; i <= 2; i++) {
				for (Building b : listBuilding) {
					ps.setString(count, b.getBuildingId());
					count++;
				}
			}

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Service service = new Service();
				service.setBuildingID(rs.getString("building_id"));
				service.setServiceID(rs.getString("add_serviceID"));
				service.setServiceName(rs.getString("add_serviceName"));
				list.add(service);
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return list;
	}

	public List<Convenient> listConvenient(List<Building> listBuilding) {
		ArrayList<Convenient> list;
		list = new ArrayList<Convenient>();
		int count = 1;

		String sql = "select bc.building_id, bc.convenient_id, c.convenient_name\r\n"
				+ "from Convenient c join Building_Convenient bc on c.convenient_id = bc.convenient_id\r\n" + "where ";
		for (int i = 1; i <= listBuilding.size(); i++) {
			if (i == 1) {
				sql += "bc.building_id like ?";
			} else {
				sql += " or bc.building_id like ?";
			}
		}

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			for (Building b : listBuilding) {
				ps.setString(count, b.getBuildingId());
				count++;
			}

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Convenient convenient = new Convenient();
				convenient.setBuildingID(rs.getString("building_id"));
				convenient.setConveId(rs.getString("convenient_id"));
				convenient.setConveName(rs.getString("convenient_name"));
				list.add(convenient);
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return list;
	}

	public List<Convenient> listConvenientAllowToAdd(List<Building> listBuilding) {
		ArrayList<Convenient> list;
		list = new ArrayList<Convenient>();
		int count = 1;

		String sql = "select b.building_id,c.convenient_id, c.convenient_name\r\n"
				+ "from Building b , Convenient c \r\n" + "where ";
		for (int i = 1; i <= listBuilding.size(); i++) {
			if (i == 1) {
				sql += "b.building_id like ?";
			} else {
				sql += " or b.building_id like ?";
			}
		}
		sql += "\r\nEXCEPT\r\n" + "select bc.building_id, bc.convenient_id, c.convenient_name\r\n"
				+ "	from Convenient c join Building_Convenient bc on c.convenient_id = bc.convenient_id\r\n"
				+ "	where ";
		for (int i = 1; i <= listBuilding.size(); i++) {
			if (i == 1) {
				sql += "bc.building_id like ?";
			} else {
				sql += " or bc.building_id like ?";
			}
		}

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			for (int i = 1; i <= 2; i++) {
				for (Building b : listBuilding) {
					ps.setString(count, b.getBuildingId());
					count++;
				}
			}

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Convenient convenient = new Convenient();
				convenient.setBuildingID(rs.getString("building_id"));
				convenient.setConveId(rs.getString("convenient_id"));
				convenient.setConveName(rs.getString("convenient_name"));
				list.add(convenient);
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return list;
	}

	public List<Building> listBuildingType() {
		ArrayList<Building> list;
		list = new ArrayList<Building>();

		String sql = "select distinct building_type\r\n" + " from Building";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Building building = new Building();
				building.setBuildingType(rs.getString("building_type"));
				list.add(building);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return list;
	}

	public boolean AddNewBuilding(Building building) {

		String sql = "Insert into Building\r\n" + "Values(?,?,?,?,?,?,?,?,?,?,?,?) ";
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, building.getBuildingId());
			ps.setNString(2, building.getBuildingNumber());
			ps.setNString(3, building.getBuildingName());
			ps.setFloat(4, building.getBuildingArea());
			ps.setString(5, building.getBuildingImage());
			ps.setNString(6, building.getBuildingDesc());
			ps.setNString(7, building.getBuildingDetailInfor());
			ps.setString(8, building.getBuildingStatus());
			ps.setNString(9, building.getBuildingType());
			ps.setNString(10, building.getBuildingRule());
			ps.setString(11, building.getStreetId());
			ps.setString(12, building.getUserId());

			if (ps.executeUpdate() > 0) {
				return true;
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return false;
	}
	
	public boolean OnBuilding(String buildingId) {

		String sql = " UPDATE Building\r\n" + " SET building_status = 'active' " + " WHERE building_id = ? ";
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, buildingId);

			if (ps.executeUpdate() > 0) {
				return true;
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return false;
	}
	
	public boolean OffBuilding(String buildingId) {

		String sql = " UPDATE Building\r\n" + " SET building_status = 'off' " + " WHERE building_id = ? ";
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, buildingId);

			if (ps.executeUpdate() > 0) {
				return true;
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return false;
	}

	public boolean DeleteBuilding(String buildingId) {

		String sql = " UPDATE Building\r\n" + " SET building_status = 'Removed' " + " WHERE building_id = ? ";
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, buildingId);

			if (ps.executeUpdate() > 0) {
				return true;
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return false;
	}

	public boolean UpdateBuilding(String buildingId, String buildingName, float area, String buildingType,
			String buildingInfor, String buildingRules, String buildingDescrip, String imageLink) {

		String sql = " UPDATE Building\r\n"
				+ " SET building_name = ?, building_area = ?, building_type = ?, building_infor = ?, building_rule = ?, building_desc = ? ";

		if (imageLink != null) {
			sql += " , buiding_image = ? \r\n";
		}

		sql += " WHERE building_id = ? ";
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setNString(1, buildingName);
			ps.setFloat(2, area);
			ps.setNString(3, buildingType);
			ps.setNString(4, buildingInfor);
			ps.setNString(5, buildingRules);
			ps.setNString(6, buildingDescrip);
			int count = 7;
			if (imageLink != null) {
				ps.setString(count++, imageLink);
			}
			ps.setNString(count, buildingId);

			if (ps.executeUpdate() > 0) {
				return true;
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return false;
	}
}
