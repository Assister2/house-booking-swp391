package com.housebooking.DAOimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.housebooking.Model.Building;
import com.housebooking.Utils.DBUtils;

public class BuildingDAO {
	public List<Building> list() {
		ArrayList<Building> list;
		list = new ArrayList<Building>();

		String sql = "select * from Building";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Building building = new Building();
				building.setBuildingId(rs.getString("building_id"));
				building.setBuildingDesc(rs.getNString("building_desc"));
				building.setBuildingType(rs.getNString("building_type"));
				building.setStreetId(rs.getString("street_id"));
				building.setUserId(rs.getString("user_id"));
				list.add(building);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}
		
		return list;
	}
}
