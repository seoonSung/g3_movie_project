package com.care.root.mybatis.book;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.care.root.book.dto.BookInfoDTO;

public interface BookInfoMapper {
	public void payment(@Param("code") String code,@Param("seat") String seat);
	public List<BookInfoDTO> seat(String code);
}
