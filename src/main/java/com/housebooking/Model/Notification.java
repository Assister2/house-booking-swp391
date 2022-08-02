package com.housebooking.Model;

import java.sql.Date;

public class Notification {
	private String id;
	private String userId;
	private Date date;
	private String content;
	private String status;
	private String target;
	private User user;
	private Feedback feedback;
	private Building building;
	private Bill bill;
	
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Feedback getFeedback() {
		return feedback;
	}
	public void setFeedback(Feedback feedback) {
		this.feedback = feedback;
	}
	public Building getBuilding() {
		return building;
	}
	public void setBuilding(Building building) {
		this.building = building;
	}
	public Bill getBill() {
		return bill;
	}
	public void setBill(Bill bill) {
		this.bill = bill;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	public Notification(String id, String userId, Date date, String content, String status, String target) {
		super();
		this.id = id;
		this.userId = userId;
		this.date = date;
		this.content = content;
		this.status = status;
		this.target = target;
	}
	
	public Notification() {
		super();
	}
	
}
