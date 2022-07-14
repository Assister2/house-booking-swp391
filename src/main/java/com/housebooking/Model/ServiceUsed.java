package com.housebooking.Model;

public class ServiceUsed {
	private String serviceId;
	private String serviceName;
	private float price;
	private int amount;
	public String getServiceId() {
		return serviceId;
	}
	public String getServiceName() {
		return serviceName;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	public void setServiceId(String serviceId) {
		this.serviceId = serviceId;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
}
