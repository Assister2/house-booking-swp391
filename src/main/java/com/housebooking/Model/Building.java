package com.housebooking.Model;

public class Building {
	private String buildingId;
	private String buildingDesc;
	private String buildingName;
	private String buildingType;
	private String buildingRule;
	private String buildingStatus;
	private String buildingImage;
	//Ko lu, chi load
	private String buildingAddress;
	private String streetId;
	private String userId;
	//Ko lu, chi load
	private int numRoom;
	//Ko lu, chi load
	private float rating;
	private float buildingArea;
	private String buildingDetailInfor;
	private String buildingNumber;
	
	public float getBuildingArea() {
		return buildingArea;
	}
	public void setBuildingArea(float buildingArea) {
		this.buildingArea = buildingArea;
	}
	public String getBuildingDetailInfor() {
		return buildingDetailInfor;
	}
	public void setBuildingDetailInfor(String buildingDetailInfor) {
		this.buildingDetailInfor = buildingDetailInfor;
	}
	public String getBuildingNumber() {
		return buildingNumber;
	}
	public void setBuildingNumber(String buildingNumber) {
		this.buildingNumber = buildingNumber;
	}
	public Building(String buildingId, String buildingDesc, String buildingName, String buildingType,
			String buildingRule, String buildingStatus, String buildingImage, String buildingAddress, String streetId,
			String userId, int numRoom, float rating, float buildingArea, String buildingDetailInfor,
			String buildingNumber) {
		super();
		this.buildingId = buildingId;
		this.buildingDesc = buildingDesc;
		this.buildingName = buildingName;
		this.buildingType = buildingType;
		this.buildingRule = buildingRule;
		this.buildingStatus = buildingStatus;
		this.buildingImage = buildingImage;
		this.buildingAddress = buildingAddress;
		this.streetId = streetId;
		this.userId = userId;
		this.numRoom = numRoom;
		this.rating = rating;
		this.buildingArea = buildingArea;
		this.buildingDetailInfor = buildingDetailInfor;
		this.buildingNumber = buildingNumber;
	}
	public String getBuildingStatus() {
		return buildingStatus;
	}
	public void setBuildingStatus(String buildingStatus) {
		this.buildingStatus = buildingStatus;
	}
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
