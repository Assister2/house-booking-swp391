package com.housebooking.DAOimpl.web;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.housebooking.Model.Feedback;
import com.housebooking.Model.User;
import com.housebooking.Utils.DBUtils;

public class FeedbackDAO {

	public List<Feedback> list(String roomId) {
		ArrayList<Feedback> list;
		list = new ArrayList<Feedback>();

		String sql = "Select fb.*, us.user_name, us.avatar\r\n"
				+ " From Feedback fb join Room r on fb.room_id = r.room_id\r\n"
				+ "	join Users us on fb.user_id = us.user_id\r\n"
				+ " Where r.room_id like ? AND fb.status like 'on'\r\n"
				+ " Order by fb.feedback_id DESC\r\n"
				+ " OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, roomId);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Feedback feedback = new Feedback();
				
				feedback.setFeedbackId(rs.getString("feedback_id"));
				feedback.setComment(rs.getNString("comment"));
				feedback.setRating(rs.getInt("rating"));
				feedback.setStatus(rs.getString("status"));
				feedback.setFeedbackDate(rs.getDate("feedback_date"));
				feedback.setReport(rs.getInt("report"));
				feedback.setRoom_id(rs.getString("room_id"));
				
				User user = new User();				 
				user.setUserId(rs.getString("user_id"));
				user.setName(rs.getNString("user_name"));
				user.setAvatar(rs.getString("avatar"));
				
				feedback.setUser(user);
				
				list.add(feedback);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return list;
	}
	
	 public boolean add(Feedback feedback) {
         String sql = "INSERT INTO Feedback "
                + " VALUES(?,?,?,?,?,?,?,?)";

        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setString(1, feedback.getFeedbackId());
            ps.setString(2, feedback.getComment());
            ps.setInt(3, feedback.getRating());
            ps.setString(4, feedback.getStatus());
            ps.setDate(5, feedback.getFeedbackDate());
            ps.setInt(6, feedback.getReport());
            ps.setString(7, feedback.getRoom_id());
            ps.setString(8, feedback.getUser().getUserId());

            if (ps.executeUpdate()>0) {
                return true;
            }

        } catch (Exception ex) {

            ex.printStackTrace();

        }

        return false;
    }
}
