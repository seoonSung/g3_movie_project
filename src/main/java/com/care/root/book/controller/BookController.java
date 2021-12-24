package com.care.root.book.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
			@RequestParam String theater) throws Exception{
		
		model.addAttribute("i", i); //날짜
		model.addAttribute("title", title); //제목
		model.addAttribute("time", time); //시간
		model.addAttribute("theater",theater); // 관 
		
		model.addAttribute("code",bs.seat(title,i,time,theater));
		
		
		return "book/seat";
	}
	
	@RequestMapping(value="payment", method = RequestMethod.GET)
	public String payment(Model model, String title, String time, String theater,
							String i, String ticketNumber, String selectedSeat,
							String payMoney) {	
	
		
		
		bs.payment(i, title, time, theater, selectedSeat);


		
		
		return "book/payment";
	}
	@GetMapping("/seat_test")
	public String seat_test(Model model,
			@RequestParam String i,
			@RequestParam String title,
			@RequestParam String time,
			@RequestParam String theater) throws Exception{
		
		model.addAttribute("i", i); //날짜
		model.addAttribute("title", title); //제목
		model.addAttribute("time", time); //시간
		model.addAttribute("theater",theater); // 관 
		
		model.addAttribute("code",bs.seat(title,i,time,theater));
		
		
		return "book/seat_test";
	}
	
}
