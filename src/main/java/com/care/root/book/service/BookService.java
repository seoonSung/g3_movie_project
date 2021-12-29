package com.care.root.book.service;

import java.util.List;

import org.springframework.ui.Model;

import com.care.root.book.dto.BookInfoDTO;
import com.care.root.book.dto.MovieInfoDTO;

public interface BookService {
	public List<MovieInfoDTO> movieList();
	public List<MovieInfoDTO> movieDay(String title);
	public void payment(String i, String title, String time, int theater, String selectedSeat,String payMoney,String pn);
	

	public void getBookList(Model model, BookInfoDTO dto);
	public List<BookInfoDTO> getBookInfo(BookInfoDTO dto);

	public void seat(String writer,Model model);
	public void getPn(String id);

}
