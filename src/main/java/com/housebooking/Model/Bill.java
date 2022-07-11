package com.housebooking.Model;

import java.sql.Date;
import java.util.List;

public class Bill {
	private String billID;
	private Date date;
	private double total;
	private String status;
	private String userId;
	private List<Bill_Detail> billDetail;
	
	public List<Bill_Detail> getBillDetail() {
		return billDetail;
	}
	public void setBillDetail(List<Bill_Detail> billDetail) {
		this.billDetail = billDetail;
	}
	public String getBillID() {
		return billID;
	}
	public void setBillID(String billID) {
		this.billID = billID;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Bill(String billID, Date date, double total, String status, String userId) {
		super();
		this.billID = billID;
		this.date = date;
		this.total = total;
		this.status = status;
		this.userId = userId;
	}
	public Bill() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
