package com.care.root.book.service;

import java.util.List;

import org.springframework.ui.Model;

import com.care.root.book.dto.MovieInfoDTO;

public interface BookService {
	public List<MovieInfoDTO> movieList();
	public List<MovieInfoDTO> movieDay(String title);
}
