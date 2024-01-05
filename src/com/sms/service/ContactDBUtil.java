package com.sms.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.sms.model.Contact;
import com.sms.util.DBConnect;

public class ContactDBUtil implements IContact {

	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement state = null;
	private static ResultSet rs = null;
	
	
	public ArrayList<Contact> getAllContact(){
		
		ArrayList<Contact> contacts = new ArrayList<>();
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "select * from contact";
			rs = state.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String message = rs.getString(4);

				Contact ct = new Contact(id, name, email, message);
				contacts.add(ct);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return contacts;
	}
	
	
	public boolean insertContact(String name , String email, String message) {
				
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "insert into contact values (0,'"+name+"','"+email+"','"+message+"')";
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
	
	public boolean deleteContact(int contactId) {
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "delete from contact where contactID = '" + contactId + "'";
			int result = state.executeUpdate(sql);
			System.out.println(result);
			
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
	
}
