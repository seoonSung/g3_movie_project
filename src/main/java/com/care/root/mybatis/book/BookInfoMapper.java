package com.care.root.mybatis.book;

import java.util.List;


import org.apache.ibatis.annotations.Param;



public interface BookInfoMapper {
	public void payment(@Param("days") String days, @Param("title") String title,
						@Param("times") String times, @Param("theater") int theater, 
						@Param("seats") String seats, @Param("pn") String pn);
	public List<String> seatconfirm(@Param("title")String title,@Param("i")int i,@Param("time")String time);
}
