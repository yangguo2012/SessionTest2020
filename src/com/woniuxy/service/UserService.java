package com.woniuxy.service;

import java.util.ArrayList;
import java.util.List;

import com.woniuxy.beans.User;

public class UserService {
	private List<User> userList=new ArrayList<User>();
	{
		userList.add(new User("admin","123456"));
		userList.add(new User("gly","123456"));
		
	}
	public boolean isExit(User loginUser){
		
		for(User u:userList){
			
			if(u.getUserName().equals(loginUser.getUserName())&&u.getUserPwd().equals(loginUser.getUserPwd())){
				
				return true;
			}
		}
		return false;
	}
}
