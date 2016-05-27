package com.zeroraj.www.service;

import java.util.HashMap;

import com.zeroraj.www.dto.User;

public class LoginService {
	/* Fields */
	HashMap<String, String> users = new HashMap<>();
	
	/* Constructor creating dummy database Lookup using Hashmap */
	public LoginService(){
	/* Populate map */
	users.put("srrk","SR Rajesh Kumar");
	users.put("ramki", "E.P.Ramakrishnan");
	users.put("renu", "Renu Gandhari");
	users.put("anju","Anju Singh");
	}
	
	/* Process the Login Information */
	public boolean authenticate(String name,String password){
		
		/* Accept any password if it is not null or without any blanks. */
		if(password == null || password.trim().equals("")){
			return false;
		}
		return true;
	}
	
	/* Fetch the username from userID(name) and return the whole user as Object */
	public User getUserDetails(String name){
		User user = new User();
		user.setUserID(name);
		user.setUserName(users.get(name));
		return user;
	}

}
