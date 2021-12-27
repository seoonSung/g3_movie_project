package com.care.root.book.service;

import java.util.List;



import com.care.root.book.dto.BookInfoDTO;
import com.care.root.book.dto.MovieInfoDTO;

public interface BookService {
	public List<MovieInfoDTO> movieList();
	public List<MovieInfoDTO> movieDay(String title);
	public void payment(String i, String title, String time, String theater, String selectedSeat);
	public List<BookInfoDTO> seat(String title,String i,String time);
}
