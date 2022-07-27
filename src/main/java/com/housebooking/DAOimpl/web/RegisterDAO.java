package com.housebooking.DAOimpl.web;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.housebooking.Utils.DBUtils;

public class RegisterDAO {
	public boolean checkUsername(String username) {
		boolean result= true;
		String sql = "select username from Users\r\n"
			+ "where username like ?";

	        
	        try {

	            Connection conn = DBUtils.getConnection();

	            PreparedStatement ps = conn.prepareStatement(sql);

	            ps.setString(1, username);
	            
	            ResultSet rs = ps.executeQuery();
	            
	            if (rs.next() ) {
	            	result= false;
	            }
	            ps.close();
	            conn.close();

	        } catch (Exception ex) {

	            ex.printStackTrace();

	        }
	     return result;
	  }
	
	public boolean checkPassword(String password,String rePassword) {
		boolean result= true;
		
		if(!password.equals(rePassword)) {
			result = false;
		}

	    return result;
	  }
	
	public void createUser(String username,String password) {
		int idNumber = ( Integer.parseInt(getLastestNumberID() ) + 1 );
		String id = "User_" + String.valueOf(idNumber);
		 String sql = "insert into users \r\n"
		 		+ "values(?,Null,Null,?,?,?,Null,Null)";
 
	        try {

	            Connection conn = DBUtils.getConnection();

	            PreparedStatement ps = conn.prepareStatement(sql);
	            ps.setString(1, id);
	            ps.setString(2, "User");
	            ps.setString(3, username);
	            ps.setString(4, password);
	            ps.executeUpdate();
	            
	            
	            
	            ps.close();
	            conn.close();
	            
	           
	        } catch (Exception ex) {

	            ex.printStackTrace();

	        }
	 }
	
	public String getLastestNumberID() {
		 String userIDLastestNumber = null;
	        String sql = "select top 1 user_id from Users\r\n"
	        		+ "order by user_id DESC";
    
	        try {

	            Connection conn = DBUtils.getConnection();

	            PreparedStatement ps = conn.prepareStatement(sql);

	            ResultSet rs = ps.executeQuery();

	            if (rs.next()) {
	            	userIDLastestNumber = (rs.getString("user_id")).substring(5);
	            }
	            
	            System.out.println(userIDLastestNumber);
	            
	            ps.close();
	            conn.close();
	            
	            return userIDLastestNumber;
	        } catch (Exception ex) {

	            ex.printStackTrace();

	        }
	     return "0";
	 }
}
