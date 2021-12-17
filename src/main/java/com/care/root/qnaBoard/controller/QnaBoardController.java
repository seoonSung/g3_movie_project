package com.care.root.qnaBoard.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
		qbs.writeSave(dto);
		return "redirect: qnaBoard";//writeForm to save
	}
	
	@GetMapping("qnaContentView")
	public String qnaContentView(@RequestParam int num, Model model) {
		qbs.qnaContentView(num, model);
		return "/service/qnaContentView";
	}
	
	@GetMapping("modifyForm")/*수정 페이지로 이동 */
	public String modify(@RequestParam int num, Model model) {
		qbs.getData(num, model);
		return "service/modifyForm";
	}
	
	@PostMapping("modify")/* 수정 완료후 */
	public String modify(QnaBoardDTO dto, RedirectAttributes ra) {
		qbs.modify(dto);
		ra.addFlashAttribute("result", "modify success");
		return "redirect:/service/qnaContentView";
	}
	
	@GetMapping("delete")
	public String delete(@RequestParam int num, RedirectAttributes ra) {
		qbs.delete(num);
		ra.addFlashAttribute("result", "success");
		return "redirect:/service/qnaContentView";
	}
}
