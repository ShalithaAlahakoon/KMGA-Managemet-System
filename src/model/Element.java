package model;

public class Element {
	

	private String elementId;
	private String elementName;
	private int value;
	
	public Element( String elementId, String elementName, int value) {
		
		this.elementId = elementId;
		this.elementName = elementName;
		this.value = value;
	}



	public String getElementId() {
		return elementId;
	}


	public String getElementName() {
		return elementName;
	}


	public int getValue() {
		return value;
	}
	
	

}
