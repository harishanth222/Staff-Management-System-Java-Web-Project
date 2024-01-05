package com.sms.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.sms.util.DBConnect;

public class ManagerDashboardDBUtil {
	
	private static int count;
	private static Connection conn = null;
	private static Statement state = null;
	private static ResultSet rs = null;
	
	public static int getStaffMemberCount() {
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			String sql = "select count(*) from staffmember";
			rs = state.executeQuery(sql);
			
			if(rs.next()) {
				count = rs.getInt(1);
			}else {
				count = 0;
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		return count;
	}
	
	public static int getManagerCount() {
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			String sql = "select count(*) from manager";
			rs = state.executeQuery(sql);
			
			if(rs.next()) {
				count = rs.getInt(1);
			}else {
				count = 0;
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		return count;
	}

	public static int getPaymentCount() {
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			String sql = "select count(*) from payment";
			rs = state.executeQuery(sql);
			
			if(rs.next()) {
				count = rs.getInt(1);
			}else {
				count = 0;
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		return count;
	}
	
	public static int getFeedbackCount() {
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			String sql = "select count(*) from feedback";
			rs = state.executeQuery(sql);
			
			if(rs.next()) {
				count = rs.getInt(1);
			}else {
				count = 0;
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		return count;
	}
	
	public static int getLeaveCount() {
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			String sql = "select count(*) from leaves";
			rs = state.executeQuery(sql);
			
			if(rs.next()) {
				count = rs.getInt(1);
			}else {
				count = 0;
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		return count;
	}
	
	public static int getApprovedLeaveCount() {
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			String sql = "select count(*) from leaves where status = 'Approved'";
			rs = state.executeQuery(sql);
			
			if(rs.next()) {
				count = rs.getInt(1);
			}else {
				count = 0;
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		return count;
	}
}
