package model;

public class Finance {

	private String transactionId;
	private String date;
	private String description;
	private String amount;
	private String type;
	private String balance;
	
	public Finance(String transactionId, String date, String description, String amount, String type, String balance) {
		
		this.transactionId = transactionId;
		this.date = date;
		this.description = description;
		this.amount = amount;
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

	
	public String getAmount() {
		return amount;
	}

	
	public String getType() {
		return type;
	}

	
	public String getBalance() {
		return balance;
	}

}
