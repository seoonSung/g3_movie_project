package com.care.root.community.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.care.root.community.dto.CommunityDTO;
import com.care.root.community.dto.CommunityReplyDTO;
import com.care.root.community.service.CommunityService;

@Controller
@RequestMapping("main")
public class CommunityController {
	@Autowired CommunityService cs;
	@GetMapping("/communityMain")
	public String communityMain(Model model,
			@RequestParam(required = false, defaultValue = "1") int pageNum ) {
		
		cs.communityMain(model, pageNum);
		
		return "Community/communityMainPage";
	}
	
	
	@GetMapping("/communityWrite") //글 작성 페이지
	public String communityWrite() {
		
		return "Community/communityWrite";
	}
	@PostMapping("writeSave")
	public String writeForm(CommunityDTO dto)  {
		int result = cs.writeSave(dto);
		return "redirect:communityMain";
	}
	
	
	@GetMapping("communityPost")
	public String communityPost(@RequestParam int num, Model model) {
		
		cs.communityPost(num,model);
		
		return "Community/communityPost";
	}
	@GetMapping("delete")
	public String communityDelete(@RequestParam int num) {
		cs.communityDelete(num);
		
		return "redirect:communityMain";
	}
	@GetMapping("communityModifyForm")
	public String communityModifyForm(@RequestParam int num, Model model) {
		cs.data(num,model);
		return "Community/communityModifyForm";
	}
	@PostMapping("modify")
	public String modify(CommunityDTO dto, RedirectAttributes rt ) {
		cs.modify(dto);
		rt.addFlashAttribute("result","modify success");
		return "redirect:communityMain";
	}
	@GetMapping("communityReply")
	public String communityReply(@RequestParam int num, Model model) {
		cs.communityReply(num,model);
		return "Community/communityReply";
	}
	
	@PostMapping("replySave")
	public String replySave(CommunityDTO dto) {
		int result = cs.replySave(dto);
		return "redirect:communityMain";
	}

}