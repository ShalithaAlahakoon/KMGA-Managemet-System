package model;

public class Score {

	private String proId;
	private String evaluation;
	private float marks;
	private String eveId;
	private String eleId;
	private String athId;
	
	
	
	public Score(String proId, String evaluation, float marks, String eveId, String eleId, String athId) {
		super();
		this.proId = proId;
		this.evaluation = evaluation;
		this.marks = marks;
		this.eveId = eveId;
		this.eleId = eleId;
		this.athId = athId;
	}
	
	
	public Score(String evaluation2, float scores) {
		this.evaluation = evaluation2;
		this.marks = scores;
	}


	public String getProId() {
		return proId;
	}
	public String getEvaluation() {
		return evaluation;
	}
	public float getMarks() {
		return marks;
	}
	public String getEveId() {
		return eveId;
	}
	public String getEleId() {
		return eleId;
	}
	public String getAthId() {
		return athId;
	}
		
}
