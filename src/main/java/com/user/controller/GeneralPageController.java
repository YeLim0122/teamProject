package com.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/general")
@Log4j
public class GeneralPageController {
	
	@GetMapping("/page")
	public String generalPage() {
		
		return "general/mypage_user";
	}
	
	@GetMapping("/petinfo")
	public String myPetInfo() {
		
		return "general/mypage_user2";
	}
	
	@GetMapping("/petregi")
	public String petRegistration() {
		
		return "general/pet_Info";
	}

}
