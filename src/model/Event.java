package model;

public class Event {
	
	private String eventId;
	private String eventName;
	private String eventSymbol;
	private String category;
	
	
	
	public Event(String eventId, String eventName, String eventSymbol, String category) {
		
		this.eventId = eventId;
		this.eventName = eventName;
		this.eventSymbol = eventSymbol;
		this.category = category;
		
	}


	public String getEventId() {
		return eventId;
	}


	public String getEventName() {
		return eventName;
	}


	public String getEventSymbol() {
		return eventSymbol;
	}


	public String getCategory() {
		return category;
	}


}
