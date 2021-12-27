package com.care.root.book.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.care.root.book.dto.BookInfoDTO;
import com.care.root.book.dto.MovieInfoDTO;
import com.care.root.mybatis.book.BookInfoMapper;
import com.care.root.mybatis.book.BookMapper;

@Service
public class BookServiceImpl implements BookService{
	@Autowired BookMapper mapper;
	@Autowired BookInfoMapper bmapper;
	
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
		
		
		String code = title+","+i+","+time;
		String seat = selectedSeat;
		bmapper.payment(code,seat);
	}

	@Override
	public List<BookInfoDTO> seat(String title, String i, String time) {
		String code = title+","+i+","+time;
		return bmapper.seat(code);
	}

	


}
