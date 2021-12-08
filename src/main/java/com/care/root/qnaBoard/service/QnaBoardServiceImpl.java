package com.care.root.qnaBoard.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.root.mybatis.qnaBoard.QnaBoardMapper;
import com.care.root.qnaBoard.dto.QnaBoardDTO;

@Service
public class QnaBoardServiceImpl implements QnaBoardService{
	@Autowired QnaBoardMapper mapper;

	@Override
	public void allList(Model model) {
		// TODO Auto-generated method stub
		model.addAttribute("qnaList", mapper.qnaBoard());
	}

	@Override
	public String writeSave(HttpServletRequest request) {
		// TODO Auto-generated method stub
		QnaBoardDTO dto = new QnaBoardDTO();
		int result = 0;
	      String msg;
	      try {
	    	  result = mapper.writeSave(dto);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	      if(result == 1) {
	         msg = "새글이 추가되었습니다.";
	         return "/service/qnaBoard";
	      }else {
	         msg = "문제가 발생되었습니다.";
	         return "/service/writeForm";
	      }
	}

	
}
