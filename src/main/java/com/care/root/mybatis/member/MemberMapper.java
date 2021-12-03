package com.care.root.mybatis.member;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.care.root.member.dto.MemberDTO;

public interface MemberMapper {
	public MemberDTO getMember(String id);
	public ArrayList<MemberDTO> memberInfo();
	public int register(MemberDTO dto);
}
