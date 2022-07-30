package com.housebooking.DAOimpl.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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
				
				list.add(service);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return list;
	}
}
