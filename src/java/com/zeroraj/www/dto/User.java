package com.zeroraj.www.dto;

public class User {
	
	/* User Basic fields */ 
	private String userID;
	private String userName;
	
	/* Encapsulation (get,set) Methods */
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}

}
