package com.pet.app;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/main")
@Log4j
public class MainController {
	
	@GetMapping("/reviewBoard")
	public String reviewBoard() {
		
		return "review/reviewBoard";
	}
}
