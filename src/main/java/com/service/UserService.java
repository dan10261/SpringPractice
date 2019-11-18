package com.service;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

@Service
public class UserService {
	private Logger logger = Logger.getLogger(UserService.class);	
	public boolean isValidUser(String UserName, String Password) {
		if (UserName.equals("springuser1@spring.com")
				&& Password.equals("springpwd1"))
			return true;
		logger.info("User Name: "+UserName + " and Password: " + Password+" combination is incorrect.");
		return false;
	}
}
