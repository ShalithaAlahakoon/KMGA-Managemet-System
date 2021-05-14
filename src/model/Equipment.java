package model;

public class Equipment {

	
	private String eqID;
	private String eqName;
	private String eqDescription;
	private String qty;
	private String owner;
	private String width;
	private String height;
	private String length;
	
	
	//constructor
	public Equipment(String eqID, String eqName,String eqDescription, String qty, String owner, String width, String height,
			String length) {
		this.eqID = eqID;
		this.eqName = eqName;
		this.eqDescription = eqDescription;
		this.qty = qty;
		this.owner=owner;
		this.width = width;
		this.height = height;
		this.length = length;
	}

	

	//getters
	public String getEqID() {
		return eqID;
	}


	public String getEqName() {
		return eqName;
	}


	public String getEqDescription() {
		return eqDescription;
	}


	public String getQty() {
		return qty;
	}


	public String getOwner() {
		return owner;
	}


	public String getWidth() {
		return width;
	}


	public String getHeight() {
		return height;
	}


	public String getLength() {
		return length;
	}



}
