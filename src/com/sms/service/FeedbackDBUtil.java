package com.sms.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.sms.util.DBConnect;
import com.sms.model.Feedback;

public class FeedbackDBUtil implements IFeedback {
	
	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement state = null;
	private static ResultSet rs = null;
	
	
	public ArrayList<Feedback> getFeedback(String username){
		
		
		ArrayList<Feedback> feedback = new ArrayList<>();
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "select * from feedback where username ='"+username+"'";
			rs = state.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String uname = rs.getString(2);
				String find = rs.getString(3);
				String rating = rs.getString(4);
				String description = rs.getString(5);
				
				Feedback fbk = new Feedback(id, uname, find, rating, description);
				feedback.add(fbk);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return feedback;
	}
	
	public Feedback getFeedbackById(int feedbackId){
		
		ArrayList<Feedback> feedback = new ArrayList<>();
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "select * from feedback where feedbackID ='"+feedbackId+"'";
			rs = state.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String uname = rs.getString(2);
				String find = rs.getString(3);
				String rating = rs.getString(4);
				String description = rs.getString(5);
				
				Feedback fbk = new Feedback(id, uname, find, rating, description);
				feedback.add(fbk);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return feedback.get(0);
	}	
	
	
	public ArrayList<Feedback> getAllFeedback(){
		
		ArrayList<Feedback> feedbacks = new ArrayList<>();
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "select * from feedback";
			rs = state.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String uname = rs.getString(2);
				String find = rs.getString(3);
				String rating = rs.getString(4);
				String description = rs.getString(5);
				
				Feedback fbk = new Feedback(id, uname, find, rating, description);
				feedbacks.add(fbk);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return feedbacks;
	}
	
	
	public boolean deleteFeedback(int feedbackId) {
				
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "delete from feedback where feedbackID = '" + feedbackId + "'";
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
	
	
	public boolean insertFeedback(String username, String find, String rating, String description) {
		
		boolean isSuccess = false;
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "insert into feedback values (0,'"+username+"','"+find+"','"+rating+"','"+description+"')";
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
	
	public boolean updateFeedback(int feedbackId, String username, String find, String rating, String description) {
    	
    	try {
    		
    		conn = DBConnect.getConnection();
    		state = conn.createStatement();
    		
    		String sql = "update feedback set username='"+username+"', find = '"+find+"' ,rating='"+rating+"' ,description='"+description+"' where feedbackID='"+feedbackId+"'";
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
