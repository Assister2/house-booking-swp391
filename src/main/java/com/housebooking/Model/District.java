package com.housebooking.Model;

public class District {
	private String districtId;
	private String districtName;
	public String getDistrictId() {
		return districtId;
	}
	public void setDistrictId(String districtId) {
		this.districtId = districtId;
	}
	public String getDistrictName() {
		return districtName;
	}
	public void setDistrictName(String districtName) {
		this.districtName = districtName;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return districtName;
	}
}
