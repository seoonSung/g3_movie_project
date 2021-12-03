package com.care.root.member.service;

import org.springframework.ui.Model;

import com.care.root.member.dto.MemberDTO;

public interface MemberService {
	public int userCheck(String id, String pw);
	public void getMember(String id,Model model);
	public int register(MemberDTO dto);
}
