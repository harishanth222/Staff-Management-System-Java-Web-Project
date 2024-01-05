package com.sms.model;

public class Contact {

	private int contactID;
	private String name;
	private String email;
	private String message;
	
	
	public Contact(int contactID, String name, String email, String message) {
		super();
		this.contactID = contactID;
		this.name = name;
		this.email = email;
		this.message = message;
	}
	

	public int getContactID() {
		return contactID;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getMessage() {
		return message;
	}
	
}
