package com.care.root.movieReview.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.root.movieReview.service.MovieReviewService;

@Controller
public class MovieReviewController {
	@Autowired MovieReviewService mrs;
	@GetMapping("info")
	public String review() {
		return "movie/info";
	}
	
	@GetMapping("movie1")
	public String movie1(Model model) {
		int num =1;
		mrs.reviewList(model,num);
		
		return "movie/movie1";
	}
	@GetMapping("movie2")
	public String movie2(Model model) {
		int num =2;
		mrs.reviewList(model,num);
		return "movie/movie2";
	}
	@GetMapping("movie3")
	public String movie3(Model model) {
		int num =3;
		mrs.reviewList(model,num);
		return "movie/movie3";
	}
	@GetMapping("movie4")
	public String movie4(Model model) {
		int num =4;
		mrs.reviewList(model,num);
		return "movie/movie4";
	}
	
	
	@PostMapping("review1")
	public void review1(@RequestParam("review") String review ,@RequestParam("rating") int rate,
			@RequestParam("number") int num,
			Model model,HttpSession session,HttpServletResponse response) throws Exception {
		model.addAttribute("review",review);
		model.addAttribute("rating",rate);
		
		String message = mrs.review1(session,review,rate,model,num);
		
		System.out.println(message);
		
		PrintWriter out=null;
		   response.setContentType("text/html; charset=utf-8");
		   out = response.getWriter();
		   out.println(message);
		
		
	}
	
}
