package com.care.root.movieReview.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.root.mybatis.movieReview.MovieReviewMapper;



@Service
public class MovieReviewImpl implements MovieReviewService{
	@Autowired MovieReviewMapper mapper;
	public void reviewList(Model model) {
		model.addAttribute("reviewList",mapper.reviewList());
		
	}
}
