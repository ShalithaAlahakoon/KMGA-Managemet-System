package model;

public class Location {
	
	private String locID;
	private String mapLetter;
	private String locDescription;
	private String floorSize;
	
	
	public Location(String locID, String mapLetter, String locDescription, String floorSize) {
		this.locID = locID;
		this.mapLetter = mapLetter;
		this.locDescription = locDescription;
		this.floorSize = floorSize;
	}


	public String getLocID() {
		return locID;
	}


	public String getMapLetter() {
		return mapLetter;
	}


	public String getLocDescription() {
		return locDescription;
	}


	public String getFloorSize() {
		return floorSize;
	}

}
