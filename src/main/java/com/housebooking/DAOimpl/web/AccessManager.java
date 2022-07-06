package com.housebooking.DAOimpl.web;

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
	                user.setAvatar(rs.getString("avatar"));
	                user.setRole(rs.getString("role"));
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
	 
	 public UserSession loginGoogle(String id, String name, String email) {
	        UserSession userSession =  new UserSession();
	        User user = new User();
	        String sql = "select * from Users "
	                + "Where user_id like ? ";

	        
	        try {

	            Connection conn = DBUtils.getConnection();

	            PreparedStatement ps = conn.prepareStatement(sql);

	            ps.setString(1, id);

	            ResultSet rs = ps.executeQuery();

	            if (!rs.next() ) {
	                createNewGoogleAccess(id, name, email);
	                userSession = loginGoogle(id, name, email);
	                
	            } else {
	            	user = new User();
	            	user.setUserId(rs.getString("user_id"));
	                user.setName(rs.getNString("user_name"));
	                user.setAvatar(rs.getString("avatar"));
	                user.setRole(rs.getString("role"));
	                user.setUsername(rs.getString("username"));
	                user.setPassword(rs.getString("password"));
	                user.setPhoneNumber(rs.getString("phone"));
	                user.setEmail(rs.getString("Email"));
	                
	            }
	            userSession.setUser(user);
	            ps.close();
	            conn.close();

	            return userSession;
	        } catch (Exception ex) {

	            ex.printStackTrace();

	        }

	        return null;
	    }
	 
	 public void createNewGoogleAccess(String id, String name, String email) {
		 String sql = "INSERT INTO Users\r\n"
		 		+ "VALUES (?,?,null,?,null,null,null,?)";

	        
	        try {

	            Connection conn = DBUtils.getConnection();

	            PreparedStatement ps = conn.prepareStatement(sql);

	            ps.setString(1, id);
	            ps.setString(2, name);
	            ps.setString(3, "User");
	            ps.setString(4, email);

	            ps.executeUpdate();
	            
	            ps.close();
	            conn.close();

	        } catch (Exception ex) {

	            ex.printStackTrace();

	        }
	        
	  }
	 
//	 public int getLastestNumberID() {
//		 int userIDLastestNumber = 0;
//	        String sql = "select top 1 user_id from Users\r\n"
//	        		+ "order by user_id DESC";
//     
//	        try {
//
//	            Connection conn = DBUtils.getConnection();
//
//	            PreparedStatement ps = conn.prepareStatement(sql);
//
//	            ResultSet rs = ps.executeQuery();
//
//	            if (rs.next()) {
//	            	userIDLastestNumber = Integer.parseInt((rs.getString("user_id")).substring(5));
//	            }
//	            
//	            System.out.println(userIDLastestNumber);
//	            
//	            ps.close();
//	            conn.close();
//	            
//	            return userIDLastestNumber;
//	        } catch (Exception ex) {
//
//	            ex.printStackTrace();
//
//	        }
//	     return 0;
//	 }
}
