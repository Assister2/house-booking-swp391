package com.housebooking.controller.homeowner;

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
}
