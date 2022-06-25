package com.housebooking.DAOimpl.houseowner;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.housebooking.Model.Address;
import com.housebooking.Model.Building;
import com.housebooking.Model.City;
import com.housebooking.Model.District;
import com.housebooking.Model.Street;
import com.housebooking.Utils.DBUtils;

public class BuildingDAO {
	public List<Building> list(String userID) {
		ArrayList<Building> list;
		list = new ArrayList<Building>();

		String sql = "select b.*, ( b.building_number + ' ' + s.street_name + ' '+ d.district_name +' '+ c.city_name ) as address\r\n"
				+ "from Building b join Street s on b.street_id=s.street_id\r\n"
				+ "join District d on s.district_id = d.district_id\r\n"
				+ "join City c on d.city_id = c.city_id\r\n"
				+ "where b.user_id like ?";

		
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, userID);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Building building = new Building();
//				
//				City city = new City();
//				city.setCityId(rs.getString("city_id"));
//				city.setCityName(rs.getNString("city_name"));
//				
//				District district = new District();
//				district.setDistrictId(rs.getString("district_id"));
//				district.setDistrictName(rs.getNString("district_name"));
//				
//				Street street = new Street();
//				street.setStreetId(rs.getString("street_id"));
//				street.setStreetName(rs.getNString("street_name"));
//				
//				Address address = new Address();
//				address.setCity(city);
//				address.setDistrict(district);
//				address.setStreet(street);
				
				building.setBuildingId(rs.getString("building_id"));
				building.setBuildingDesc(rs.getString("building_desc"));
				building.setBuildingType(rs.getString("building_type"));
				building.setBuildingAddress(rs.getString("address"));
				building.setStreetId(rs.getString("street_id"));
				building.setUserId(rs.getString("user_id"));
				int numRoom = getNumRoom(rs.getString("building_id"));
				building.setNumRoom(numRoom);
				list.add(building);
			}
			
		} catch (Exception ex) {

			ex.printStackTrace();

		}
		
		return list;
	}
	
	
	public int getNumRoom(String building_id) {
		int result = 0;
		
		String sql = "select count(r.room_id)as roomNum\r\n"
				+ "from Room r join building b on r.building_id = b.building_id\r\n"
				+ "where b.building_id like ?";
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, building_id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				result = Integer.parseInt(rs.getString("roomNum"));
			}
			
			
		}catch (Exception ex){
			ex.printStackTrace();
		}
		return result;
	}
	public List<Building> listBuildingType() {
		ArrayList<Building> list;
		list = new ArrayList<Building>();

		String sql = "select distinct building_type\r\n"
				+ " from Building";

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
