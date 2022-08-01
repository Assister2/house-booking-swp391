package com.housebooking.DAOimpl.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.housebooking.Model.Service;
import com.housebooking.Model.User;
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
	
	public List<User> listUser(int start, int end, String search, String properties, String by){
		ArrayList<User> list;
		list = new ArrayList<User>();

		String sql = " select * from Users "
				+ " Where user_name like N'%" + search + "%' ";
		
		if (properties.equals("Theo trạng thái")) {
			switch (by) {
			case "Active account":
				sql += " AND status like N'%active%' ";
				break;
			case "Banned account": 
				sql +=  " AND status like N'%banned%' ";
				break;
			default:
				break;
			}
		} else if (properties.equals("Theo vai trò")) {
			switch (by) {
			case "Chủ nhà":
				sql += " AND role like N'%Owner%' ";
				break;
			case "Khách thuê": 
				sql +=  " AND role like N'%User%' ";
				break;
			default:
				break;
			}
		} 
		
		if (start != -1 && end != -1) {
			sql += " Order by user_id ASC\r\n" + " OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
		}
		
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			
			if (start != -1 && end != -1) {
				ps.setInt(1, start);
				ps.setInt(2, end);
			}
			System.out.println(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				User user = new User();	
				user = new User();
            	user.setUserId(rs.getString("user_id"));
                user.setName(rs.getNString("user_name"));
                user.setAvatar(rs.getString("avatar"));
                user.setRole(rs.getString("role"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setPhoneNumber(rs.getString("phone"));
                user.setEmail(rs.getString("Email"));
                user.setStatus(rs.getNString("status"));
				list.add(user);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return list;
	}
	
	public boolean UpdateStatus(String userId, String status) {

		String sql = "Update Users \r\n"
				+ " Set status = ? \r\n"
				+ " Where user_id = ? ";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(2, userId);
			ps.setString(1, status);
			
			if (ps.executeUpdate() > 0) {
				return true;
			}

		} catch (Exception ex) {
			return false;

		}

		return false;
	}
}
