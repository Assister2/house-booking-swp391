package com.housebooking.DAOimpl.web;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.housebooking.DAO.IHouseOwnerDAO;
import com.housebooking.Utils.DBUtils;

public class HouseOwnerDAO implements IHouseOwnerDAO{

	@Override
	public List<String> list() {
		ArrayList<String> list;
		list = new ArrayList<String>();

		String sql = "select room_name from Room where building_owner = ?";

		
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				String name = rs.getString("room_name");
				
				list.add(name);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return list;
	}

}
