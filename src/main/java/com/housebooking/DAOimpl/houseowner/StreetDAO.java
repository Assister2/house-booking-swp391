package com.housebooking.DAOimpl.houseowner;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.Duration;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;

import com.housebooking.Model.District;
import com.housebooking.Utils.DBUtils;

public class StreetDAO {
	
	public  String CheckExist(String cityName, String districtName, String streetName) {

		String sql = " Select st.street_id\r\n"
				+ " from Street st join District di on st.district_id = di.district_id\r\n"
				+ "	join City ci on ci.city_id = di.city_id\r\n"
				+ " Where ci.city_name like ? AND di.district_name like ? AND st.street_name like ?";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setNString(1, "%" + cityName + "%");
			ps.setNString(2, "%" + districtName + "%");
			ps.setNString(3, "%" + streetName + "%");

			ResultSet rs = ps.executeQuery();
			String streetId = "";

			while (rs.next()) {
				streetId = rs.getString("street_id");
			}
			
			return streetId.equals("")?null:streetId;

		} catch (Exception ex) {

			ex.printStackTrace();

		}
		
		return null;
	}
	
	public  String AddNewStreet(String streetName ,String districtName, String cityName) {

		String sql = "Insert into Street\r\n"
				+ " Values(?,?,?)";
		
		LocalDateTime dateTime = LocalDateTime.now().plus(Duration.of(10, ChronoUnit.MINUTES));
		String streetId = dateTime.toString();
		
		DistrictDAO districtDAO = new DistrictDAO();
		
		String districId = districtDAO.FindDistrictId(cityName,districtName);
		
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			
			
			ps.setString(1, streetId);
			ps.setNString(2, streetName);
			ps.setString(3, districId);

			 if (ps.executeUpdate()>0) {
	                return streetId;
	         }
			

		} catch (Exception ex) {

			ex.printStackTrace();

		}
		
		return null;
	}
	
	
	public  String GetStreetNumber(String city, String disctrict, String street) {
		CityDAO cityDAO = new CityDAO();
		if (!cityDAO.CheckExist(city)) {
			cityDAO.AddNewCity(city);
		}
		
		DistrictDAO districtDAO = new DistrictDAO();
		
		if(!districtDAO.CheckExist(city, disctrict)) {
			districtDAO.AddNewDistrict(disctrict, city);
		}
			
		if (CheckExist(city, disctrict, street) == null) {
			return AddNewStreet(street, disctrict, city);
		}
		else {
			return CheckExist(city, disctrict, street);
		}
	}
	
}
