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
	public void reviewList(Model model,int num) {
		
		model.addAttribute("reviewList",mapper.reviewList(num));
		
	}
	public String review1(HttpSession session,String review,int rate,Model model,int num) {
		
		MovieReviewDTO dto = new MovieReviewDTO();
		
		dto.setMovieNumber(num);
		dto.setId((String)session.getAttribute(SessionName.LOGIN));
		dto.setReview(review);
		dto.setAvgRe(rate);
		
		
		int result = 0;
		result = mapper.writeSave(dto);
		String message = null;
		
		if(result == 1) {
			message = "<script>alert('등록이 완료되었습니다.');location.href='movie"+num+"';</script>";
		}else {
			message = "<script>alert('문제가 발생하였습니다.');history.back();</script>";
		}
		
		return message;
		
		
	}
}
