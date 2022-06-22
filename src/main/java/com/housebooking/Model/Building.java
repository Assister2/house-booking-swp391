package com.housebooking.Model;

public class Building {
	private String buildingId;
	private String buildingDesc;
	private String buildingType;
	private Address buildingAddress;
	private String streetId;
	private String userId;
	private int numRoom;
	
	
	
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
	public Address getBuildingAddress() {
		return buildingAddress;
	}
	public void setBuildingAddress(Address buildingAddress) {
		this.buildingAddress = buildingAddress;
	}
	public int getNumRoom() {
		return numRoom;
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
