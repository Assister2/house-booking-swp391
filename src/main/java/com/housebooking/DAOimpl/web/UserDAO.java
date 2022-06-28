package com.housebooking.DAOimpl.web;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.housebooking.Model.User;
import com.housebooking.Utils.DBUtils;

public class UserDAO {
	public User find(String id) {
        String sql = "Select * from Users Where UserID like ?";

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

	public int changePassword(User user, String oldPassword, String newPassword) {
		// TODO Auto-generated method stub
		return 0;
	}

	public boolean updateInformation(User user) {
		// TODO Auto-generated method stub
		return false;
	}
}
