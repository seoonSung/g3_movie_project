package com.care.root.movieReview.service;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.root.common.session.SessionName;
import com.care.root.movieReview.dto.MovieReviewDTO;
import com.care.root.mybatis.movieReview.MovieReviewMapper;



@Service
public class MovieReviewImpl implements MovieReviewService{
	@Autowired MovieReviewMapper mapper;
	public void reviewList(Model model) {
		model.addAttribute("reviewList",mapper.reviewList());
		
	}
	public String review1(HttpSession session,String review,int rate,Model model) {
		
		MovieReviewDTO dto = new MovieReviewDTO();
		
		dto.setMovieNumber(1);
		dto.setId((String)session.getAttribute(SessionName.LOGIN));
		dto.setReview(review);
		dto.setAvgRe(rate);
		
		
		int result = 0;
		result = mapper.writeSave(dto);
		String message = null;
		
		if(result == 1) {
			message = "<script>alert('등록이 완료되었습니다.');location.href='movie1';</script>";
		}else {
			message = "<script>alert('문제가 발생하였습니다.');history.back();</script>";
		}
		
		return message;
		
		
	}
}
