package com.care.root.qnaBoard.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.care.root.qnaBoard.dto.QnaBoardDTO;
import com.care.root.qnaBoard.service.QnaBoardService;

@Controller
@RequestMapping("service")
public class QnaBoardController {
	@Autowired QnaBoardService qbs;
	
	@GetMapping("mainService")
	public String mainService() {
		return "/service/mainService";
	}
	
	@GetMapping("qnaBoard")
	public String qnaBoard(Model model) {
		qbs.allList(model);
		return "/service/qnaBoard";//qnaBoard로 model로 보냄
	}
	
	@GetMapping("writeForm")
	public String writeForm() {
		return "/service/writeForm";
	}
	
	/*@PostMapping("writeSave")
	public void writeSave(QnaBoardDTO dto,
						 HttpServletRequest request,
						 HttpServletResponse response) throws IOException {
		String message = qbs.writeSave(request);
		PrintWriter out = null;
		response.setContentType("text/html; charset-utf-8");
		out = response.getWriter();
		out.println(message);
	}*/
	
	@PostMapping("writeSave")
	public String writeSave(QnaBoardDTO dto) {
		int result = 0;
		try {
			qbs.writeSave(dto);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return "redirect: qnaBoard";//writeForm to save
	}
}
