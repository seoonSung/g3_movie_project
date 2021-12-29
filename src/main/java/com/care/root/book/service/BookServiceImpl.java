package com.care.root.book.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

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
	public void getBookList(Model model, String pn,HttpServletResponse response) {
		// TODO Auto-generated method stub
		PrintWriter out = null;
		response.setContentType("text/html; charset-utf-8");
		try {
			out = response.getWriter();
			if(bmapper.getBookInfo(pn).isEmpty()) {
				out.println("<script>alert('nono.'); location.href='/myInfoMain';</script>");
			}else 	model.addAttribute("bookList", bmapper.getBookInfo(pn));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
		
	@Override
	public void seat(String writer, Model model) {
		model.addAttribute("member",mapper.seat(writer));
		}

	@Override
	public List<MovieInfoDTO> movieList() {
		// TODO Auto-generated method stub
		return mapper.movieList();
	}
}
