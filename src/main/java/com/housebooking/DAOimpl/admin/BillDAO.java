package com.housebooking.DAOimpl.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.housebooking.Utils.DBUtils;

public class BillDAO {
	public int TotalBill() {

		int re = 0;
		String sql = " Select COUNT(b.bill_id) as total\r\n"
				+ " From Bill b\r\n"
				+ " Where b.status not like N'Đã hủy'";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				re = rs.getInt("total");
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return re;
	}
}
