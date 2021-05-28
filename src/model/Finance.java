package model;

public class Finance {

	private String transactionId;
	private String date;
	private String description;
	private Double amounts;
	private String type;
	private Double balance;
	
	public Finance(String transactionId, String date, String description, Double amounts, String type, Double balance) {
		
		this.transactionId = transactionId;
		this.date = date;
		this.description = description;
		this.amounts = amounts;
		this.type = type;
		this.balance = balance;
	}

	public String getTransactionId() {
		return transactionId;
	}

	
	public String getDate() {
		return date;
	}

	
	public String getDescription() {
		return description;
	}

	
	public Double getAmounts() {
		return amounts;
	}

	
	public String getType() {
		return type;
	}

	
	public Double getBalance() {
		return balance;
	}

}
