package com.care.root.movieReview.dto;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class MovieReviewDTO {
	
	 private int movieNumber;
     private String id;
     private String days;
     private int likes;
     private String review;
     private int avgRe;
     
     
	public int getMovieNumber() {
		return movieNumber;
	}
	public void setMovieNumber(int movieNumber) {
		this.movieNumber = movieNumber;
	}
	public int getLikes() {
		return likes;
	}
	public void setLikes(int likes) {
		this.likes = likes;
	}
	public int getAvgRe() {
		return avgRe;
	}
	public void setAvgRe(int avgRe) {
		this.avgRe = avgRe;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDays() {
		return days;
	}
	public void setDays(Timestamp days) {
		SimpleDateFormat fo = new SimpleDateFormat("YYYY-MM-dd HH:mm:ss");
		this.days = fo.format(days);
	}

	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}


}
