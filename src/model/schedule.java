package model;

public class schedule {
	
	private String idschedule;
	private String athleteId;
	private String date;
	private String day;
	private String time;
	private String description;
	
	
	
	public schedule(String idschedule, String athleteId, String date, String day, String time, String description) {
		
		this.idschedule = idschedule;
		this.athleteId = athleteId;
		this.date = date;
		this.day = day;
		this.time = time;
		this.description = description;
	}

	public String getIdschedule() {
		return idschedule;
	}

	public String getathleteId() {
		return athleteId;
	}

	public String getDate() {
		return date;
	}

	public String getDay() {
		return day;
	}

	public String getTime() {
		return time;
	}

	public String getDescription() {
		return description;
	}

}
