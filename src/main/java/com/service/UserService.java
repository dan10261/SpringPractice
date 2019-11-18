package com.service;

import org.springframework.stereotype.Service;

@Service
public class UserService {
	public boolean IsValidUser(String UserName, String Password) {
		if (UserName.equals("springuser1@spring.com")
				&& Password.equals("springpwd1"))
			return true;
		return false;
	}
}
