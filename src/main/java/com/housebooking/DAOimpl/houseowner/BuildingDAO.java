package com.housebooking.DAOimpl.houseowner;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.housebooking.Model.Address;
import com.housebooking.Model.Building;
import com.housebooking.Model.City;
import com.housebooking.Model.Convenient;
import com.housebooking.Model.District;
import com.housebooking.Model.Service;
import com.housebooking.Model.Street;
import com.housebooking.Utils.DBUtils;

public class BuildingDAO {

	public List<Building> list(String userID) {
		ArrayList<Building> list;
		list = new ArrayList<Building>();

		String sql = "select b.*, ( b.building_number + ' ' + s.street_name + ' '+ d.district_name +' '+ c.city_name ) as address\r\n"
				+ "			from Building b join Street s on b.street_id=s.street_id\r\n"
				+ "			join District d on s.district_id = d.district_id join City c on d.city_id = c.city_id\r\n"
				+ "		where b.user_id like ?";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, userID);
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

	private void fillDataBuilding(ResultSet rs, Building building) throws SQLException {
		building.setBuildingId(rs.getString("building_id"));
		building.setBuildingDesc(rs.getString("building_desc"));
		building.setBuildingName(rs.getNString("building_name"));
		building.setBuildingType(rs.getString("building_type"));
		building.setBuildingAddress(rs.getString("address"));
		building.setBuildingImage(rs.getString("buiding_image"));
		building.setStreetId(rs.getString("street_id"));
		building.setUserId(rs.getString("user_id"));
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
				+ "from Building b , Additional_service ads \r\n" 
				+ "where ";
		for (int i = 1; i <= listBuilding.size(); i++) {
			if (i == 1) {
				sql += "b.building_id like ?";
			} else {
				sql += " or b.building_id like ?";
			}
		}
		sql += "\r\nEXCEPT\r\n" 
				+ "select bas.building_id, ads.add_serviceID, ads.add_serviceName\r\n"
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
				+ "from Convenient c join Building_Convenient bc on c.convenient_id = bc.convenient_id\r\n" 
				+ "where ";
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

	public List<Convenient> listConvenientAllowToAdd(List<Building> listBuilding){
		ArrayList<Convenient> list;
		list = new ArrayList<Convenient>();
		int count = 1;

		String sql = "select b.building_id,c.convenient_id, c.convenient_name\r\n"
				+ "from Building b , Convenient c \r\n"
				+ "where ";
		for (int i = 1; i <= listBuilding.size(); i++) {
			if (i == 1) {
				sql += "b.building_id like ?";
			} else {
				sql += " or b.building_id like ?";
			}
		}
		sql += "\r\nEXCEPT\r\n"
				+ "select bc.building_id, bc.convenient_id, c.convenient_name\r\n"
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
}