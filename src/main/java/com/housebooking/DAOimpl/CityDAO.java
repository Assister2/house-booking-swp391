package com.housebooking.DAOimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.housebooking.Model.City;
import com.housebooking.Utils.DBUtils;

public class CityDAO {
	public List<City> list() {
		ArrayList<City> list;
		list = new ArrayList<City>();

		String sql = "select * from City";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);

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
		
		return list;
	}
}
