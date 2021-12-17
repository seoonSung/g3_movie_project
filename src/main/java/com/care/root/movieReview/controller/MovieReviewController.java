package com.care.root.movieReview.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MovieReviewController {
	
<<<<<<< HEAD
	@GetMapping("review")
	public String review() {
		return "movie/review";
=======
	@GetMapping("info")
	public String review() {
		return "movie/info";
	}
	@GetMapping("movie1")
	public String movie1() {
		return "movie/movie1";
>>>>>>> 7369e59cce7b8faea13b39eaf1c5713f578ef45f
	}
}
