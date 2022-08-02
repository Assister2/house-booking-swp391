package com.housebooking.DAOimpl.web;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.housebooking.DAOimpl.admin.BuildingDAO;
import com.housebooking.DAOimpl.houseowner.BillDAO;
import com.housebooking.Model.Feedback;
import com.housebooking.Model.Notification;
import com.housebooking.Utils.DBUtils;

public class NotificationDAO {
	public List<Notification> list(String userId) {
		ArrayList<Notification> list;
		list = new ArrayList<Notification>();

		String sql = " Select *\r\n"
				+ " From Notification\r\n"
				+ " Where user_id = ? ANd status = 'unseen'";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, userId);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Notification notification = new Notification();
				notification.setId(rs.getString("NotificationID"));
				notification.setUserId(rs.getString("user_id"));
				notification.setDate(rs.getDate("date"));
				notification.setContent(rs.getNString("content"));;
				notification.setTarget(rs.getString("target"));
				notification.setStatus(rs.getString("status"));
				list.add(notification);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}
		ExtraNotificationInfor(list);
		return list;
	}
	
	private void ExtraNotificationInfor(List<Notification> list) {
		UserDAO userDAO = new UserDAO();
		FeedbackDAO feedbackDAO = new FeedbackDAO();
		BuildingDAO buildingDAO = new BuildingDAO();
		BillDAO billDAO = new BillDAO();
		
		for(Notification item: list) {
			item.setUser(userDAO.find(item.getUserId()));
			if(item.getContent().contains("Bình luận")) {
				item.setFeedback(feedbackDAO.find(item.getTarget()));
			}
			else if(item.getContent().contains("report")){
				item.setBuilding(buildingDAO.Find(item.getTarget()));
			}
			else if (item.getContent().contains("Yêu cầu đặt phòng")) {
				item.setBill(billDAO.Find(item.getTarget()));
			}
		}
		
	}
	
	public boolean Seen(String id) {
		
		String sql = " Update Notification\r\n"
				+ " Set status = 'seen'\r\n"
				+ " Where NotificationID = ? ";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			if(ps.executeUpdate() > 0) {
				return true;
			}

		} catch (Exception ex) {

			return false;

		}

		return false;
	}
	
	public boolean add(Notification notification) {
        String sql = " Insert into Notification\r\n"
        		+ " Values(?,?,?,?,?,?)";

       try {

           Connection conn = DBUtils.getConnection();

           PreparedStatement ps = conn.prepareStatement(sql);
           
           ps.setString(1, notification.getId());
           ps.setString(2, notification.getUserId());
           ps.setDate(3, notification.getDate());
           ps.setNString(4, notification.getContent());
           ps.setString(5,notification.getStatus());
           ps.setString(6, notification.getTarget());
           
           if (ps.executeUpdate()>0) {
               return true;
           }

       } catch (Exception ex) {

           ex.printStackTrace();

       }

       return false;
   }
	
	public int Count() {

		int re = 0;
		String sql = " Select count(NotificationID) as count\r\n"
				+ "From Notification ";

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
}
