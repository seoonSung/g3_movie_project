package com.care.root.oneOnOneBoard.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.care.root.myInfo.service.accountService;
import com.care.root.oneOnOneBoard.service.emailService;
import com.care.root.oneOnOneBoardDTO.OneOnOneBoardDTO;

@Controller
@RequestMapping("service")
public class OneOnOneBoardController {
	@Autowired accountService as;
	
	@GetMapping("oneOnOneQnaForm")
	public String oneOnOneQnaForm(HttpSession session, Model model) throws Exception {
		as.informaion(session,model);
		return "service/oneOnOneQnaForm";
	}
	
	/*@PostMapping("save")
	public void save(HttpServletResponse response,
					 HttpServletRequest request) throws IOException {
	   String message = ooobs.saved(request);
	   PrintWriter out=null;
	   response.setContentType("text/html; charset=utf-8");
	   out = response.getWriter();
	   out.println(message);
	}*/
	 @Autowired
	 emailService es; // 서비스를 호출하기위한 의존성 주입
	 
	 @PostMapping("send") // 확인 (메일발송) 버튼을 누르면 맵핑되는 메소드
	 public String send(@ModelAttribute OneOnOneBoardDTO dto, Model model) {
	     try {
	    	 es.sendMail(dto); // dto (메일관련 정보)를 sendMail에 저장함
	         model.addAttribute("message", "이메일이 발송되었습니다."); // 이메일이 발송되었다는 메시지를 출력시킨다.
	     } catch (Exception e) {
	         e.printStackTrace();
	         model.addAttribute("message", "이메일 발송 실패..."); // 이메일 발송이 실패되었다는 메시지를 출력
	     }
	     return "/service/oneOnOneQnaForm"; // 다시 write jsp 페이지로 이동함
	 }
}
