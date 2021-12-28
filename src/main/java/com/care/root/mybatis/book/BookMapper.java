package com.care.root.mybatis.book;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.care.root.book.dto.BookInfoDTO;
import com.care.root.book.dto.MovieInfoDTO;

public interface BookMapper {
		public List<MovieInfoDTO> movieDay(String title);

		public void payment(@Param("i")String i,@Param("seat")String seat,@Param("title")String title,@Param("time")String time,@Param("theater")String theater,@Param("payMoney")String payMoney);

		public List<MovieInfoDTO> movieList();	
		public List<BookInfoDTO> getBookInfo(BookInfoDTO dto);
		}
