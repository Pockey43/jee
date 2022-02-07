package fr.formation.inti.model;

public class MessageStore {
	
	private String message;
	private String name;

	
	
	public MessageStore() {
		message = "Hello ";
		name="cocuou";
		
	}

	public String getMessage() {
		return message;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	


}
