package com.care.root.qnaBoard.controller;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.care.root.common.session.SessionName;
import com.care.root.qnaBoard.dto.QnaBoardDTO;
import com.care.root.qnaBoard.dto.QnaBoardRepDTO;
import com.care.root.qnaBoard.service.QnaBoardService;



@Controller
@RequestMapping("qnaboard/")
public class QnaBoardController implements SessionName{
	@Autowired QnaBoardService qbs;
	
	@GetMapping("main")
	public String main() {
		return "customerCenter/customerMain";
	}
	
	@GetMapping("boardList")
	public String boardList(Model model,
	@RequestParam(required = false, defaultValue = "1") int num) {
		qbs.boardList(model,num);
		return "customerCenter/qnaBoardList";
	}
	
	@GetMapping("boardWrite")
	public String boardWrite() {
		return "customerCenter/qnaBoardWrite";
	}
	
	
	@GetMapping("contentView")
	public String contentView(@RequestParam int num,Model model) {
		qbs.contentView(num,model);
		return "customerCenter/qnaContentView";
	}
	
	@PostMapping("modify")
	public String modify(@RequestParam int num,Model model) {
		qbs.contentView(num,model);
		return "customerCenter/qnaModify";
	}
	
	@PostMapping("modifysave")
	public void modifysave(QnaBoardDTO dto,HttpServletResponse response) throws Exception {
		int result = qbs.modifysave(dto);
		PrintWriter out = null;
		response.setContentType("text/html; charset=utf-8");
		out = response.getWriter();
		
		if(result == 1) {
			out.println("<script>alert('저장이 완료되었습니다!');location.href='contentView';</script>");
		}else {
			out.println("<script>alert('문제발생');location.href='contentView';</script>");
		}
		
		
	}
}
