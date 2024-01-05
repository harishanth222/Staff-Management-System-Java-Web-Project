package com.sms.service;

import java.util.ArrayList;

import com.sms.model.StaffMember;

public interface IStaffMember {

	//validate staff member in login
	public boolean validate(String username,String password);
	
	//get staff member by username
	public ArrayList<StaffMember> getStaffMember(String username);
	
	//get staff member by managerId
	public StaffMember getStaffMemberById(int staffMemberId);
	
	//get all the staff members
	public ArrayList<StaffMember> getAllStaffMember();
	
	//delete staff member by staffMemberId
	public boolean deleteStaffMember(int staffMemberId);
	
	//add new staff member
	public boolean insertStaffMember(String fname , String lname ,String email, String contactNo , String position , double salary , String username , String password);
	
	//update staff member
	public boolean updateStaffMember(int id, String fname, String lname,String email, String contactNo , String position , double salary, String username , String password);
}
