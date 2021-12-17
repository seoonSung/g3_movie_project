package com.care.root.movieReview.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MovieReviewController {
	
	@GetMapping("info")
	public String review() {
		return "movie/info";
	}
	@GetMapping("movie1")
	public String movie1() {
		return "movie/movie1";
	}
}
