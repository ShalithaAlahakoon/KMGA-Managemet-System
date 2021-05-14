package model;

public class Attendance {

	String aID;
	String name;
	String inTime;
	String outTime;
	String date;
	public Attendance(String aID, String name, String inTime, String outTime, String date) {
		super();
		this.aID = aID;
		this.name = name;
		this.inTime = inTime;
		this.outTime = outTime;
		this.date = date;
	}
	public String getaID() {
		return aID;
	}
	public String getName() {
		return name;
	}
	public String getInTime() {
		return inTime;
	}
	public String getOutTime() {
		return outTime;
	}
	public String getDate() {
		return date;
	}
	
	
	
}
