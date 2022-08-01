package com.housebooking.DAOimpl.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.housebooking.Model.Convenient;
import com.housebooking.Model.Service;
import com.housebooking.Utils.DBUtils;

public class ServiceDAO {
	public List<Service> listService(){
		ArrayList<Service> list;
		list = new ArrayList<Service>();

		String sql = " select * from Additional_service ";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Service service = new Service();
				service.setServiceID(rs.getString("add_serviceId"));
				service.setServiceName(rs.getNString("add_serviceName"));
				service.setDescription(rs.getNString("add_serviceDesc"));
				service.setStatus(rs.getString("status"));
				
				list.add(service);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return list;
	}
	
	public boolean DeleteService(String serviceId) {

		String sql = " Delete\r\n"
				+ " From Building_Additional_service\r\n"
				+ " Where add_serviceId = ?\r\n"
				+ " \r\n"
				+ " Delete From Additional_service where add_serviceId = ?";
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, serviceId);
			ps.setString(2, serviceId);

			
			if (ps.executeUpdate() > 0) {
				return true;
			}

		} catch (Exception ex) {
			return false;
		}

		return false;
	}
	
	public boolean AddService(Service service) {

		String sql = " Insert into Additional_service\r\n"
				+ " Values(?,?,?,?)";
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, service.getServiceID());
			ps.setNString(2, service.getServiceName());
			ps.setNString(3, null);
			ps.setString(4, service.getStatus());

			
			if (ps.executeUpdate() > 0) {
				return true;
			}

		} catch (Exception ex) {
			return false;
		}

		return false;
	}
}
