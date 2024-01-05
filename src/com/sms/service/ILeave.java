package com.sms.service;

import java.util.ArrayList;

import com.sms.model.Leave;

public interface ILeave {
	
	//get leave by username
	public ArrayList<Leave> getLeave(String username);
	
	//get leave by leaveId
	public Leave getLeaveById(int leaveId);
	
	//get all the leaves
	public ArrayList<Leave> getAllLeave();
	
	//delete leave by leaveId
	public boolean deleteLeave(int leaveId);
	
	//add new leave
	public boolean insertLeave(String username, String dateFrom, String dateTo, int noOfDays, String type, String reason);
	
	//update leave
	public boolean updateLeave(int leaveId, String username, String dateFrom, String dateTo, int noOfDays, String type, String reason);

	//approve leave
	public boolean approveLeave(int leaveId);
	
	//reject leave
	public boolean rejectLeave(int leaveId);

}
