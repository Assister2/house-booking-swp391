package com.housebooking.DAOimpl.houseowner;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.housebooking.Model.TypeOfRoom;
import com.housebooking.Utils.DBUtils;

public class TypeOfRoomDAO {

	public List<TypeOfRoom> list() {
		ArrayList<TypeOfRoom> list;
		list = new ArrayList<TypeOfRoom>();

		String sql = "select * from Type_Of_Room";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				TypeOfRoom typeOfRoom = new TypeOfRoom();
				typeOfRoom.setTypeId(rs.getString("type_id"));
				typeOfRoom.setTypeName(rs.getNString("type_name"));
				list.add(typeOfRoom);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}
		
		return list;
	}
	
}
