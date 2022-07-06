package com.housebooking.DAOimpl.houseowner;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.Duration;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;

import com.housebooking.Model.City;
import com.housebooking.Utils.DBUtils;

public class CityDAO {
	public boolean CheckExist(String cityName) {
		ArrayList<City> list;
		list = new ArrayList<City>();

		String sql = "Select * \r\n"
				+ "from City \r\n"
				+ "where city_name like ? ";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setNString(1, "%" + cityName + "%");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				City city = new City();
				city.setCityId(rs.getString("city_id"));
				city.setCityName(rs.getNString("city_name"));
				list.add(city);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}
		
		return list.size() != 0;
	}
	
	public String FindCityID(String cityName) {
		
		String sql = "Select * \r\n"
				+ "from City \r\n"
				+ "where city_name like ? ";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setNString(1, "%" + cityName + "%");

			ResultSet rs = ps.executeQuery();

			String cityId = "";
			while (rs.next()) {
				cityId = rs.getString("city_id");
			}
			return cityId;
		} catch (Exception ex) {

			ex.printStackTrace();

		}
		
		return null;
	}
	
	public boolean AddNewCity(String cityName) {

		String sql = "Insert into City\r\n"
				+ "Values(?,?)";

		LocalDateTime dateTime = LocalDateTime.now().plus(Duration.of(10, ChronoUnit.MINUTES));
		String CityId = dateTime.toString();
		
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			
			
			ps.setString(1,CityId);
			ps.setNString(2, cityName);

			 if (ps.executeUpdate()>0) {
	                return true;
	         }
			

		} catch (Exception ex) {

			ex.printStackTrace();

		}
		
		return false;
	}
	
}
