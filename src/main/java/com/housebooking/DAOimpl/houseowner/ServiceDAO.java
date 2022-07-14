package com.housebooking.DAOimpl.houseowner;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.housebooking.Model.Building;
import com.housebooking.Model.Service;
import com.housebooking.Model.ServiceUsed;
import com.housebooking.Utils.DBUtils;

public class ServiceDAO {
	public boolean AddNewBuildingService(Service service) {

		String sql = "Insert into Building_Additional_service \r\n" 
		+ " Values(?,?,?,?) ";
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, service.getBuildingID());
			ps.setString(2, service.getServiceID());
			ps.setInt(3, 1);
			ps.setFloat(4, service.getPrice());

			if (ps.executeUpdate() > 0) {
				return true;
			}

		} catch (Exception ex) {

		}

		return false;
	}
	
	public boolean UpdateBuildingService(Service service) {

		String sql = " UPDATE Building_Additional_service\r\n"
				+ " SET add_service_price = ? \r\n"
				+ " WHERE add_serviceId like ? AND building_id like ?";
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setFloat(1, service.getPrice());
			ps.setString(2, service.getServiceID());
			ps.setString(3, service.getBuildingID());

			if (ps.executeUpdate() > 0) {
				return true;
			}

		} catch (Exception ex) {

		}

		return false;
	}
	
	public boolean DeleteBuildingService(Service service) {

		String sql = " DELETE FROM Building_Additional_service WHERE building_id like ? AND add_serviceId like ?";
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, service.getBuildingID());
			ps.setString(2, service.getServiceID());
			
			if (ps.executeUpdate() > 0) {
				return true;
			}

		} catch (Exception ex) {

		}

		return false;
	}
	
	public List<ServiceUsed> listServiceUsed(String billId, String roomId){
		ArrayList<ServiceUsed> list;
		list = new ArrayList<ServiceUsed>();

		String sql = " Select *\r\n"
				+ " From ServiceUsed\r\n"
				+ " Where bill_id = ? AND room_id = ?";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, billId);
			ps.setString(2, roomId);
			
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				ServiceUsed serviceUsed = new ServiceUsed();
				serviceUsed.setServiceId(rs.getString("add_serviceId"));
				serviceUsed.setAmount(rs.getInt("amount"));
				serviceUsed.setPrice(rs.getFloat("price"));
				list.add(serviceUsed);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return list;
	}
}
