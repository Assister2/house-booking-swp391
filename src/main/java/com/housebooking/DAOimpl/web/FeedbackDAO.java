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
	
	public int Count() {

		int re = 0;
		String sql = " Select count(feedback_id) as count\r\n"
				+ "	 from Feedback ";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				re = rs.getInt("count");
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return re;
	}

	public List<Feedback> list(String buildingId, int start, int end) {
		ArrayList<Feedback> list;
		list = new ArrayList<Feedback>();

		String sql = " Select fb.*, us.user_name, us.avatar\r\n"
				+ " From Feedback fb join Building b on fb.building_id = b.building_id\r\n"
				+ " join Users us on fb.user_id = us.user_id\r\n"
				+ " Where b.building_id like ? AND fb.status like 'on'\r\n"
				+ " Order by fb.feedback_date DESC\r\n"
				+ " OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, buildingId);
			ps.setInt(2, start);
			ps.setInt(3, end);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Feedback feedback = new Feedback();
				
				feedback.setFeedbackId(rs.getString("feedback_id"));
				feedback.setComment(rs.getNString("comment"));
				feedback.setRating(rs.getInt("rating"));
				feedback.setStatus(rs.getString("status"));
				feedback.setFeedbackDate(rs.getDate("feedback_date"));
				feedback.setReport(rs.getInt("report"));
				
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
                + " VALUES(?,?,?,?,?,?,?,?,?)";

        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setString(1, feedback.getFeedbackId());
            ps.setString(2, feedback.getComment());
            ps.setInt(3, feedback.getRating());
            ps.setString(4, feedback.getStatus());
            ps.setDate(5, feedback.getFeedbackDate());
            ps.setInt(6, feedback.getReport());
            ps.setString(7, feedback.getBuildingId());
            ps.setString(8, feedback.getUser().getUserId());
            ps.setString(9, feedback.getReply());
            
            if (ps.executeUpdate()>0) {
                return true;
            }

        } catch (Exception ex) {

            ex.printStackTrace();

        }

        return false;
    }
}
