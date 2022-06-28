package com.housebooking.Model;

public class Service {
	private String buildingID;
	private String serviceID;
	private String serviceName;
	private int price;
	public Service() {
	}
	public String getServiceName() {
		return serviceName;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public void setBuildingID(String buildingID) {
		this.buildingID = buildingID;
	}
	public String getBuildingID() {
		return buildingID;
	}
	public String getServiceID() {
		return serviceID;
	}
	public void setServiceID(String serviceID) {
		this.serviceID = serviceID;
	}
}