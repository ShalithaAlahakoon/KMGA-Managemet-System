package model;

public class Competition {
	
	private String cmpId;
	private String cmpName;
	private String date;
	private String time;
	private String venue;
	
	
	public Competition(String cmpId, String cmpName, String date, String time, String venue) {
		super();
		this.cmpId = cmpId;
		this.cmpName = cmpName;
		this.date = date;
		this.time = time;
		this.venue = venue;
	}

	
		public String getCmpId() {
		return cmpId;
	}


	public String getCmpName() {
		return cmpName;
	}


	public String getDate() {
		return date;
	}


	public String getTime() {
		return time;
	}


	public String getVenue() {
		return venue;
	}

}
	