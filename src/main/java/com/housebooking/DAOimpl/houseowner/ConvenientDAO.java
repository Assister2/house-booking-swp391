package com.housebooking.DAOimpl.houseowner;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.housebooking.Model.Convenient;
import com.housebooking.Model.Service;
import com.housebooking.Utils.DBUtils;

public class ConvenientDAO {

	public boolean AddNewBuildingConvenient(Convenient convenient) {

		String sql = "Insert into Building_Convenient\r\n"
				+ " Values(?,?)";
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, convenient.getBuildingID());
			ps.setString(2, convenient.getConveId());

			if (ps.executeUpdate() > 0) {
				return true;
			}

		} catch (Exception ex) {

		}

		return false;
	}
	
	public boolean DeleteBuildingConvenient(Convenient convenient) {

		String sql = " DELETE FROM Building_Convenient WHERE building_id like ? AND convenient_id like ?";
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, convenient.getBuildingID());
			ps.setString(2, convenient.getConveId());

			
			if (ps.executeUpdate() > 0) {
				return true;
			}

		} catch (Exception ex) {

		}

		return false;
	}
}
