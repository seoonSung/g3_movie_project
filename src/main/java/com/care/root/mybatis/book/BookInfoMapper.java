package com.care.root.mybatis.book;

import org.apache.ibatis.annotations.Param;

import com.care.root.book.dto.BookInfoDTO;

public interface BookInfoMapper {
	public void payment(@Param("days") String days, @Param("title") String title,
						@Param("times") String times, @Param("theater") int theater, 
						@Param("seats") String seats, @Param("pn") String pn);

	public BookInfoDTO getBookInfo(@Param("pn") String pn);
}
