package com.care.root.movieReview.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.care.root.movieReview.service.MovieReviewService;

@Controller
public class MovieReviewController {
	
	@GetMapping("info")
	public String review() {
		return "movie/info";
	}
	@Autowired MovieReviewService mrs;
	@GetMapping("movie1")
	public String movie1(Model model) {
		
		mrs.reviewList(model);
		return "movie/movie1";
	}
	
}
