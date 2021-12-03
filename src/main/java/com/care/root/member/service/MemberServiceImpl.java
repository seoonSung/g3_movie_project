package com.care.root.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.root.member.dto.MemberDTO;
import com.care.root.mybatis.member.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired MemberMapper mapper;
	
	BCryptPasswordEncoder encoder;
	public MemberServiceImpl() {
		encoder = new BCryptPasswordEncoder();
	}
	public int userCheck(String id, String pw) {
		MemberDTO dto = mapper.getMember(id);
		if(dto != null) {
			if(pw.equals(dto.getPw())) {
				return 0;
			}
		}
		return 1;
	}
	public void getMember(String id, Model model) {
		model.addAttribute("info", mapper.getMember(id) );
	}
	public int register(MemberDTO dto) {
		int result = 0;
		try {
			result = mapper.register(dto);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
