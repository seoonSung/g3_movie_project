package com.care.root.mybatis.book;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.care.root.book.dto.BookInfoDTO;
import com.care.root.book.dto.MovieInfoDTO;
import com.care.root.member.dto.MemberDTO;

public interface BookMapper {
		public List<MovieInfoDTO> movieList();
		public List<MovieInfoDTO> movieDay(String title);
		public List<MemberDTO> seat(String id);
		
}
