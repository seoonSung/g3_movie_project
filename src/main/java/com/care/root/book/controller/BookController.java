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
	         @RequestParam String theater,
	         @RequestParam String writer) throws Exception{
	      
	      model.addAttribute("i", i); //날짜
	      model.addAttribute("title", title); //제목
	      model.addAttribute("time", time); //시간
	      model.addAttribute("theater",theater); // 관 
	      bs.seat(writer,model);
	      bs.seatconfirm(title,i,time,model);
	      
	      
	      return "book/seat";
	   }

	
	@RequestMapping(value="payment", method = RequestMethod.GET)
	public String payment(Model model, String title, String time, int theater,
							String i, String ticketNumber, String selectedSeat,
							String payMoney,String pn) {	
		System.out.println("title: "+title);
		System.out.println("time: "+time);
		System.out.println("theater: "+theater);
		System.out.println("i: "+i);
		System.out.println("ticketNumber: "+ticketNumber);
		System.out.println("selectedSeat: "+selectedSeat);
		System.out.println("payMoney: "+payMoney);
		
		
		bs.payment(i, title, time, theater, selectedSeat,payMoney,pn);
		

		return "book/payment";
	}
	
}