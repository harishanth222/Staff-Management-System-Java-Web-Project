package com.sms.service;

import java.util.ArrayList;

import com.sms.model.Contact;

public interface IContact {
	
	//get all contact messages
	public ArrayList<Contact> getAllContact();
	
	//add new contact message
	public boolean insertContact(String name , String email, String message);
	
	//delete contact message by contactId
	public boolean deleteContact(int contactId);

}
