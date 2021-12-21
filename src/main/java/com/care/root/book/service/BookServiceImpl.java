package com.care.root.book.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.care.root.book.dto.MovieInfoDTO;
import com.care.root.mybatis.book.BookMapper;

@Service
public class BookServiceImpl implements BookService{
	@Autowired BookMapper mapper;
	
	@Override
	public List<MovieInfoDTO> movieList() {
		return mapper.movieList();
			
	}

	@Override
	public List<MovieInfoDTO> movieDay(String title) {
		
		return mapper.movieDay(title);
	}

	@Override
	public void payment(String i, String title, String time, String theater, String selectedSeat) {
		
		
		String code = title+","+i+","+time+","+theater;
		String seat = ","+selectedSeat+",";
		mapper.payment(code,seat);
	}


}
