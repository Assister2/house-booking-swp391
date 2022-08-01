package com.housebooking.DAOimpl.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.housebooking.Model.Convenient;
import com.housebooking.Utils.DBUtils;

public class ConvenientDAO {
	public List<Convenient> listConvenient(){
		ArrayList<Convenient> list;
		list = new ArrayList<Convenient>();

		String sql = " select * from Convenient ";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Convenient convenient = new Convenient();
				convenient.setConveId(rs.getString("convenient_id"));
				convenient.setConveName(rs.getString("convenient_name"));	
				list.add(convenient);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return list;
	}
	
	public boolean DeleteConvenient(String convenientId) {

		String sql = " Delete\r\n"
				+ " From Building_Convenient \r\n"
				+ " Where convenient_id = ?\r\n"
				+ " \r\n"
				+ " Delete From Convenient Where convenient_id = ?";
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, convenientId);
			ps.setString(2, convenientId);

			
			if (ps.executeUpdate() > 0) {
				return true;
			}

		} catch (Exception ex) {
			return false;
		}

		return false;
	}
}
