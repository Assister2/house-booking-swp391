package com.housebooking.DAOimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.housebooking.Model.District;
import com.housebooking.Utils.DBUtils;

public class DistrictDAO {
	public List<District> list(String city) {
		ArrayList<District> list;
		list = new ArrayList<District>();

		String sql = " Select *\r\n"
				+ " From District d join City c on d.city_id=c.city_id\r\n"
				+ " Where c.city_name like ?\r\n";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setNString(1, "%" + city + "%");
			
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				District district = new District();
				district.setDistrictId(rs.getString("district_id"));
				district.setDistrictName(rs.getNString("district_name"));
				list.add(district);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}
		
		return list;
	}
}
