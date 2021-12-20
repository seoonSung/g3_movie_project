package com.care.root.qnaBoard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.care.root.mybatis.qnaBoard.QnaBoardMapper;
import com.care.root.qnaBoard.dto.QnaBoardDTO;
import com.care.root.qnaBoard.dto.QnaBoardRepDTO;

@Service
public class QnaBoardServiceImpl implements QnaBoardService{
	@Autowired QnaBoardMapper mapper;

	@Override
	public void allList(Model model) {
		// TODO Auto-generated method stub
		model.addAttribute("qnaList", mapper.qnaBoard());
	}

	@Override
	public void writeSave(QnaBoardDTO dto) {
		// TODO Auto-generated method stub
		try {
			mapper.writeSave(dto);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	@Override
	public void qnaContentView(int num, Model model) {
		// TODO Auto-generated method stub
		 model.addAttribute("personalData",mapper.qnaContentView(num));
	     upHit(num); 
	}

	private void upHit(int num) {
		// TODO Auto-generated method stub
		mapper.upHit(num);
	}

	@Override
	public int modify(QnaBoardDTO dto) {
		// TODO Auto-generated method stub
		return mapper.modify(dto);
	}

	@Override
	public void getData(int num, Model model) {
		// TODO Auto-generated method stub
	      model.addAttribute("personalData",mapper.qnaContentView(num));
	}

	@Override
	public void addReply(@ModelAttribute("QnaBoardDTO") QnaBoardRepDTO dto) {
		// TODO Auto-generated method stub
		mapper.addReply(dto);
	}

	@Override
	public List<QnaBoardRepDTO> getRepList(int write_group) {
		// TODO Auto-generated method stub
		return mapper.getRepList(write_group);
	}
	

	@Override
	public int selectBoardCount() {
		// TODO Auto-generated method stub
		return mapper.selectBoardCount();
	}

	@Override
	public int delete(int num) {
		// TODO Auto-generated method stub
		return mapper.delete(num);
	}

	/*@Override
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
	         return "redirect:/writeForm";
	      }
	}*/

	
}
