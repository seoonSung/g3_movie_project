package com.care.root.book.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.root.book.dto.BookInfoDTO;
import com.care.root.book.dto.MovieInfoDTO;
import com.care.root.mybatis.book.BookInfoMapper;
import com.care.root.mybatis.book.BookMapper;

@Service
public class BookServiceImpl implements BookService{
	@Autowired BookMapper mapper;
	@Autowired BookInfoMapper bmapper;
	
	@Override
	public List<MovieInfoDTO> movieDay(String title) {
		
		return mapper.movieDay(title);
	}

	@Override
	public void payment(String days, String title, String times, int theater, String selectedSeat, String pn) {
		String seats = selectedSeat;
		bmapper.payment(days,title,times,theater,seats,pn);
	}

	@Override

	public void seat(String writer, Model model) {
		model.addAttribute("member",mapper.seat(writer));

	
	}

	public void getBookList(Model model, BookInfoDTO dto) {
		// TODO Auto-generated method stub
		model.addAttribute("bookList", mapper.getBookInfo(dto));
	}



	@Override
	public List<MovieInfoDTO> movieList() {
		// TODO Auto-generated method stub
		return mapper.movieList();
	}

	@Override
	public List<BookInfoDTO> getBookInfo(BookInfoDTO dto ) {
		// TODO Auto-generated method stub
		return mapper.getBookInfo(dto);
	}


	@Override
	public void seatconfirm(String title, String days, String times, Model model) {
		
		model.addAttribute("booklist", bmapper.seatconfirm(title,days,times));
	}
	public void getPn(String id) {
		// TODO Auto-generated method stub
		mapper.getPn(id);

	}
}
