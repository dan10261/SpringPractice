package com.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService userService;

	@RequestMapping(value = "/login", method=RequestMethod.GET)
	public String Login() {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String ValidateUser(@RequestParam String UserName,
			@RequestParam String Password, ModelMap model) {
		if (userService.IsValidUser(UserName, Password)) {
			model.put("UserName", UserName);
			return "welcome";
		}
		model.put("errorMessage", "Your email or password is invalid.");
		return "login";
	}
}
