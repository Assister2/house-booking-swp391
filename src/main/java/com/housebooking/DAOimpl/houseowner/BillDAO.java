package com.housebooking.DAOimpl.houseowner;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.housebooking.Model.Bill;
import com.housebooking.Model.Bill_Detail;
import com.housebooking.Model.Building;
import com.housebooking.Utils.DBUtils;

public class BillDAO {

	public List<Bill_Detail> listBillDetail(String billId) {
		ArrayList<Bill_Detail> list;
		list = new ArrayList<Bill_Detail>();

		String sql = " Select *\r\n" + " From Bill_detail\r\n" + " Where bill_id = ?";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, billId);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Bill_Detail billDetail = new Bill_Detail();
				billDetail.setRoomId(rs.getString("room_id"));
				billDetail.setStartDate(rs.getDate("start_date"));
				billDetail.setEndDate(rs.getDate("end_date"));
				billDetail.setPrice(rs.getDouble("price"));
				billDetail.setNote(rs.getNString("note"));
				billDetail.setExpense(rs.getDouble("expense"));
				list.add(billDetail);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return list;
	}

	public List<Bill> list(String userID) {
		ArrayList<Bill> list;
		list = new ArrayList<Bill>();

		String sql = " Select bi.*\r\n" + " From Building b join Users u on b.user_id = u.user_id\r\n"
				+ "	Join Room r on b.building_id = r.building_id\r\n"
				+ "	Join Bill_detail bd on bd.room_id = r.room_id\r\n" + "	Join Bill bi on bd.bill_id = bi.bill_id\r\n"
				+ " Where u.user_id = ? AND bi.date = CAST( GETDATE() AS Date )";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, userID);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Bill bill = new Bill();
				FillBillData(rs, bill);
				bill.setBillDetail(listBillDetail(bill.getBillID()));
				list.add(bill);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return list;
	}

	private Double TotalIncomeByUser(String userID) {
		double total = 0;

		String sql = " Select sum(bi.total) as Total\r\n" + " From Building b join Users u on b.user_id = u.user_id\r\n"
				+ "	Join Room r on b.building_id = r.building_id\r\n"
				+ "	Join Bill_detail bd on bd.room_id = r.room_id\r\n" + "	Join Bill bi on bd.bill_id = bi.bill_id\r\n"
				+ " Where u.user_id = ? AND b.building_status not like 'Removed'\r\n" + " Group by u.user_id ";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, userID);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				total = rs.getDouble("Total");
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return total;
	}

	public HashMap<String, Double> listPercentByBuilding(String userID) {
		HashMap<String, Double> list = new HashMap<String, Double>();
		Double totalIncome = TotalIncomeByUser(userID);

		String sql = " Select b.building_id , b.building_name, sum(bi.total) as Total\r\n"
				+ " From Building b join Users u on b.user_id = u.user_id\r\n"
				+ "	Join Room r on b.building_id = r.building_id\r\n"
				+ "	Join Bill_detail bd on bd.room_id = r.room_id\r\n" + "	Join Bill bi on bd.bill_id = bi.bill_id\r\n"
				+ " Where u.user_id = ? AND b.building_status not like 'Removed'\r\n"
				+ " Group by b.building_id, b.building_name ";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, userID);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				list.put(rs.getString("building_id"), Math.round((rs.getDouble("Total") / totalIncome * 100.0 )* 10.0)/ 10.0);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return list;
	}

	private void FillBillData(ResultSet rs, Bill bill) throws SQLException {
		bill.setBillID(rs.getString("bill_id"));
		bill.setDate(rs.getDate("date"));
		bill.setTotal(rs.getFloat("total"));
		bill.setStatus(rs.getNString("status"));
		bill.setUserId(rs.getString("user_id"));
	}

//	public static void main(String args[]) {
//		HashMap<String, Double> percent = new HashMap<String, Double>();
//
//	}
}
