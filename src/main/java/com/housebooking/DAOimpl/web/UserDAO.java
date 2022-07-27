package com.housebooking.DAOimpl.web;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.housebooking.Model.User;
import com.housebooking.Utils.DBUtils;

public class UserDAO {
	public User find(String id) {
        String sql = "Select * from Users Where user_id like ?";

        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, id);
            
            ResultSet rs = ps.executeQuery();
            User user = new User();
            while(rs.next()){
                user.setUserId(rs.getString("user_id"));
                user.setName(rs.getNString("user_name"));
                user.setAvatar(rs.getString("avatar"));
                user.setRole(rs.getString("role"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setPhoneNumber(rs.getString("phone"));
                user.setEmail(rs.getString("email"));
            }
            return user;
            

        } catch (Exception ex) {

            ex.printStackTrace();

        }

        return null;
    }
	
	public User findByAccount(String username, String password) {
        String sql = "Select * from Users Where username = ? and password = ?";

        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, username);
            ps.setString(2, password);
            
            ResultSet rs = ps.executeQuery();
            User user = new User();
            while(rs.next()){
                user.setUserId(rs.getString("user_id"));
                user.setName(rs.getNString("user_name"));
                user.setAvatar(rs.getString("avatar"));
                user.setRole(rs.getString("role"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setPhoneNumber(rs.getString("phone"));
                user.setEmail(rs.getString("email"));
            }
            return user;
            

        } catch (Exception ex) {

            ex.printStackTrace();

        }

        return null;
    }

    public boolean save(User user) {
        String sql = "INSERT INTO Users \n"
                + " VALUES(?,?,?,?,?,?,?,?)";

        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, user.getUserId());
            ps.setNString(2, user.getName());
            ps.setString(3, user.getAvatar());
            ps.setString(4, user.getRole());
            ps.setString(5, user.getUsername());
            ps.setString(6, user.getPassword());
            ps.setString(7, user.getPhoneNumber());
            ps.setString(8, user.getEmail());

            if (ps.executeUpdate() > 0) {
                return true;
            }

        } catch (Exception ex) {

            ex.printStackTrace();

        }

        return false;
    }

	public int changePassword(String userId, String newPassword) {
		int re = 0;
		String sql = " Update Users\r\n"
				+ " Set password = ?\r\n"
				+ " Where user_id = ?";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, newPassword);
			ps.setString(2, userId);
			return ps.executeUpdate();

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return re;
	}

	public boolean updateInformation(User user) {
		String sql = " Update Users\r\n"
				+ " Set user_name = ?, email = ?, phone = ?\r\n"
				+ " Where user_id = ?";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setNString(1, user.getName());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPhoneNumber());
			ps.setString(4, user.getUserId());
			
			return ps.executeUpdate()>0?true:false;

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return false;
	}
}
