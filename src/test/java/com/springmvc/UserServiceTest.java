package com.springmvc;


import static org.junit.Assert.*;
import org.junit.Test;

import com.service.UserService;

public class UserServiceTest {
	@Test
	public void IsValidUser(){
		UserService userService = new UserService();		
		assertTrue(userService.IsValidUser("springuser1@spring.com", "springpwd1"));
	}
}
