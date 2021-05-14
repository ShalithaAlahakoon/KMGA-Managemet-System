package model;

public class Athlete {
	
	private String athleteID;
	private String fullName;
	private String Dob;
	private String gender;
	private String Address;
	private String Height;
	private String weight;
	private String SLSGARegistrationNo;
	private String NIC;
	private String psd;
//	private String []phone;
//	private String []injuries;
	
	
	
	//constructor
	public Athlete(String athleteID, String fullName, String dob, String gender, String address, String height,
			String weight, String sLSGARegistrationNo, String nIC, String psd) {
		super();
		this.athleteID = athleteID;
		this.fullName = fullName;
		Dob = dob;
		this.gender = gender;
		Address = address;
		Height = height;
		this.weight = weight;
		SLSGARegistrationNo = sLSGARegistrationNo;
		NIC = nIC;
		this.psd = psd;
	}
	
	//getters

	

	public String getAthleteID() {
		return athleteID;
	}


	public String getFullName() {
		return fullName;
	}

	public String getDob() {
		return Dob;
	}

	public String getGender() {
		return gender;
	}

	public String getAddress() {
		return Address;
	}

	public String getHeight() {
		return Height;
	}

	public String getWeight() {
		return weight;
	}

	public String getSLSGARegistrationNo() {
		return SLSGARegistrationNo;
	}

	public String getNIC() {
		return NIC;
	}

	public String getPsd() {
		return psd;
	}
	
	//setters
	
	public void setAthleteID(String athleteID) {
		this.athleteID = athleteID;
	}
	

}
