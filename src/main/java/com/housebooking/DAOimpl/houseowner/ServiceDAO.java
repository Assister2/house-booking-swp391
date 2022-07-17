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
	
	public boolean AddServiceUsed(String serviceId, String roomId, String billId, float price, int amount) {

		String sql = " Insert into ServiceUsed\r\n"
				+ " Values(?,?,?,?,?)";
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, serviceId);
			ps.setString(2, roomId);
			ps.setString(3, billId);
			ps.setFloat(4, price);
			ps.setInt(5, amount);
			
			if (ps.executeUpdate() > 0) {
				return true;
			}

		} catch (Exception ex) {
			return false;
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
	
	public boolean DeleteServiceUsed(String serviceId, String roomId, String billId) {

		String sql = " Delete from ServiceUsed where add_serviceId = ? AND room_id = ? AND bill_id = ?";
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, serviceId);
			ps.setString(2, roomId);
			ps.setString(3, billId);
			
			if (ps.executeUpdate() > 0) {
				return true;
			}

		} catch (Exception ex) {
			return false;
		}

		return false;
	}
	
	private Service Find(String serviceId) {
		Service service = null;
		String sql = " Select * from Additional_service Where add_serviceId = ?";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, serviceId);
			
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				service = new Service();
				service.setServiceName(rs.getString("add_serviceName"));
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return service;
	}
	
	public Service FindInABuilding(String serviceId, String buildingId) {
		Service service = null;
		String sql = " Select * from Additional_service ad left join Building_Additional_service bas on ad.add_serviceId = bas.add_serviceId\r\n"
				+ "Where ad.add_serviceId = ? and bas.building_id = ? ";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, serviceId);
			ps.setString(2, buildingId);
			
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				service = new Service();
				service.setServiceName(rs.getString("add_serviceName"));
				service.setPrice(rs.getInt("add_service_price"));
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return service;
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
				serviceUsed.setServiceName(Find(rs.getString("add_serviceId")).getServiceName());
				list.add(serviceUsed);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return list;
	}
	
	public List<Service> listService(String buildingId){
		ArrayList<Service> list;
		list = new ArrayList<Service>();

		String sql = " Select bas.*, ad.add_serviceName\r\n"
				+ " From Building_Additional_service bas join Additional_service ad on bas.add_serviceId = ad.add_serviceId\r\n"
				+ " Where bas.building_id = ? and bas.add_service_status = 1";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, buildingId);
			
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Service service = new Service();
				service.setBuildingID(rs.getString("building_id"));
				service.setServiceID(rs.getString("add_serviceId"));
				service.setServiceName(rs.getString("add_serviceName"));
				service.setPrice(rs.getInt("add_service_price"));
				list.add(service);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return list;
	}
}
