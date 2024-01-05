package com.sms.model;

public class Leave {

	private int leaveID;
	private String username;
	private String dateFrom;
	private String dateTo;
	private int noOfDays;
	private String type;
	private String reason;
	private String status;
	
	
	public Leave(int leaveID, String username, String dateFrom, String dateTo, int noOfDays, String type, String reason, String status) {
		super();
		this.leaveID = leaveID;
		this.username = username;
		this.dateFrom = dateFrom;
		this.dateTo = dateTo;
		this.noOfDays = noOfDays;
		this.type = type;
		this.reason = reason;
		this.status = status;
	}

	
	public int getLeaveID() {
		return leaveID;
	}

	public String getUsername() {
		return username;
	}

	public String getDateFrom() {
		return dateFrom;
	}

	public String getDateTo() {
		return dateTo;
	}

	public int getNoOfDays() {
		return noOfDays;
	}

	public String getType() {
		return type;
	}

	public String getReason() {
		return reason;
	}

	public String getStatus() {
		return status;
	}

	
	public void setLeaveID(int leaveID) {
		this.leaveID = leaveID;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setDateFrom(String dateFrom) {
		this.dateFrom = dateFrom;
	}

	public void setDateTo(String dateTo) {
		this.dateTo = dateTo;
	}

	public void setNoOfDays(int noOfDays) {
		this.noOfDays = noOfDays;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
