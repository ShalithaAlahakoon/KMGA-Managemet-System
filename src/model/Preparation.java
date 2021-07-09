package model;

public class Preparation {
	
	private String preparationID;
	private String preparationName;
	private int set;
	private int reps;
	
	public Preparation(String preparationID, String preparationName, int set, int reps) {
		super();
		this.preparationID = preparationID;
		this.preparationName = preparationName;
		this.set = set;
		this.reps = reps;
	}

	public String getPreparationID() {
		return preparationID;
	}

	public void setPreparationID(String preparationID) {
		this.preparationID = preparationID;
	}

	public String getPreparationName() {
		return preparationName;
	}

	public void setPreparationName(String preparationName) {
		this.preparationName = preparationName;
	}

	public int getSet() {
		return set;
	}

	public void setSet(int set) {
		this.set = set;
	}

	public int getReps() {
		return reps;
	}

	public void setReps(int reps) {
		this.reps = reps;
	}
	
	
	
	

}
