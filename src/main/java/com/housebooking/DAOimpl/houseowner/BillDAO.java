package com.housebooking.DAOimpl.houseowner;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

import com.housebooking.Model.Bill;
import com.housebooking.Model.Bill_Detail;
import com.housebooking.Utils.DBUtils;

public class BillDAO {
	
	public Bill Find(String billId) {
		Bill bill = null;

		String sql = " Select * From Bill Where bill_id = ? ";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, billId);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				bill = new Bill();
				FillBillData(rs, bill);
				bill.setBillDetail(listBillDetail(bill.getBillID()));
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return bill;
	}

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
				billDetail.setRoom(new RoomDAO().Find(rs.getString("room_id")));
				list.add(billDetail);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return list;
	}

	public List<Bill> GetAll(String userID, int start, int end, String properties, String detailProperties) {
		ArrayList<Bill> list;
		list = new ArrayList<Bill>();

		String sql = " Select bi.*\r\n" + " From Building b join Users u on b.user_id = u.user_id\r\n"
				+ " Join Room r on b.building_id = r.building_id\r\n"
				+ " Join Bill_detail bd on bd.room_id = r.room_id\r\n" + " Join Bill bi on bd.bill_id = bi.bill_id\r\n"
				+ " Where u.user_id = ? AND b.building_status not like 'Removed' AND bi.status not like N'%Đã thanh toán%'";

		if (properties.equalsIgnoreCase("Theo ngày")) {
			switch (detailProperties) {
			case "Hôm nay":
				sql += " AND bi.date >= CAST(GETDATE() as date) ";
				break;
			case "Tháng này": 
				sql += " AND bi.date >= CAST(DATEADD(mm, DATEDIFF(mm, 1, CAST(DATEADD(month, 0, GETDATE()) as date)), 0) as date)";
				break;
			case "Tuần này": 
				sql += " AND DATEPART(WEEK, bi.date) >= DATEPART(WEEK,CAST(GETDATE() as date))";
				break;
			default:
				break;
			}
		} else if (properties.equalsIgnoreCase("Theo trạng thái")) {
			switch (detailProperties) {
			case "Chờ xác nhận":
				sql += " AND bi.status like N'%Chờ xác nhận%' ";
				break;
			case "Đã xác nhận": 
				sql +=  " AND bi.status like N'%Đã xác nhận%' ";
				break;
			case "Đã thanh toán": 
				sql +=  " AND bi.status like N'%Đã thanh toán%' ";
				break;
			default:
				break;
			}
		} else if (properties.equalsIgnoreCase("Theo nhà")) {
			sql += " AND b.building_id like " + detailProperties;
		}

		if (start != -1 && end != -1) {
			sql += " Order by bi.bill_id ASC\r\n" + " OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
		}
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, userID);
			if (start != -1 && end != -1) {
				ps.setInt(2, start);
				ps.setInt(3, end);
			}
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
	
	public List<Bill> GetAllButNotDenied(String userID, int start, int end, String properties, String detailProperties) {
		ArrayList<Bill> list;
		list = new ArrayList<Bill>();

		String sql = " Select bi.*\r\n" + " From Building b join Users u on b.user_id = u.user_id\r\n"
				+ " Join Room r on b.building_id = r.building_id\r\n"
				+ " Join Bill_detail bd on bd.room_id = r.room_id\r\n" + " Join Bill bi on bd.bill_id = bi.bill_id\r\n"
				+ " Where u.user_id = ? AND b.building_status not like 'Removed' AND (bi.status like N'%Đã xác nhận%' OR bi.status like N'%Đã thanh toán%')";

		if (properties.equalsIgnoreCase("Theo ngày")) {
			switch (detailProperties) {
			case "Hôm nay":
				sql += " AND bi.date >= CAST(GETDATE() as date) ";
				break;
			case "Tháng này": 
				sql += " AND bi.date >= CAST(DATEADD(mm, DATEDIFF(mm, 1, CAST(DATEADD(month, 0, GETDATE()) as date)), 0) as date)";
				break;
			case "Tuần này": 
				sql += " AND DATEPART(WEEK, bi.date) >= DATEPART(WEEK,CAST(GETDATE() as date))";
				break;
			default:
				break;
			}
		} else if (properties.equalsIgnoreCase("Theo trạng thái")) {
			switch (detailProperties) {
			case "Chờ xác nhận":
				sql += " AND bi.status like N'%Chờ xác nhận%' ";
				break;
			case "Đã xác nhận": 
				sql +=  " AND bi.status like N'%Đã xác nhận%' ";
				break;
			case "Đã thanh toán": 
				sql +=  " AND bi.status like N'%Đã thanh toán%' ";
				break;
			default:
				break;
			}
		} else if (properties.equalsIgnoreCase("Theo nhà")) {
			sql += " AND b.building_id like " + detailProperties;
		}

		if (start != -1 && end != -1) {
			sql += " Order by bi.bill_id ASC\r\n" + " OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
		}
		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, userID);
			if (start != -1 && end != -1) {
				ps.setInt(2, start);
				ps.setInt(3, end);
			}
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
	
	public boolean Approve(String billId) {

		String sql = " Update Bill\r\n"
				+ " SET status = N'Đã xác nhận'\r\n"
				+ " Where bill_id = ? ";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, billId);
			if(ps.executeUpdate() > 0) {
				return true;
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return false;
	}
	
	public boolean SavePaidBill(String billId, float total) {

		String sql = " Update Bill\r\n"
				+ " SET status = N'Đã thanh toán', total = ?\r\n"
				+ " Where bill_id = ? ";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setFloat(1, total);
			ps.setString(2, billId);
			if(ps.executeUpdate() > 0) {
				return true;
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return false;
	}
	
	public boolean Deny(String billId) {

		String sql = " Update Bill\r\n"
				+ " SET status = N'Đã từ chối'\r\n"
				+ " Where bill_id = ? ";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, billId);
			if(ps.executeUpdate() > 0) {
				return true;
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return false;
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
				list.put(rs.getString("building_id"),
						Math.round((rs.getDouble("Total") / totalIncome * 100.0) * 10.0) / 10.0);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return list;
	}

	public List<Integer> getBillInThisWeek(String userID) {
		List<Integer> result = new ArrayList<Integer>();
		for (int i = 0; i < 7; i++) {
			result.add(i, 0);
		}
		String sql = "Select count(bi.bill_id) as AmountBill, DATENAME(WEEKDAY, bi.date) as datename\r\n"
				+ "From Building b join Users u on b.user_id = u.user_id\r\n"
				+ "	Join Room r on b.building_id = r.building_id\r\n"
				+ "	Join Bill_detail bd on bd.room_id = r.room_id\r\n"
				+ "	Join Bill bi on bd.bill_id = bi.bill_id\r\n"
				+ "Where u.user_id = ? AND DATEPART(DAYOFYEAR, bi.date) >= DATEPART(DAYOFYEAR,CAST( DATEADD(dd,  0, DATEADD(ww, DATEDIFF(ww, 0, DATEADD(dd, -1, GETDATE())) , 0)) AS Date)) \r\n"
				+ "AND DATEPART(DAYOFYEAR, bi.date) <= DATEPART(DAYOFYEAR,CAST( DATEADD(dd,  6, DATEADD(ww, DATEDIFF(ww, 0, DATEADD(dd, -1, GETDATE())) , 0)) AS Date)) \r\n"
				+ "Group by DATENAME(WEEKDAY, bi.date)";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, userID);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				switch (rs.getString("datename")) {
				case "Monday":
					result.set(0, rs.getInt("AmountBill"));
					break;
				case "Tuesday":
					result.set(1, rs.getInt("AmountBill"));
					break;
				case "Wednesday":
					result.set(2, rs.getInt("AmountBill"));
					break;
				case "Thursday":
					result.set(3, rs.getInt("AmountBill"));
					break;
				case "Friday":
					result.set(4, rs.getInt("AmountBill"));
					break;
				case "Saturday":
					result.set(5, rs.getInt("AmountBill"));
					break;
				case "Sunday":
					result.set(6, rs.getInt("AmountBill"));
					break;
				}
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return result;
	}

	public List<Integer> getBillInLastWeek(String userID) {
		List<Integer> result = new ArrayList<Integer>();
		for (int i = 0; i < 7; i++) {
			result.add(i, 0);
		}
		String sql = "Select count(bi.bill_id) as AmountBill, DATENAME(WEEKDAY, bi.date) as datename\r\n"
				+ "From Building b join Users u on b.user_id = u.user_id\r\n"
				+ "	Join Room r on b.building_id = r.building_id\r\n"
				+ "	Join Bill_detail bd on bd.room_id = r.room_id\r\n"
				+ "	Join Bill bi on bd.bill_id = bi.bill_id\r\n"
				+ "Where u.user_id = ? AND DATEPART(DAYOFYEAR, bi.date) >= DATEPART(DAYOFYEAR,CAST( DATEADD(dd,  0, DATEADD(ww, DATEDIFF(ww, 0, DATEADD(dd, -1, GETDATE())) -1, 0)) AS Date)) \r\n"
				+ "AND DATEPART(DAYOFYEAR, bi.date) <= DATEPART(DAYOFYEAR,CAST( DATEADD(dd,  6, DATEADD(ww, DATEDIFF(ww, 0, DATEADD(dd, -1, GETDATE())) -1, 0)) AS Date)) \r\n"
				+ "Group by DATENAME(WEEKDAY, bi.date)";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, userID);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				switch (rs.getString("datename")) {
				case "Monday":
					result.set(0, rs.getInt("AmountBill"));
					break;
				case "Tuesday":
					result.set(1, rs.getInt("AmountBill"));
					break;
				case "Wednesday":
					result.set(2, rs.getInt("AmountBill"));
					break;
				case "Thursday":
					result.set(3, rs.getInt("AmountBill"));
					break;
				case "Friday":
					result.set(4, rs.getInt("AmountBill"));
					break;
				case "Saturday":
					result.set(5, rs.getInt("AmountBill"));
					break;
				case "Sunday":
					result.set(6, rs.getInt("AmountBill"));
					break;
				}
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return result;
	}
	
	public List<Integer> getBill2WeeksAgo(String userID) {
		List<Integer> result = new ArrayList<Integer>();
		for (int i = 0; i < 7; i++) {
			result.add(i, 0);
		}
		String sql = "Select count(bi.bill_id) as AmountBill, DATENAME(WEEKDAY, bi.date) as datename\r\n"
				+ "From Building b join Users u on b.user_id = u.user_id\r\n"
				+ "	Join Room r on b.building_id = r.building_id\r\n"
				+ "	Join Bill_detail bd on bd.room_id = r.room_id\r\n"
				+ "	Join Bill bi on bd.bill_id = bi.bill_id\r\n"
				+ "Where u.user_id = ? AND DATEPART(DAYOFYEAR, bi.date) >= DATEPART(DAYOFYEAR,CAST( DATEADD(dd,  0, DATEADD(ww, DATEDIFF(ww, 0, DATEADD(dd, -1, GETDATE())) -2, 0)) AS Date)) \r\n"
				+ "AND DATEPART(DAYOFYEAR, bi.date) <= DATEPART(DAYOFYEAR,CAST( DATEADD(dd,  6, DATEADD(ww, DATEDIFF(ww, 0, DATEADD(dd, -1, GETDATE())) -2, 0)) AS Date)) \r\n"
				+ "Group by DATENAME(WEEKDAY, bi.date)";


		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, userID);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				switch (rs.getString("datename")) {
				case "Monday":
					result.set(0, rs.getInt("AmountBill"));
					break;
				case "Tuesday":
					result.set(1, rs.getInt("AmountBill"));
					break;
				case "Wednesday":
					result.set(2, rs.getInt("AmountBill"));
					break;
				case "Thursday":
					result.set(3, rs.getInt("AmountBill"));
					break;
				case "Friday":
					result.set(4, rs.getInt("AmountBill"));
					break;
				case "Saturday":
					result.set(5, rs.getInt("AmountBill"));
					break;
				case "Sunday":
					result.set(6, rs.getInt("AmountBill"));
					break;
				}
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return result;
	}
	
	
	public LinkedHashMap<String, Integer> getLast12MonthBillAmount(String userID) {
		LinkedHashMap<String, Integer> result = new LinkedHashMap<String, Integer>();
		
		
		String sql = "Select count(bi.bill_id) as totalRequestLast12Month, DATENAME(MONTH, bi.date) as month\r\n"
				+ "From Building b join Users u on b.user_id = u.user_id\r\n"
				+ "	Join Room r on b.building_id = r.building_id\r\n"
				+ "	Join Bill_detail bd on bd.room_id = r.room_id\r\n"
				+ "	Join Bill bi on bd.bill_id = bi.bill_id\r\n"
				+ "Where u.user_id = ? \r\n"
				+ "AND bi.date >= CAST(DATEADD(mm, DATEDIFF(mm, 1, CAST(DATEADD(month, -11, GETDATE()) as date)), 0) as date)\r\n"
				+ "AND bi.date <= CAST( GETDATE() AS Date ) AND b.building_status not like 'Removed'\r\n"
				+ "GROUP BY Year(bi.date), MONTH(bi.date), u.user_id, DATENAME(MONTH, bi.date)\r\n"
				+ "Order by Year(bi.date) asc";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, userID);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				result.put(rs.getString("month"),rs.getInt("totalRequestLast12Month"));
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return result;
	}
	
	public LinkedHashMap<String, Integer> getLast12MonthBillTotal(String userID) {
		LinkedHashMap<String, Integer> result = new LinkedHashMap<String, Integer>();
		
		
		String sql = "Select sum(bi.total) as totalBillLast12Month, DATENAME(MONTH, bi.date) as month\r\n"
				+ "From Building b join Users u on b.user_id = u.user_id\r\n"
				+ "	Join Room r on b.building_id = r.building_id\r\n"
				+ "	Join Bill_detail bd on bd.room_id = r.room_id\r\n"
				+ "	Join Bill bi on bd.bill_id = bi.bill_id\r\n"
				+ "Where u.user_id = ? \r\n"
				+ "AND bi.date >= CAST(DATEADD(mm, DATEDIFF(mm, 1, CAST(DATEADD(month, -11, GETDATE()) as date)), 0) as date)\r\n"
				+ "AND bi.date <= CAST( GETDATE() AS Date ) AND b.building_status not like 'Removed'\r\n"
				+ "GROUP BY Year(bi.date), MONTH(bi.date), u.user_id, DATENAME(MONTH, bi.date)\r\n"
				+ "Order by Year(bi.date) asc";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, userID);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				result.put(rs.getString("month"),rs.getInt("totalBillLast12Month"));
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return result;
	}
	private void FillBillData(ResultSet rs, Bill bill) throws SQLException {
		bill.setBillID(rs.getString("bill_id"));
		bill.setDate(rs.getDate("date"));
		bill.setTotal(rs.getFloat("total"));
		bill.setStatus(rs.getNString("status"));
		bill.setUserId(rs.getString("user_id"));
	}

//	public static void main(String args[]) {
//		
//	}
}
