package com.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class LoginController {

	@GetMapping("/login")
	public String login() {
		
		return "login/login";
	}
}
