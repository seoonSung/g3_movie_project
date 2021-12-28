package com.care.root.mybatis.book;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.care.root.book.dto.BookInfoDTO;
import com.care.root.book.dto.MovieInfoDTO;

public interface BookMapper {
		public List<MovieInfoDTO> movieDay(String title);
<<<<<<< HEAD
		public void payment(@Param("i")String i,@Param("seat")String seat,@Param("title")String title,@Param("time")String time,@Param("theater")String theater,@Param("payMoney")String payMoney);
		
}
=======
		public void payment(@Param("code") String code,@Param("seat") String seat);
		public List<MovieInfoDTO> movieList();	
		public List<BookInfoDTO> getBookInfo(BookInfoDTO dto);
		}
>>>>>>> 9892a626718e0c6c491c8fd224a5975e325ec51e
