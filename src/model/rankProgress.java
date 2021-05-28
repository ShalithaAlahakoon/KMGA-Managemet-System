package model;

public class rankProgress {
	
	private String athId;
	private float total;
	public rankProgress(String athId, float total) {
		super();
		this.athId = athId;
		this.total = total;
	}
	
	public String getAthId() {
		return athId;
	}
	public void setAthId(String athId) {
		this.athId = athId;
	}
	public float getTotal() {
		return total;
	}
	public void setTotal(float total) {
		this.total = total;
	}
	
	
	
	

}
