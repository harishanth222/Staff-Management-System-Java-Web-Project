package com.sms.model;

public class Feedback {

	private int feedbackID;
	private String username;
	private String find;
	private String rating;
	private String description;
	
	
	public Feedback(int feedbackID, String username, String find, String rating, String description) {
		super();
		this.feedbackID = feedbackID;
		this.username = username;
		this.find = find;
		this.rating = rating;
		this.description = description;
	}

	
	public int getFeedbackID() {
		return feedbackID;
	}

	public String getUsername() {
		return username;
	}

	public String getFind() {
		return find;
	}

	public String getRating() {
		return rating;
	}

	public String getDescription() {
		return description;
	}

	
	public void setFeedbackID(int feedbackID) {
		this.feedbackID = feedbackID;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setFind(String find) {
		this.find = find;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
	
}
