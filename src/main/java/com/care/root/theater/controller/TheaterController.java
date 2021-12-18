package com.care.root.theater.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TheaterController {
	
	@GetMapping("/theaterMain")
	public String theaterMain() {
		return "theater/theaterMain";
	}
	
}
