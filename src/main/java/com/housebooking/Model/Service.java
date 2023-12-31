package com.housebooking.Model;

public class Service {
	private String buildingID;
	private String serviceID;
	private String serviceName;
	private float price;
	private String description;
	private String status;
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Service() {
	}
	public Service(String buildingID, String serviceID, String serviceName, float price) {
		super();
		this.buildingID = buildingID;
		this.serviceID = serviceID;
		this.serviceName = serviceName;
		this.price = price;
	}
	public String getServiceName() {
		return serviceName;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
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