package com.housebooking.DAOimpl.web;

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
	public List<Building> list() {
		ArrayList<Building> list;
		list = new ArrayList<Building>();

		String sql = "select b.*, s.street_id, s.street_name, d.district_id,d.district_name, c.city_id, c.city_name \r\n"
				+ "from Building b join Street s on b.street_id=s.street_id\r\n"
				+ "	join District d on s.district_id = d.district_id\r\n"
				+ "	join City c on d.city_id = c.city_id";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Building building = new Building();
				
				City city = new City();
				city.setCityId(rs.getString("city_id"));
				city.setCityName(rs.getNString("city_name"));
				
				District district = new District();
				district.setDistrictId(rs.getString("district_id"));
				district.setDistrictName(rs.getNString("district_name"));
				
				Street street = new Street();
				street.setStreetId(rs.getString("street_id"));
				street.setStreetName(rs.getNString("street_name"));
				
				Address address = new Address();
				address.setCity(city);
				address.setDistrict(district);
				address.setStreet(street);
				
				building.setBuildingId(rs.getString("building_id"));
				building.setBuildingDesc(rs.getNString("building_desc"));
				building.setBuildingType(rs.getNString("building_type"));
				building.setStreetId(rs.getString("street_id"));
				building.setUserId(rs.getString("user_id"));
				building.setAddress(address);
				list.add(building);
			}
			
		} catch (Exception ex) {

			ex.printStackTrace();

		}
		
		return list;
	}
}
