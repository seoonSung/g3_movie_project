package com.care.root.myInfo.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.root.common.session.SessionName;
import com.care.root.member.dto.MemberDTO;
import com.care.root.mybatis.member.MemberMapper;
import com.care.root.mybatis.qnaBoard.QnaBoardMapper;

@Service
public class accountServiceImpl implements accountService{
	@Autowired MemberMapper mapper;
	@Autowired QnaBoardMapper qnamapper;
	
	@Override
	public void modify(MemberDTO dto) throws Exception{
		// TODO Auto-generated method stub
		mapper.modify(dto);
	}

	@Override
	public void aboutInfo(String id) {
		// TODO Auto-generated method stub
		mapper.getMember(id);
	}
	
	@Override	
	public void informaion(HttpSession session,Model model) {
		model.addAttribute("List",mapper.getMember((String)session.getAttribute(SessionName.LOGIN)));
	}

	@Override
	public void delete(MemberDTO dto) {
		// TODO Auto-generated method stub
		mapper.delete(dto);
	}
}
