package com.sms.model;

public class Payment {
	
	private int paymentID;
	private String paidTo;
	private String paidBy;
	private String method;
	private double amount;
	private String date;
	private String description;
	
	
	public Payment(int paymentID, String paidTo, String paidBy, String method, double amount, String date, String description) {
		super();
		this.paymentID = paymentID;
		this.paidTo = paidTo;
		this.paidBy = paidBy;
		this.method = method;
		this.amount = amount;
		this.date = date;
		this.description = description;
	}
	

	public int getPaymentID() {
		return paymentID;
	}

	public String getPaidTo() {
		return paidTo;
	}

	public String getPaidBy() {
		return paidBy;
	}

	public String getMethod() {
		return method;
	}

	public double getAmount() {
		return amount;
	}

	public String getDate() {
		return date;
	}

	public String getDescription() {
		return description;
	}

	
	public void setPaymentID(int paymentID) {
		this.paymentID = paymentID;
	}

	public void setPaidTo(String paidTo) {
		this.paidTo = paidTo;
	}

	public void setPaidBy(String paidBy) {
		this.paidBy = paidBy;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	

}
