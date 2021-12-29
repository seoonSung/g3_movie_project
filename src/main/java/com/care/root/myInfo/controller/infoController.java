package com.care.root.myInfo.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.root.book.service.BookService;
import com.care.root.common.session.SessionName;
import com.care.root.member.dto.MemberDTO;
import com.care.root.myInfo.service.accountService;
import com.care.root.qnaBoard.service.QnaBoardService;

@Controller
@RequestMapping("myInfo")
public class infoController implements SessionName{
	@Autowired accountService as;
	@Autowired QnaBoardService qbs;
	@Autowired BookService bs;
	
	@GetMapping("myInfoMain")
	public String infoMain() {
		return "myInfo/myInfoMain";
	}
	
	@GetMapping("memberInfo")
	public String memberInfo(HttpSession session, Model model) throws Exception{
		as.informaion(session, model);
		return "myInfo/memberInfo";
	}
	
	@GetMapping("information")
	public String information() throws Exception{
		return "myInfo/information";
	}
	
	@PostMapping("modify")
	public void modify(MemberDTO dto,@RequestParam("pw") String pw, 
			   HttpServletResponse response) throws Exception {
		PrintWriter out = null;
		response.setContentType("text/html; charset-utf-8");
		out = response.getWriter();
		as.modify(dto);
		out.println("<script>alert('정보가 변경되었습니다.'); location.href='myInfoMain';</script>");
	}
	
	@GetMapping("deleteMember")
	public String deleteMember() {
		return "myInfo/deleteMember";
	}
	
	@GetMapping("delete")
	public void delete(MemberDTO dto,@RequestParam("pw") String pw, 
					   HttpServletResponse response, HttpSession session) throws Exception{
		PrintWriter out = null;
		response.setContentType("text/html; charset-utf-8");
		out = response.getWriter();
		
		if(dto.getPw() == pw) {
			as.delete(dto);
			out.println("<script>alert('계정이 삭제되었습니다.'); location.href='../main';</script>");
			session.invalidate();
		}else 
			out.println("<script>alert('비밀번호를 확인해 주세요.');</script>");
	}
	
	@GetMapping("aboutInfo")
	public String aboutInfo(HttpSession session, Model model) throws Exception {
		as.informaion(session, model);
		return "myInfo/aboutInfo";
	}
	
	@GetMapping("myQna")
	public String myQna(Model model,
						@RequestParam(required = false, defaultValue = "1") int num) {
		qbs.boardList(model,num);
		return "myInfo/myQna";
	}
	
	@GetMapping("bookInfo")
	public String bookInfo(Model model,@RequestParam(value="pn", required=false) String pn, HttpServletResponse response) throws Exception {
		bs.getBookList(model, pn, response);
		return "myInfo/bookInfo";
	}
}
