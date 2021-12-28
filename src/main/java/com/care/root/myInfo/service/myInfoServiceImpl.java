package com.care.root.myInfo.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.root.common.session.SessionName;
import com.care.root.mybatis.member.MemberMapper;
import com.care.root.mybatis.oneOnOneBoard.OneOnOneBoardMapper;

@Service
public class myInfoServiceImpl implements myInfoService{
	@Autowired OneOnOneBoardMapper mapper;
	@Autowired MemberMapper mmapper;
	
	@Override
	public void allList(HttpSession session, Model model) {
		// TODO Auto-generated method stub
		model.addAttribute("List", mmapper.getMember((String)session.getAttribute(SessionName.LOGIN)));
	}

}
