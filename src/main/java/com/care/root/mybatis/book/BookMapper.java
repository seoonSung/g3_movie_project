package com.care.root.mybatis.book;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.care.root.book.dto.BookInfoDTO;
import com.care.root.book.dto.MovieInfoDTO;

public interface BookMapper {
		public List<MovieInfoDTO> movieList(MovieInfoDTO dto);
		public List<MovieInfoDTO> movieDay(String title);
		public void payment(@Param("code") String code,@Param("seat") String seat);
		public List<BookInfoDTO> bookInfo(BookInfoDTO dto);	
}
