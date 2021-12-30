package com.care.root.book.service;

import java.util.List;

import org.springframework.ui.Model;

import com.care.root.book.dto.MovieInfoDTO;

public interface BookService {
	public List<MovieInfoDTO> movieList();
	public List<MovieInfoDTO> movieDay(String title);
	public void getBookList(Model model, String pn);
	public void seat(String writer,Model model);
	public void cancel(String title, int days, String times, int theater, String seats);
	public void seatconfirm(String title,String days,String times, Model model);
	public void payment(String i, String title, String time, int theater, String selectedSeat,String payMoney,String pn);
	public void seatInfo(String title,int i,String time,Model model);
}
