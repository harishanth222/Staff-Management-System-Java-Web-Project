package com.sms.model;

public class Manager extends Person {
	
	private int managerID;
	private String username;
	private String password;
	

	public Manager(int managerID, String firstName, String lastName, String email, String contactNo, String username, String password) {
		super(firstName, lastName, email, contactNo);
		this.managerID = managerID;
		this.username = username;
		this.password = password;
	}

	public int getManagerID() {
		return managerID;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}
	

	public void setManagerID(int managerID) {
		this.managerID = managerID;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
}
