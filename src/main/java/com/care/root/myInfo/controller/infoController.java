package com.care.root.myInfo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.care.root.mybatis.member.MemberMapper;
import com.care.root.oneOnOneBoard.service.OneOnOneBoardService;

@Controller
@RequestMapping("myInfo")
public class infoController {
	@Autowired OneOnOneBoardService ooobs;
	@Autowired MemberMapper mmapper;
	
	@GetMapping("myInfoMain")
	public String infoMain() {
		return "myInfo/infoMain";
	}
	
	@GetMapping("memberInfo")
	public String memberInfo(HttpSession session, Model model) {
		ooobs.allList(session, model);
		return "myInfo/memberInfo";
	}
}
