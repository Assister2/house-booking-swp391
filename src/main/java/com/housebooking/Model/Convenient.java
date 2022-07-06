package com.housebooking.Model;

public class Convenient {
	private String buildingID;
	private String conveId;
	private String conveName;
	public String getConveId() {
		return conveId;
	}
	
	public Convenient() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Convenient(String buildingID, String conveId, String conveName) {
		super();
		this.buildingID = buildingID;
		this.conveId = conveId;
		this.conveName = conveName;
	}
	public void setConveId(String conveId) {
		this.conveId = conveId;
	}
	public String getConveName() {
		return conveName;
	}
	public void setConveName(String conveName) {
		this.conveName = conveName;
	}
	public String getBuildingID() {
		return buildingID;
	}
	public void setBuildingID(String buildingID) {
		this.buildingID = buildingID;
	}
}