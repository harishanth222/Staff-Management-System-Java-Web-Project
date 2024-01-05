package com.sms.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.sms.util.DBConnect;
import com.sms.model.StaffMember;

public class StaffMemberDBUtil implements IStaffMember {
	
	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement state = null;
	private static ResultSet rs = null;
	
	public boolean validate(String username,String password) {
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			String sql = "select * from staffmember where username = '" + username + "' and password = '" + password + "'";
			rs=state.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		return isSuccess;
	}
	
	public ArrayList<StaffMember> getStaffMember(String username){
		
		ArrayList<StaffMember> staffMember = new ArrayList<>();
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "select * from staffmember where username ='"+username+"'";
			rs = state.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String firstName = rs.getString(2);
				String lastName = rs.getString(3);
				String email = rs.getString(4);
				String contactNo = rs.getString(5);
				String position = rs.getString(6);
				double salary = rs.getDouble(7);
				String uname = rs.getString(8);
				String pwd = rs.getString(9);
				
				StaffMember sm = new StaffMember(id, firstName, lastName, email, contactNo, position, salary, uname, pwd);
				staffMember.add(sm);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return staffMember;
	}
	
	public StaffMember getStaffMemberById(int staffMemberId){
		
		ArrayList<StaffMember> staffMember = new ArrayList<>();
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "select * from staffmember where staffMemberID ='"+staffMemberId+"'";
			rs = state.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String firstName = rs.getString(2);
				String lastName = rs.getString(3);
				String email = rs.getString(4);
				String contactNo = rs.getString(5);
				String position = rs.getString(6);
				double salary = rs.getDouble(7);
				String uname = rs.getString(8);
				String pwd = rs.getString(9);
				
				StaffMember sm = new StaffMember(id, firstName, lastName, email, contactNo, position, salary, uname, pwd);
				staffMember.add(sm);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return staffMember.get(0);
	}	
	
	public ArrayList<StaffMember> getAllStaffMember(){
		
		ArrayList<StaffMember> staffMembers = new ArrayList<>();
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "select * from staffmember";
			rs = state.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String firstName = rs.getString(2);
				String lastName = rs.getString(3);
				String email = rs.getString(4);
				String contactNo = rs.getString(5);
				String position = rs.getString(6);
				double salary = rs.getDouble(7);
				String uname = rs.getString(8);
				String pwd = rs.getString(9);
				
				StaffMember sm = new StaffMember(id, firstName, lastName, email, contactNo, position, salary, uname, pwd);
				staffMembers.add(sm);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return staffMembers;
	}
	
	
	public boolean deleteStaffMember(int staffMemberId) {
				
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "delete from staffMember where staffMemberID = '" + staffMemberId + "'";
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
	
	
	public boolean insertStaffMember(String fname , String lname ,String email, String contactNo , String position , double salary , String username , String password) {
		
		boolean isSuccess = false;
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();

			String sql = "insert into staffmember values (0, '"+fname+"', '"+lname+"', '"+email+"', '"+contactNo+"', '"+position+"', "+salary+", '"+username+"', '"+password+"')";
			int rs = state.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public boolean updateStaffMember(int id, String fname, String lname,String email, String contactNo , String position , double salary, String username , String password) {
    	
    	try {
    		
    		conn = DBConnect.getConnection();
    		state = conn.createStatement();
    		
    		String sql = "update staffmember set firstName='"+fname+"', lastName = '"+lname+"' , email='"+email+"', contactNo='"+contactNo+"' ,position='"+position+"', salary = '"+salary+"' , username='"+username+"' , password='"+password+"' where staffMemberID='"+id+"'";
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
