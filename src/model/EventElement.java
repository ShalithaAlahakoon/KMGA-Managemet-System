package model;

public class EventElement {
	private String eventId;
	private String elementId;
	
	public EventElement(String eventId, String elementId) {
		super();
		this.eventId = eventId;
		this.elementId = elementId;
	}

	public String geteventId() {
		return eventId;
	}

	public String getelementId() {
		return elementId;
	}
	
	
	
}
