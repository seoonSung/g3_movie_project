package com.care.root.book.service;

import java.util.List;

import org.springframework.ui.Model;

import com.care.root.book.dto.BookInfoDTO;
import com.care.root.book.dto.MovieInfoDTO;

public interface BookService {
	public void movieList(Model model, MovieInfoDTO dto);
	public List<MovieInfoDTO> movieDay(String title);
	public void payment(String i, String title, String time, String theater, String selectedSeat);
	public void getBookList(Model model, BookInfoDTO dto);
	
}
