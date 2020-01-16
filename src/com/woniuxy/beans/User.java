package com.woniuxy.beans;

public class User {

	private String userName;
	private String userPwd;
	
	public User() {
		// TODO Auto-generated constructor stub
		System.out.println("user");
	}

	public User(String userName, String userPwd) {
		
		this.userName = userName;
		this.userPwd = userPwd;
	}

	public String getUserName() {
		System.out.println("getUserName");
		System.out.println(userName);
		return userName;
	}

	public void setUserName(String userName) {
		System.out.println("setUserName");
		System.out.println(userName);
		this.userName = userName;
	}

	public String getUserPwd() {
		System.out.println(userPwd);
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	@Override
	public String toString() {
		return "User [userName=" + userName + ", userPwd=" + userPwd + "]";
	}
	
	
}
