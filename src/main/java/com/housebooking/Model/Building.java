package com.housebooking.Model;

public class Building {
	private String buildingId;
	private String buildingDesc;
	private String buildingName;
	private String buildingType;
	private String buildingRule;
	private String buildingImage;
	private String buildingAddress;
	private String streetId;
	private String userId;
	private int numRoom;
	private float rating;
	
	
	public String getBuildingRule() {
		return buildingRule;
	}
	public void setBuildingRule(String buildingRule) {
		this.buildingRule = buildingRule;
	}
	public float getRating() {
		return rating;
	}
	public void setRating(float rating) {
		this.rating = rating;
	}
	public String getBuildingName() {
		return buildingName;
	}
	public void setBuildingName(String buildingName) {
		this.buildingName = buildingName;
	}
	public String getBuildingImage() {
		return buildingImage;
	}
	public void setBuildingImage(String buildingImage) {
		this.buildingImage = buildingImage;
	}
	public Building() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getBuildingId() {
		return buildingId;
	}
	public void setBuildingId(String buildingId) {
		this.buildingId = buildingId;
	}
	public String getBuildingDesc() {
		return buildingDesc;
	}
	public void setBuildingDesc(String buildingDesc) {
		this.buildingDesc = buildingDesc;
	}
	public String getStreetId() {
		return streetId;
	}
	public void setStreetId(String streetId) {
		this.streetId = streetId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getBuildingType() {
		return buildingType;
	}
	public void setBuildingType(String buildingType) {
		this.buildingType = buildingType;
	}
//	public Address getBuildingAddress() {
//		return buildingAddress;
//	}
//	public void setBuildingAddress(Address buildingAddress) {
//		this.buildingAddress = buildingAddress;
//	}
	
	
	public int getNumRoom() {
		return numRoom;
	}
	public String getBuildingAddress() {
		return buildingAddress;
	}
	public void setBuildingAddress(String buildingAddress) {
		this.buildingAddress = buildingAddress;
	}
	public void setNumRoom(int numRoom) {
		this.numRoom = numRoom;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return buildingAddress.toString() ;
	}
}
