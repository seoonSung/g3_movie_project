package com.care.root.book.service;

import java.util.List;

import org.springframework.ui.Model;

import com.care.root.book.dto.BookInfoDTO;
import com.care.root.book.dto.MovieInfoDTO;

public interface BookService {
	public List<MovieInfoDTO> movieList();
	public List<MovieInfoDTO> movieDay(String title);
<<<<<<< HEAD
	public void payment(String i, String title, String time, String theater, String selectedSeat,String payMoney);
	

=======
>>>>>>> bf9b2e8ba63ac0f7e666e9488d41c4b66d33d47a
	public void getBookList(Model model, BookInfoDTO dto);
	public List<BookInfoDTO> getBookInfo(BookInfoDTO dto);
<<<<<<< HEAD

=======
	public void payment(String days, String title, String times, int theater, String selectedSeat, String pn);
	public void seat(String writer,Model model);
	public void getPn(String id);
>>>>>>> bf9b2e8ba63ac0f7e666e9488d41c4b66d33d47a
}
