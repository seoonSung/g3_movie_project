package com.care.root.mybatis.movieReview;

import java.util.List;

import com.care.root.movieReview.dto.MovieReviewDTO;

public interface MovieReviewMapper {
	public List<MovieReviewDTO> reviewList();
	public int writeSave(MovieReviewDTO dto);
}
