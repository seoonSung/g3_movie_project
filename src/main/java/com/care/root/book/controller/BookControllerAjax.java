package com.care.root.book.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.care.root.book.dto.MovieInfoDTO;
import com.care.root.book.service.BookService;

@RestController
public class BookControllerAjax {
	@Autowired
	BookService bs;
	
	@GetMapping(value="movieList", produces = "application/json;charset=utf-8")
	   @ResponseBody
	   public List<MovieInfoDTO> movieList(){
			
	    return bs.movieList();   
	   }
	
	@GetMapping(value = "movieDay/{title}", produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<MovieInfoDTO> getReplyList(@PathVariable String title){
		return bs.movieDay(title);

	}
	 
	
}
