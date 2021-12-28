package com.care.root.mybatis.book;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.care.root.book.dto.BookInfoDTO;
import com.care.root.book.dto.MovieInfoDTO;
import com.care.root.member.dto.MemberDTO;

public interface BookMapper {
		public List<MovieInfoDTO> movieDay(String title);
		public void payment(@Param("code") String code,@Param("seat") String seat);
		public List<MovieInfoDTO> movieList();	
		public List<BookInfoDTO> getBookInfo(BookInfoDTO dto);
		public List<MemberDTO> seat(String id);
		public void getPn(String id);
}
