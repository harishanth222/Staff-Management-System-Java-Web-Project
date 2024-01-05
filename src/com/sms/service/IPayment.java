package com.sms.service;

import java.util.ArrayList;

import com.sms.model.Payment;

public interface IPayment {

	//get payment by username
	public ArrayList<Payment> getPayment(String username);
	
	//get payment by paymentId
	public Payment getPaymentById(int paymentId);
	
	//get all payments
	public ArrayList<Payment> getAllPayment();
	
	//delete payment by paymentId
	public boolean deletePayment(int paymentId);
	
	//add new payment
	public boolean insertPayment(String paidTo, String paidBy, String method, double amount, String date, String description);
	
	//update payment
	public boolean updatePayment(int paymentId, String paidTo, String paidBy, String method, double amount, String date, String description);
}
