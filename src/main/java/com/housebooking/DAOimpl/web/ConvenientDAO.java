package com.housebooking.DAOimpl.web;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.housebooking.Model.Convenient;
import com.housebooking.Utils.DBUtils;

public class ConvenientDAO {
	public List<Convenient> list() {
		ArrayList<Convenient> list;
		list = new ArrayList<Convenient>();

		String sql = "select * from Convenient";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Convenient convenient = new Convenient();
				convenient.setConveId(rs.getString("convenient_id"));
				convenient.setConveName(rs.getNString("convenient_name"));
				list.add(convenient);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return list;
	}
}
