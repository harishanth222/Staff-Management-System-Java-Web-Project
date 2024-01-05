package com.sms.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.sms.util.DBConnect;
import com.sms.model.Leave;

public class LeaveDBUtil implements ILeave {
	
	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement state = null;
	private static ResultSet rs = null;
	
	
	public ArrayList<Leave> getLeave(String username){
		
		
		ArrayList<Leave> leave = new ArrayList<>();
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "select * from leaves where username ='"+username+"'";
			rs = state.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String uname = rs.getString(2);
				String dateFrom = rs.getString(3);
				String dateTo = rs.getString(4);
				int noOfDays = rs.getInt(5);
				String type = rs.getString(6);
				String reason = rs.getString(7);
				String status = rs.getString(8);
				
				Leave lv = new Leave(id, uname, dateFrom, dateTo, noOfDays, type, reason, status);
				leave.add(lv);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return leave;
	}
	
	public Leave getLeaveById(int leaveId){
		
		ArrayList<Leave> leave = new ArrayList<>();
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "select * from leaves where leaveID ='"+leaveId+"'";
			rs = state.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String uname = rs.getString(2);
				String dateFrom = rs.getString(3);
				String dateTo = rs.getString(4);
				int noOfDays = rs.getInt(5);
				String type = rs.getString(6);
				String reason = rs.getString(7);
				String status = rs.getString(8);
				
				Leave lv = new Leave(id, uname, dateFrom, dateTo, noOfDays, type, reason, status);
				leave.add(lv);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return leave.get(0);
	}	
	
	
	public ArrayList<Leave> getAllLeave(){
		
		ArrayList<Leave> leaves = new ArrayList<>();
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "select * from leaves";
			rs = state.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String uname = rs.getString(2);
				String dateFrom = rs.getString(3);
				String dateTo = rs.getString(4);
				int noOfDays = rs.getInt(5);
				String type = rs.getString(6);
				String reason = rs.getString(7);
				String status = rs.getString(8);
				
				Leave lv = new Leave(id, uname, dateFrom, dateTo, noOfDays, type, reason, status);
				leaves.add(lv);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return leaves;
	}
	
	
	public boolean deleteLeave(int leaveId) {
				
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "delete from leaves where leaveID = '" + leaveId + "'";
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
	
	
	public boolean insertLeave(String username, String dateFrom, String dateTo, int noOfDays, String type, String reason) {
		
		boolean isSuccess = false;
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "insert into leaves values (0, '"+username+"', '"+dateFrom+"', '"+dateTo+"', "+noOfDays+", '"+type+"', '"+reason+"', 'Pending')";
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
	
	public boolean updateLeave(int leaveId, String username, String dateFrom, String dateTo, int noOfDays, String type, String reason) {
    	
    	try {
    		
    		conn = DBConnect.getConnection();
    		state = conn.createStatement();
    		
    		String sql = "update leaves set username = '"+username+"' , dateFrom='"+dateFrom+"', dateTo='"+dateTo+"' ,noOfDays="+noOfDays+", type = '"+type+"' , reason='"+reason+"' where leaveID='"+leaveId+"'";
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
	
	
	public boolean approveLeave(int leaveId) {
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "update leaves set status = 'Approved' where leaveID = '" + leaveId + "'";
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
	
	public boolean rejectLeave(int leaveId) {
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "update leaves set status = 'Rejected' where leaveID = '" + leaveId + "'";
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
}
