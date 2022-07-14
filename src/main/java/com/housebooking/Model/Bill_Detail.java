package com.housebooking.Model;

import java.sql.Date;

public class Bill_Detail {
	private String roomId;
	private Date startDate;
	private Date endDate;
	private double price;
	private String note;
	private double expense;
	private Room room;
	
	public Room getRoom() {
		return room;
	}
	public void setRoom(Room room) {
		this.room = room;
	}
	public String getRoomId() {
		return roomId;
	}
	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date enðate) {
		this.endDate = enðate;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public double getExpense() {
		return expense;
	}
	public void setExpense(double expense) {
		this.expense = expense;
	}
	public Bill_Detail(String roomId, Date startDate, Date endDate, double price, String note, double expense) {
		super();
		this.roomId = roomId;
		this.startDate = startDate;
		this.endDate = endDate;
		this.price = price;
		this.note = note;
		this.expense = expense;
	}
	public Bill_Detail() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
