package com.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/sitter")
@Log4j
public class SitterPageController {
	
	@GetMapping("/schedule")
	public String SitterSchedule() {
		
		return "sitter/schedule";
	}
	
	@GetMapping("/page")
	public String SitterPage() {
		
		return "sitter/myPagePetSitter";
	}
	
	@GetMapping("/introduce")
	public String SitterIntroduce() {
		
		return "sitter/petSitterIntroduce";
	}
	
	@GetMapping("/record")
	public String SitterRecord() {
		
		return "sitter/record";
	}

}
