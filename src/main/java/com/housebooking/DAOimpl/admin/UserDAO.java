package com.housebooking.DAOimpl.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.housebooking.Utils.DBUtils;

public class UserDAO {
	public int OwnerCount() {

		int re = 0;
		String sql = " Select count(u.user_id) as total\r\n"
				+ "from Users u\r\n"
				+ "Where  u.role = 'Owner' ";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				re = rs.getInt("total");
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return re;
	}
	
	public int NormalUserCount() {

		int re = 0;
		String sql = " Select count(u.user_id) as total\r\n"
				+ "from Users u\r\n"
				+ "Where  u.role = 'User' ";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				re = rs.getInt("total");
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return re;
	}
}
