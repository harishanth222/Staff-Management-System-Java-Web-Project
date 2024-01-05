package com.sms.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.sms.model.Payment;
import com.sms.util.DBConnect;

public class PaymentDBUtil implements IPayment {

	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement state = null;
	private static ResultSet rs = null;
	
	
	public ArrayList<Payment> getPayment(String username){
		
		
		ArrayList<Payment> payment = new ArrayList<>();
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "select * from payment where paidTo ='"+username+"'";
			rs = state.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String paidTo = rs.getString(2);
				String paidBy = rs.getString(3);
				String method = rs.getString(4);
				double amount = rs.getDouble(5);
				String date = rs.getString(6);
				String description = rs.getString(7);
				
				Payment pay = new Payment(id, paidTo, paidBy, method, amount, date, description);
				payment.add(pay);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return payment;
	}
	
	public Payment getPaymentById(int paymentId){
		
		ArrayList<Payment> payment = new ArrayList<>();
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "select * from payment where paymentID ='"+paymentId+"'";
			rs = state.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String paidTo = rs.getString(2);
				String paidBy = rs.getString(3);
				String method = rs.getString(4);
				double amount = rs.getDouble(5);
				String date = rs.getString(6);
				String description = rs.getString(7);
				
				Payment pay = new Payment(id, paidTo, paidBy, method, amount, date, description);
				payment.add(pay);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return payment.get(0);
	}	
	
	
	public ArrayList<Payment> getAllPayment(){
		
		ArrayList<Payment> payments = new ArrayList<>();
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "select * from payment";
			rs = state.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String paidTo = rs.getString(2);
				String paidBy = rs.getString(3);
				String method = rs.getString(4);
				double amount = rs.getDouble(5);
				String date = rs.getString(6);
				String description = rs.getString(7);
				
				Payment pay = new Payment(id, paidTo, paidBy, method, amount, date, description);
				payments.add(pay);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return payments;
	}
	
	
	public boolean deletePayment(int paymentId) {
				
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "delete from payment where paymentID = '" + paymentId + "'";
			int result = state.executeUpdate(sql);
			
			if(result > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		return isSuccess;
	}
	
	
	public boolean insertPayment(String paidTo, String paidBy, String method, double amount, String date, String description) {
		
		boolean isSuccess = false;
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "insert into payment values (0,'"+paidTo+"','"+paidBy+"','"+method+"',"+amount+",'"+date+"','"+description+"')";
			int rs = state.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public boolean updatePayment(int paymentId, String paidTo, String paidBy, String method, double amount, String date, String description) {
    	
    	try {
    		
    		conn = DBConnect.getConnection();
    		state = conn.createStatement();
    		
    		String sql = "update payment set paidTo='"+paidTo+"', paidBy = '"+paidBy+"' ,method='"+method+"',amount = "+amount+" ,date = '"+date+"' ,description='"+description+"' where paymentID='"+paymentId+"'";
    		int rs = state.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
}
