package com.springmvc;


import static org.junit.Assert.*;
import org.junit.Test;

import com.service.UserService;

public class UserServiceTest {
	@Test
	public void isValidUser(){
		UserService userService = new UserService();		
		assertTrue(userService.isValidUser("springuser1@spring.com", "springpwd1"));
	}
}
