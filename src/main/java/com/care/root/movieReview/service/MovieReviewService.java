package com.care.root.movieReview.service;



import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

public interface MovieReviewService {
	public void reviewList(Model model);
	public String review1(HttpSession session ,String review,int rate,Model model);
}
