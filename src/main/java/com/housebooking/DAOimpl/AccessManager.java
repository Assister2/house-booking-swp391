package com.housebooking.DAOimpl;

import java.sql.Connection;
import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.housebooking.Model.User;
import com.housebooking.Model.UserSession;
import com.housebooking.Utils.DBUtils;

public class AccessManager {
	 public UserSession login(String username, String password) {
	        UserSession userSession =  new UserSession();

	        String sql = "select * from Users "
	                + "Where username like ? AND password like ?";

	        try {

	            Connection conn = DBUtils.getConnection();

	            PreparedStatement ps = conn.prepareStatement(sql);

	            ps.setString(1, username);
	            ps.setString(2, password);

	            ResultSet rs = ps.executeQuery();

	            while (rs.next()) {
	            	User user = new User();
	            	user.setUserId(rs.getString("user_id"));
	                user.setName(rs.getNString("user_name"));
	                user.setRole(rs.getNString("role"));
	                user.setUsername(rs.getString("username"));
	                user.setPassword(rs.getString("password"));
	                user.setPhoneNumber(rs.getString("phone"));
	                user.setEmail(rs.getString("Email"));
	                Date date = new Date();	    
	                
	                userSession.setUser(user);
	                userSession.setDate(date);
	            }

	            ps.close();
	            conn.close();

	            return userSession;
	        } catch (Exception ex) {

	            ex.printStackTrace();

	        }

	        return null;
	    }
}
