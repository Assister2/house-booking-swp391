package com.housebooking.Model;

import java.sql.Date;

public class Feedback {
	private String feedbackId;
	private String comment;
	private int rating;
	private String status;
	private Date feedbackDate;
	private int report;
	private String buildingId;
	private User user;
	private String reply;
	
	
	
	public String getBuildingId() {
		return buildingId;
	}
	public void setBuildingId(String buildingId) {
		this.buildingId = buildingId;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public Feedback() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Feedback(String feedbackId, String comment, int rating, String status, Date feedbackDate, int report,
			String buildingId, User user, String reply) {
		super();
		this.feedbackId = feedbackId;
		this.comment = comment;
		this.rating = rating;
		this.status = status;
		this.feedbackDate = feedbackDate;
		this.report = report;
		this.buildingId = buildingId;
		this.user = user;
		this.reply = reply;
	}
	public String getFeedbackId() {
		return feedbackId;
	}
	public void setFeedbackId(String feedbackId) {
		this.feedbackId = feedbackId;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getFeedbackDate() {
		return feedbackDate;
	}
	public void setFeedbackDate(Date feedbackDate) {
		this.feedbackDate = feedbackDate;
	}
	public int getReport() {
		return report;
	}
	public void setReport(int report) {
		this.report = report;
	}

	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
}
