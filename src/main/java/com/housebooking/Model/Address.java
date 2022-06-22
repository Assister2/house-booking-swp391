package com.housebooking.Model;

public class Address {
	private City city;
	private District district;
	private Street street;
	public City getCity() {
		return city;
	}
	public void setCity(City city) {
		this.city = city;
	}
	public District getDistrict() {
		return district;
	}
	public void setDistrict(District district) {
		this.district = district;
	}
	public Street getStreet() {
		return street;
	}
	public void setStreet(Street street) {
		this.street = street;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		String msg = street.toString()+", " + district.toString() +", "+ city.toString() + "\n";
		return msg;
	}
}
