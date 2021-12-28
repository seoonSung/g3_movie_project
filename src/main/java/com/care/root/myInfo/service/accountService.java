package com.care.root.myInfo.service;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.care.root.member.dto.MemberDTO;

public interface accountService {
	public void modify(MemberDTO dto) throws Exception;

	public void aboutInfo(String id);
	
	public void informaion(HttpSession session,Model model) throws Exception;
	
	public void delete(MemberDTO dto);
}
