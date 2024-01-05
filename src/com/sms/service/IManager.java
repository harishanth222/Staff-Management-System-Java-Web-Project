package com.sms.service;

import java.util.ArrayList;

import com.sms.model.Manager;

public interface IManager {
	
	//validate manager in login
	public boolean validate(String username,String password);
	
	//get manager by username
	public ArrayList<Manager> getManager(String username);
	
	//get manager by managerId
	public Manager getManagerById(int managerId);
	
	//get all the managers
	public ArrayList<Manager> getAllManager();
	
	//delete manager by managerId
	public boolean deleteManager(int managerId);
	
	//add new manager
	public boolean insertManager(String fname , String lname , String email, String contactNo , String username , String password);
	
	//update manager
	public boolean updateManager(int id, String fname, String lname, String email, String contactNo , String username , String password);

}
