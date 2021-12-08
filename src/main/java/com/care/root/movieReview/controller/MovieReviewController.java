package com.care.root.movieReview.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MovieReviewController {
	
	@GetMapping("review")
	public String review() {
		return "movie/review";
	}
}
