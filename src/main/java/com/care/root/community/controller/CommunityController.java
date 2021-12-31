package com.care.root.community.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
			@RequestParam(required = false, defaultValue = "") String searchOption,
			@RequestParam(required = false, defaultValue = "") String keyword,
			@RequestParam(required = false, defaultValue = "1") int pageNum) throws Exception { //메인페이지 리스트 보여주기
		
		model.addAttribute("boardList", cs.communityMain(model, searchOption, keyword, pageNum));
		model.addAttribute("currentPage",pageNum);
		return "Community/communityMainPage";
	}
	
	
	@GetMapping("/communityWrite") //글 작성 페이지 이동
	public String communityWrite() {
		
		return "Community/communityWrite";
	}
	@PostMapping("writeSave") 
	public String writeSave(@ModelAttribute("CommunityDTO") CommunityDTO dto,
			RedirectAttributes ra )throws Exception  { // 글 작성후 저장 메소드
		cs.writeSave(dto);
		return "redirect:communityMain";
	}
	
	
	@GetMapping("communityPost")
	public String communityPost(@RequestParam int num,
			@RequestParam(required = false, defaultValue = "") String searchOption,
			@RequestParam(required = false, defaultValue = "") String keyword,
			@RequestParam(required = false, defaultValue = "") int pageNum,Model model)throws Exception {
	
		model.addAttribute("searchOption",searchOption);
		model.addAttribute("keyword",keyword);
		model.addAttribute("pageNum",pageNum);
		model.addAttribute("communityPost",cs.communityPost(num));
		model.addAttribute("CommunityReplyDTO",new CommunityReplyDTO());
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

	
	

}