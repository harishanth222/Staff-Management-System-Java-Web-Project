package com.sms.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.sms.util.DBConnect;
import com.sms.model.Manager;

public class ManagerDBUtil implements IManager {
	
	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement state = null;
	private static ResultSet rs = null;
	
	public boolean validate(String username,String password) {
		
		try {
			
			conn = DBConnect.getConnection();
			state=conn.createStatement();
			String sql = "select * from manager where username = '" + username + "' and password = '" + password + "'";
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
	
	public ArrayList<Manager> getManager(String username){
		
		ArrayList<Manager> manager = new ArrayList<>();
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "select * from manager where username ='"+username+"'";
			rs = state.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String firstName = rs.getString(2);
				String lastName = rs.getString(3);
				String email = rs.getString(4);
				String contactNo = rs.getString(5);
				String uname = rs.getString(6);
				String pwd = rs.getString(7);
				
				Manager sm = new Manager(id, firstName, lastName, email, contactNo, uname, pwd);
				manager.add(sm);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return manager;
	}
	
	public Manager getManagerById(int managerId){
		
		ArrayList<Manager> manager = new ArrayList<>();
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "select * from manager where managerID ='"+managerId+"'";
			rs = state.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String firstName = rs.getString(2);
				String lastName = rs.getString(3);
				String email = rs.getString(4);
				String contactNo = rs.getString(5);
				String uname = rs.getString(6);
				String pwd = rs.getString(7);
				
				Manager sm = new Manager(id, firstName, lastName, email, contactNo, uname, pwd);
				manager.add(sm);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return manager.get(0);
	}	
	
	
	public ArrayList<Manager> getAllManager(){
		
		ArrayList<Manager> managers = new ArrayList<>();
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "select * from manager";
			rs = state.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String firstName = rs.getString(2);
				String lastName = rs.getString(3);
				String email = rs.getString(4);
				String contactNo = rs.getString(5);
				String uname = rs.getString(6);
				String pwd = rs.getString(7);
				
				Manager mgr = new Manager(id, firstName, lastName, email, contactNo, uname, pwd);
				managers.add(mgr);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return managers;
	}
	
	
	public boolean deleteManager(int managerId) {
				
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "delete from manager where managerID = '" + managerId + "'";
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
	
	
	public boolean insertManager(String fname , String lname , String email, String contactNo , String username , String password) {
		
		boolean isSuccess = false;
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "insert into manager values (0,'"+fname+"','"+lname+"','"+email+"','"+contactNo+"','"+username+"','"+password+"')";
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
	
	public boolean updateManager(int id, String fname, String lname, String email, String contactNo , String username , String password) {
    	
    	try {
    		
    		conn = DBConnect.getConnection();
    		state = conn.createStatement();
    		
    		String sql = "update manager set firstName='"+fname+"', lastName = '"+lname+"' ,email='"+email+"' ,contactNo='"+contactNo+"' , username='"+username+"' , password='"+password+"' where managerID='"+id+"'";
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
