package com.housebooking.DAOimpl.houseowner;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.Duration;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;

import com.housebooking.Model.City;
import com.housebooking.Model.District;
import com.housebooking.Utils.DBUtils;

public class DistrictDAO {
	public boolean CheckExist(String cityName, String districtName) {
		ArrayList<District> list;
		list = new ArrayList<District>();

		String sql = "Select di.* \r\n"
				+ "from District di join City ci on di.city_id = ci.city_id\r\n"
				+ "Where ci.city_name like ? AND di.district_name like ? ";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setNString(1, "%" + cityName + "%");
			ps.setNString(2, "%" + districtName + "%");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				District district = new District();
				district.setDistrictId(rs.getString("district_id"));
				list.add(district);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}
		
		return list.size() != 0;
	}
	
	public String FindDistrictId(String cityName, String districtName) {

		String sql = "Select di.* \r\n"
				+ "from District di join City ci on di.city_id = ci.city_id\r\n"
				+ "Where ci.city_name like ? AND di.district_name like ? ";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setNString(1, "%" + cityName + "%");
			ps.setNString(2, "%" + districtName + "%");

			ResultSet rs = ps.executeQuery();
			String districtId = "";

			while (rs.next()) {
				districtId = rs.getString("district_id");
			}
			
			return districtId.equals("")?null:districtId;

		} catch (Exception ex) {

			ex.printStackTrace();

		}
		
		return null;
	}
	
	public boolean AddNewDistrict(String districtName, String cityName) {

		String sql = "Insert into District\r\n"
				+ "Values(?,?,?)";

		CityDAO cityDAO = new CityDAO();
		String cityId = cityDAO.FindCityID(cityName);
		
		LocalDateTime dateTime = LocalDateTime.now().plus(Duration.of(10, ChronoUnit.MINUTES));
		String districtId = dateTime.toString();
		
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			
			
			ps.setString(1, districtId);
			ps.setNString(2,districtName);
			ps.setString(3, cityId);

			 if (ps.executeUpdate()>0) {
	                return true;
	         }
			

		} catch (Exception ex) {

			ex.printStackTrace();

		}
		
		return false;
	}
}
