package com.sms.service;

import java.util.ArrayList;

import com.sms.model.Feedback;

public interface IFeedback {

	//get feedback by username
	public ArrayList<Feedback> getFeedback(String username);
	
	//get feedback by feedbakId
	public Feedback getFeedbackById(int feedbackId);
	
	//get all feedbacks
	public ArrayList<Feedback> getAllFeedback();
	
	//delete feedback by feedbackId
	public boolean deleteFeedback(int feedbackId);
	
	//add new feedback
	public boolean insertFeedback(String username, String find, String rating, String description);
	
	//update feedback
	public boolean updateFeedback(int feedbackId, String username, String find, String rating, String description);
}
