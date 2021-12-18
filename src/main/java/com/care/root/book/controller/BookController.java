package com.care.root.book.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.root.book.service.BookService;

@Controller
public class BookController {
	@Autowired BookService bs;
	@GetMapping("/bookMain")
	public String bookMain(Model model) {
		
		
		return "book/bookMain";
	}
	
	@GetMapping("/seat")
	public String seat(Model model,
			@RequestParam String i,
			@RequestParam String title,
			@RequestParam String time,
			@RequestParam String theater) {
		
		model.addAttribute("i", i);
		model.addAttribute("title", title);
		model.addAttribute("time", time);
		model.addAttribute("theater",theater);
		return "book/seat";
	}
}
