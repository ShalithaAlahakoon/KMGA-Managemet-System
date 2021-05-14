package model;

public class Achivement {
	
	private String achivement ;
	private String CmpName ;
	private String venue ;
	private String Date ;
	private String cmpID;
	
	
	

	public Achivement(String achivement, String cmpName, String venue, String date, String cmpID) {
		super();
		this.achivement = achivement;
		CmpName = cmpName;
		this.venue = venue;
		Date = date;
		this.cmpID = cmpID;
	}

	//constructor
	public Achivement(String achivement, String cmp_Name, String venue, String date) {
		super();
		this.achivement = achivement;
		this.CmpName = cmp_Name;
		this.venue = venue;
		this.Date = date;
	}

		//getters
	public String getCmpID() {
		return cmpID;
	}
	
	public String getAchivement() {
		return achivement;
	}

	public String getCmpName() {
		return CmpName;
	}

	public String getVenue() {
		return venue;
	}

	public String getDate() {
		return Date;
	}
	
	
	
	

}
