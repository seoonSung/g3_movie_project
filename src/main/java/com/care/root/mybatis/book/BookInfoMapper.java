package com.care.root.mybatis.book;

import java.util.List;


import org.apache.ibatis.annotations.Param;

import com.care.root.book.dto.BookInfoDTO;



public interface BookInfoMapper {
	public void payment(@Param("days") String days, @Param("title") String title,
						@Param("times") String times, @Param("theater") int theater, 
						@Param("seats") String seats, @Param("pn") String pn);
	public List<BookInfoDTO> getBookInfo(String pn);
	public void cancel(@Param("title")String title,
					   @Param("days")int days,
					   @Param("times")String times,
					   @Param("theater")int theater,
					   @Param("seats")String seats);
	public List<String> seatconfirm(@Param("title") String title,
									@Param("days") String days,
									@Param("times") String times);
	public List<String> seatconfirm(@Param("title")String title,@Param("i")int i,@Param("time")String time);
}
