package com.sms.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.sms.util.DBConnect;

public class StaffMemberDashboardDBUtil {

	private static int count;
	private static Connection conn = null;
	private static Statement state = null;
	private static ResultSet rs = null;

	public static int getPaymentCount(String username) {
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			String sql = "select count(*) from payment where paidTo = '" + username + "'";
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
	
	public static int getFeedbackCount(String username) {
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			String sql = "select count(*) from feedback where username = '" + username + "'";
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

	public static int getLeaveCount(String username) {
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			String sql = "select count(*) from leaves where username = '" + username + "'";
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
	
	public static int getApprovedLeaveCount(String username) {
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			String sql = "select count(*) from leaves where status = 'Approved' and username = '" + username + "'";
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
